<%@ page import="java.sql.*" %>
<%
String id = (String)session.getAttribute("id");
String name= (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(id==null || name==null || email==null || pwd==null)
{
    response.sendRedirect("led_session.html");
}
%>
<%

String opwd = request.getParameter("opwd");
String npwd = request.getParameter("npwd");

try
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
	 System.out.println("Connection Established");
	  
	  PreparedStatement pstmt = con.prepareStatement("select * from leader where name=? and pwd=?");
	  pstmt.setString(1,name);
	  pstmt.setString(2,opwd);
	  ResultSet rs = pstmt.executeQuery();
	  if(rs.next())
	  {
		  PreparedStatement pstmt1 = con.prepareStatement("update leader set pwd=? where name=?");
		  pstmt1.setString(1,npwd);
		  pstmt1.setString(2,name);
		  int i = pstmt1.executeUpdate();
		  if(i>0)
		  {
			  %>
				<h3>Password Updated Successfully</h3><br>
		<a href="leaderlogin.html">Login Again</a>
				<% 
		  }
		  else
		  {
			  %>
			<h3>Password has not been updated</h3><br>
	<a href="changepassword_led.jsp">Try Again</a>
				<%   
		  }
	  }
	  else
	  {
		  %>
			<h3>Current Password is incorrect</h3><br>
	<a href="changepassword_led.jsp">Try Again</a>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}



%>