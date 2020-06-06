<%@ page import="java.sql.*" %>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String dob=request.getParameter("dob");
String email=request.getParameter("email");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String gender=request.getParameter("gender");
String mob=request.getParameter("mob");
String address=request.getParameter("address");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "laxmi");  
	 System.out.println("Connection Established");

	 PreparedStatement ps = con.prepareStatement("select * from employee where uname=?  or email=? or mob=?");
	 ps.setString(1, uname);
	 ps.setString(2, email);
	 ps.setString(3, mob);
	 
	 
	 ResultSet rs = ps.executeQuery();
	 
	 if(rs.next())
	 {
		 %>
			<h3>Email Id / Username / Mobileno already available</h3><br>
	<a href="empreg.html">Try Again</a>
			<%  
	 }
	 else
	 {
		 PreparedStatement pstmt = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?)");
		 
		 pstmt.setString(1,id);
         pstmt.setString(2,name);
         pstmt.setString(3,dob);
         pstmt.setString(4,email);
         pstmt.setString(5,uname);
         pstmt.setString(6,pwd);
         pstmt.setString(7,gender);
         pstmt.setString(8,mob);
         pstmt.setString(9,address);
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
			<h3>User Registration Successful</h3><br>
	<a href="employeelogin.html">Go to Login</a>
			<% 
		 }
		 else
		 {
				%>
				<h3>User Registration UnSuccessful</h3><br>
		<a href="empreg.html">Try to Register Again</a>
				<% 
		 }
		
	 }
	 
	 
	 
	 
}
catch(Exception e)
{
	out.println(e);
}

%>