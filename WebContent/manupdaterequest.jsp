<%@ page import="java.sql.*" %>
<%
String managerstatus= (String)session.getAttribute("managerstatus");
String name= (String)session.getAttribute("name");

String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if( name==null || email==null || pwd==null)
{
    response.sendRedirect("man_session.html");
}
%>
<%
String id = request.getParameter("id");
%>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
System.out.println("Connection Established");

 PreparedStatement pstmt = con.prepareStatement(" update employee set manstatus where id=?");
 pstmt.setString(1,managerstatus);
 pstmt.setString(2,id);
 int i = pstmt.executeUpdate();



		
		  if(i>0)
		  {
			  %>
				<h3>Status Updated Successfully</h3><br>
		 response.sendRedirect("viewpermissions1.jsp");
				<% 
		  }
		  else
		  {
			  %>
			<h3>Status has not been updated</h3><br>
	<a href="manupdaterequest1.jsp">Try Again</a>
				<%   
		  }
	  
	 
}
catch(Exception e)
{
	out.println(e);
}



%>