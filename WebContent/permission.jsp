<%@ page import="java.sql.*" %>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String category=request.getParameter("category");
String startdate=request.getParameter("startdate");
String enddate=request.getParameter("enddate");
String duration=request.getParameter("duration");

String reason=request.getParameter("reason");



try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
	 System.out.println("Connection Established");

	
		 PreparedStatement pstmt = con.prepareStatement("insert into permission values(?,?,?,?,?,?,?,?,?,?,?)");
		 
		 pstmt.setString(1,id);
         pstmt.setString(2,name);
         pstmt.setString(3,email);
         pstmt.setString(4,category);
         pstmt.setString(5,startdate);
         pstmt.setString(6,enddate);
         pstmt.setString(7,duration);
         pstmt.setString(8,reason);
         pstmt.setString(9,"PROCESSING");
         pstmt.setString(10,"PROCESING");
         pstmt.setString(11,"PROCESING");
        
        
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
			<h3>Send Successful</h3><br>
	<a href="employeehome.jsp">Go to Home</a>
			<% 
		 }
		 else
		 {
				%>
				<h3> UnSuccessful</h3><br>
		<a href="requestpermission.jsp">Try to RequestPermission Again</a>
				<% 
		 }
		
}
	 
	 
	 
	 

catch(Exception e)
{
	out.println(e);
}

%>