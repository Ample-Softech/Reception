<%@page import="org.springframework.cglib.transform.impl.AddDelegateTransformer"%>
<%@page import="com.sun.xml.internal.ws.developer.MemberSubmissionEndpointReference.Address"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="java.io.*"%>
<%@ page import="com.model.*" %>
<%@ page import="com.lowagie.text.pdf.*" %>
<%@ page import="org.springframework.web.servlet.view.document.AbstractPdfView" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>accountPdfView</title>
</head>
<body>
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
	Invoice in = (Invoice) session.getAttribute("invoice");

	Document document = new Document(PageSize.A4.rotate(), 10, 10, 10, 10);
	response.setContentType("application/pdf");
	PdfWriter.getInstance(document, response.getOutputStream());
	document.open();
	PdfPTable headerTable = new PdfPTable(1);
	headerTable.setWidthPercentage(100);
	headerTable.getDefaultCell().setBorderWidth(3);
	
	Font f1 = new Font(Font.HELVETICA, 17,Font.UNDEFINED, java.awt.Color.black);
	Font f2 = new Font(Font.HELVETICA, 13,Font.UNDEFINED, java.awt.Color.black);
	Font f3 = new Font(Font.HELVETICA, 22,Font.UNDEFINED, java.awt.Color.red);
	
	addCell(headerTable, "Invoice", Element.ALIGN_MIDDLE, Element.ALIGN_CENTER,0,f3);
	addCell(headerTable, "Ample Softech System Pvt.Ltd", Element.ALIGN_LEFT, Element.ALIGN_LEFT,0,f1);
	addCell(headerTable, "Shantiban comercial complex", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	addCell(headerTable, "Kothrud, pune, 411038", Element.ALIGN_LEFT, Element.ALIGN_LEFT,150,f2);
	addCell(headerTable, "- - - - - - - - - - - - - - - - - -", Element.ALIGN_MIDDLE, Element.ALIGN_CENTER,0,f1);
	
	
	
	document.add(headerTable);
	
	System.out.println(in);
	
	Table t = new Table(2);
	t.addCell("QuotationId");
	t.addCell(in.getQuotationId()+"");
	
	t.addCell("ClientId");
	t.addCell(in.getClientId() + "");
	
	t.addCell("ClientName");
	t.addCell(in.getClientName());
	
	t.addCell("ClientContact");
	t.addCell(in.getClientContact());
	
	t.addCell("ClientEmailId");
	t.addCell(in.getClientEmailId());
	
	t.addCell("QuotationDate");
	t.addCell(in.getQuotationDate());
	
	t.addCell("QuotationDueDate");
	t.addCell(in.getQuotationDueDate());
	
	t.addCell("ProjectDescription");
	t.addCell(in.getProjectDescription());
	
	t.addCell("Amount");
	t.addCell(in.getAmount()+"");
	
	t.addCell("Discount");
	t.addCell(in.getDiscount()+"");
	
	t.addCell("GST");
	t.addCell(in.getGST()+"");
	
	t.addCell("FinalAmount");
	t.addCell(in.getFinalAmount()+"");
	
	document.add(t);
	document.close();

} catch(Exception e) {
	System.err.println(e.getMessage());
	e.printStackTrace();
}

out.clear(); // where out is a JspWriter
out = pageContext.pushBody();

%>

</body>
</html>