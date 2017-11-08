<%@page import="java.io.*"%>
<%@ page import="com.model.*" %>
<%@page import="java.awt.Color"%>
<%@page import="com.lowagie.text.*"%>
<%@ page import="com.lowagie.text.pdf.*" %>

<%!
	private void addCell(PdfPTable table, String str, int verAlig, int holAlig, int colSpan, Font font)
	{
		if (str == null) str = "";
		PdfPCell cell = new PdfPCell(new Phrase(str, font));
		cell.setVerticalAlignment(verAlig);
		cell.setHorizontalAlignment(holAlig);
		cell.setColspan(colSpan);
		cell.setBorderWidth(0);//Border arround the heading
		table.addCell(cell);
	}
%>

<%
try
{
	Invoice in = (Invoice) session.getAttribute("invoice");
	System.out.println(in);
	
	String filename = "Invoice_"+in.getClientName()+"_"+in.getFinalAmount();

	response.setContentType("application/pdf");
	response.setHeader("Content-Disposition", "attachment; filename=\""+filename+".pdf\"");

	Document document = new Document();
	PdfWriter.getInstance(document, response.getOutputStream());
	document.open();	
	
	Rectangle rect= new Rectangle(577,825,18,15); // you can resize rectangle 
    rect.setBorder(Rectangle.BOX);
    rect.setBorderWidth(1);
    document.add(rect);

    Image image = Image.getInstance("C:\\Users\\sagar\\git\\Reception\\Reception\\WebContent\\images\\AmpleLogo.png");
	image.scaleAbsolute(180, 60);
	document.add(image);

	PdfPTable headerTable = new PdfPTable(1);
	headerTable.setWidthPercentage(100);
	headerTable.getDefaultCell().setBorderWidth(1);
	Font f1 = new Font(Font.TIMES_ROMAN, 17,Font.BOLD, java.awt.Color.black);
	Font f2 = new Font(Font.TIMES_ROMAN, 13,Font.ITALIC, java.awt.Color.black);
	Font f3 = new Font(Font.TIMES_ROMAN, 17,Font.BOLDITALIC, java.awt.Color.red);
	f3.setStyle(Font.UNDERLINE);
	addCell(headerTable, "Invoice\n", Element.ALIGN_MIDDLE, Element.ALIGN_CENTER,0,f3);
	addCell(headerTable, "\nAmple Softech System Pvt.Ltd", Element.ALIGN_LEFT, Element.ALIGN_LEFT,0,f1);
	addCell(headerTable, "Shantiban Comercial Complex,", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	addCell(headerTable, "Kothrud, Pune(411038).", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	document.add(headerTable);

	Phrase phrase = new Phrase();
	Chunk chunk;
	
	Paragraph p = new Paragraph();
	p.setAlignment(Element.ALIGN_RIGHT);
	String cn = "\nClient Name:-  " + in.getClientName();
	cn = cn.replaceAll("\\s", "");
	chunk = new Chunk("To:-");
	chunk.setFont(new Font(Font.TIMES_ROMAN, 14, Font.BOLD, java.awt.Color.black));
	for(int i=0; i<(cn.length()-2); i++) {
		chunk.append("  ");
	}
	phrase = new Phrase(chunk);
	p.add(phrase);
	chunk = new Chunk("\nClient Name:- ");
	chunk.setFont(new Font(Font.TIMES_ROMAN, 12, Font.BOLDITALIC, java.awt.Color.black));
	phrase = new Phrase(chunk); 
	p.add(chunk);
	chunk = new Chunk(in.getClientName());
	chunk.setFont(new Font(Font.COURIER, 12, Font.UNDEFINED, java.awt.Color.black));
	phrase = new Phrase(chunk); 
	p.add(chunk);
	document.add(p);
	
	
	Font f4 = new Font(Font.TIMES_ROMAN, 11, Font.BOLD, java.awt.Color.black);
	Font f5 = new Font(Font.COURIER, 12,Font.NORMAL, java.awt.Color.black);
	Table t;	
    t = new Table(2);
	t.setPadding(3);

	chunk = new Chunk("Quotation Id", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getQuotationId()+"", f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	chunk = new Chunk("Client Id", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getClientId()+"", f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	chunk = new Chunk("Client Email-Id", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getClientEmailId(), f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	
	chunk = new Chunk("Client Contact", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getClientContact(), f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	
	chunk = new Chunk("Project Description", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getProjectDescription(), f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	
	chunk = new Chunk("Quotation Date", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getQuotationDate(), f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	chunk = new Chunk("Quotation Due-Date", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getQuotationDueDate(), f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	chunk = new Chunk("Amount", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getAmount()+"", f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	chunk = new Chunk("Discount", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getDiscount()+"", f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	chunk = new Chunk("GST", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getGST()+"", f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	chunk = new Chunk("Final Amount", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getFinalAmount()+"", f5);
	phrase = new Phrase(chunk);
	t.addCell(phrase);

	document.add(t);
	document.close();
 
} catch(Exception e) {
	System.err.println(e.getMessage());
	e.printStackTrace();
}

out.clear(); // where out is a JspWriter
out = pageContext.pushBody();


%>
