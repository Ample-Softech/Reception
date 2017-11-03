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
	
	Font f1 = new Font(Font.HELVETICA, 17,Font.UNDEFINED, java.awt.Color.black);
	Font f2 = new Font(Font.HELVETICA, 13,Font.UNDEFINED, java.awt.Color.black);
	Font f3 = new Font(Font.HELVETICA, 22,Font.UNDEFINED, java.awt.Color.red);
 	addCell(headerTable, "Quotation", Element.ALIGN_MIDDLE, Element.ALIGN_CENTER,0,f3);
	
 	Image image = Image.getInstance("C:\\Users\\sagar\\git\\Reception\\Reception\\WebContent\\images\\AmpleLogo.png");
	image.scaleAbsolute(200, 58);
	document.add(image);
	addCell(headerTable, "", Element.ALIGN_LEFT, Element.ALIGN_LEFT,0,f1);
	addCell(headerTable, "Ample Softech System Pvt.Ltd", Element.ALIGN_LEFT, Element.ALIGN_LEFT,0,f1);
	addCell(headerTable, "Shantiban comercial complex", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	addCell(headerTable, "Kothrud, pune, 411038", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	document.add(headerTable);
	
	Paragraph p = new Paragraph();
	 p.setAlignment(Element.ALIGN_RIGHT);
	 p.add("To:-		            	                        ");
	 p.add("\nClient Name:-  "+in.getClientName()      );
	 document.add(p);
	System.out.println(in);
	
	Table t;
    t = new Table(2);
    t.setBorderWidth(1);
	//t.setBorderColor(new Color(15, 90, 160));
	t.setPadding(2);
	t.setSpacing(4);
	t.addCell("EnquiryID");
	t.addCell(in.getEnquiryId()+"");
	t.addCell("ClientId");
	t.addCell(in.getClientId() + "");  
	t.addCell("ClientEmailId");
	t.addCell(in.getClientEmailId());
	t.addCell("clientContact");
	t.addCell(in.getClientContact());
	t.addCell("ProjectDescription");
	t.addCell(in.getProjectDescription());
	t.addCell("QuotationDate");
	t.addCell(in.getQuotationDate());
	t.addCell("QuotationDueDate");
	t.addCell(in.getQuotationDueDate());
	t.addCell("Amount");
	t.addCell(in.getAmount()+"");
	
	document.add(t);
	document.close();

 
} catch(Exception e) {
	System.err.println(e.getMessage());
	e.printStackTrace();
}

out.clear(); // where out is a JspWriter
out = pageContext.pushBody();

%>
