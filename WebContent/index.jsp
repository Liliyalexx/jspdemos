<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1> Hello from HTML </h1>
  <%= "<h1> Hello from JSP </h1>" %>
  <%
  int x=10;
   %>
   
   <input type="text" value= "<%= x %>"> <br/>
   <%
   for(int i=0; i<5; i++){
	   out.println("i = " + i + "<br/>");
   }
   %>
    The current date is <%= new Date() %> <br/>
    
    <%--JSP Implicit Objects
    out =JspWriter
    application -ServletContext
    config - ServletCofig
    page - Object
    pageCentetxt -PageContext
    Exception - Throwable
    request - HttpServletRequest
    response - HttpServletResponse
    
     --%>
     <br/>
     <form action="">
     Enter Name:<input type="text" name="fname">
     <input type="submit" name="click" value="Clickme">
     
     </form>
     
     
     <%
     if (request.getParameter("click") !=null){
    	 out.print("Hello " + request.getParameter("fname"));
     }
     %>
     
   
   <%@include file="footer.html" %>
  
   
</body>
</html>