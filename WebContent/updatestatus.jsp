<%@ page import="java.sql.*" %>

<%
String rb=request.getParameter("rb");
String id=request.getParameter("id");


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
	 System.out.println("Connection Established");

		 PreparedStatement pstmt = con.prepareStatement("update permission set managerstatus=? where id=? ");
		 
		 pstmt.setString(1,rb);
		
		 pstmt.setString(2,id);
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
			<h3> Successful</h3><br>
	<a href="employeelogin.html">Go to Login</a>
			<% 
		 }
		 else
		 {
				%>
				<h3> UnSuccessful</h3><br>
		<a href="empreg.html">Try to Register Again</a>
				<% 
		 
		
	 }
	 
	 
	 
	 
}
catch(Exception e)
{
	out.println(e);
}

%>