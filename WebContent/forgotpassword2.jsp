<%@ page import="java.sql.*" %>

<%
String pwd = request.getParameter("pwd");
String npwd = request.getParameter("npwd");
String email= request.getParameter("email");
String dob= request.getParameter("dob");

try
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
	 System.out.println("Connection Established");
	  
	  PreparedStatement pstmt = con.prepareStatement("select * from manager where email=? and dob=?");
	  pstmt.setString(1,email);
	  pstmt.setString(2,dob);
	  ResultSet rs = pstmt.executeQuery();
	  if(rs.next())
	  {
		  PreparedStatement pstmt1 = con.prepareStatement("update manager set pwd=? where email=?");
		  pstmt1.setString(1,npwd);
		  pstmt1.setString(2,email);
		  int i = pstmt1.executeUpdate();
		  if(i>0)
		  {
			  %>
				<h3>Password Updated Successfully</h3><br>
		<a href="managerlogin.html">Login Again</a>
				<% 
		  }
		  else
		  {
			  %>
			<h3>404 ERROR </h3><br>
	<a href="manforgotpassword.htm">Try Again</a>
				<%   
		  }
	  }
	  else
	  {
		  %>
			<h3>Email or Date of Birth  is incorrect</h3><br>
	<a href="manforgotpassword.html">Try Again</a>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}



%>