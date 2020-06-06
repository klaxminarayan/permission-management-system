<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("id");
%>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
System.out.println("Connection Established");
 
 PreparedStatement pstmt = con.prepareStatement("update permission set managerstatus ='ACCEPTED',finalstatus='ACCEPTED' WHERE id=?");
 pstmt.setString(1,id);
 int n = pstmt.executeUpdate();
 response.sendRedirect("viewpermissions1.jsp");
 
}
catch(Exception e)
{
System.out.println(e);
}

%>