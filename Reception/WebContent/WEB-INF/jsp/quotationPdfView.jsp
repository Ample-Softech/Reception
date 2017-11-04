<%@page import="java.io.*"%>
<%@ page import="com.model.*" %>
<%@page import="java.awt.Color"%>
<%@page import="com.lowagie.text.*"%>
<%@ page import="com.lowagie.text.pdf.*" %>
<%!

	private void addCell(PdfPTable table, String str,int verAlig, int holAlig,int colSpan,Font font)
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
	Document document = new Document();

	response.setContentType("application/pdf");
	PdfWriter.getInstance(document, response.getOutputStream());

//	PdfWriter.getInstance(document, new FileOutputStream(new File("F:\\hello.pdf")));

	document.open();
	Quotation in = (Quotation) session.getAttribute("qoutation");

	PdfPTable headerTable = new PdfPTable(1);
	headerTable.setWidthPercentage(100);
	headerTable.getDefaultCell().setBorderWidth(3);
	
	Font f1 = new Font(Font.TIMES_ROMAN, 17,Font.BOLD, java.awt.Color.black);
	Font f2 = new Font(Font.TIMES_ROMAN, 13,Font.ITALIC, java.awt.Color.black);
	Font f3 = new Font(Font.TIMES_ROMAN, 17,Font.BOLDITALIC, java.awt.Color.red);
 	addCell(headerTable, "Quotation", Element.ALIGN_MIDDLE, Element.ALIGN_CENTER,0,f3);
	
 	Image image = Image.getInstance("C:\\Users\\sagar\\git\\Reception\\Reception\\WebContent\\images\\AmpleLogo.png");
	image.scaleAbsolute(180, 60);
	document.add(image);
	
	addCell(headerTable, "", Element.ALIGN_LEFT, Element.ALIGN_LEFT,0,f3);
	addCell(headerTable, "Ample Softech System Pvt.Ltd", Element.ALIGN_LEFT, Element.ALIGN_LEFT,0,f1);
	addCell(headerTable, "Shantiban Comercial Complex,", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	addCell(headerTable, "Kothrud, Pune(411038).", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	
//	addCell(headerTable, "To:-\n"+in.getClientName(), Element.ALIGN_RIGHT, Element.ALIGN_RIGHT,2,f2);
//	addCell(headerTable, , Element.ALIGN_RIGHT, Element.ALIGN_RIGHT,100,f2);

	document.add(headerTable);
	
	Paragraph p = new Paragraph();
	 p.setAlignment(Element.ALIGN_RIGHT);
	 p.add("To:-		            	                        ");
	 p.add("\nClient Name:-  " + in.getClientName());
	 document.add(p);
	System.out.println(in);
	
	Phrase phrase = new Phrase();
	Chunk chunk;
	Font f4 = new Font(Font.TIMES_ROMAN, 11, Font.BOLD, java.awt.Color.black);
	Font f5 = new Font(Font.COURIER, 12,Font.NORMAL, java.awt.Color.black);

	Table t;	
    t = new Table(2);
	t.setPadding(3);

	chunk = new Chunk("Enquiry ID", f4);
	phrase = new Phrase(chunk);
	t.addCell(phrase);
	chunk = new Chunk(in.getEnquiryId()+"", f5);
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
		
	document.add(t);
	document.close();

 
} catch(Exception e) {
	System.err.println(e.getMessage());
	e.printStackTrace();
}

out.clear(); // where out is a JspWriter
out = pageContext.pushBody();

%>
