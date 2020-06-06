<%@ page import="java.sql.*" %>

<%
String raise = request.getParameter("raise");




try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ep", "ep");  
	 System.out.println("Connection Established");

	 
		 PreparedStatement pstmt = con.prepareStatement("insert into permission values(?)");
		 
		 pstmt.setString(1,raise);
		
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
			<h3>Permission has send succesfull</h3><br>
	<a href="employeehome.jsp">Go to home</a>
			<% 
		 }
		 else
		 {
				%>
				<h3>User Registration UnSuccessful</h3><br>
		<a href="employeehome.jsp">Go to home</a>
				<% 
		 }
}   


catch(Exception e)
{
	out.println(e);
}

%>