<%@ page import="java.sql.*" %>

<table align=center width="800">
<tr align=center bgcolor="pink" border=1>
<th>ID</th>
<th>FULL NAME</th>
<th>GENDER</th>
<th>USERNAME</th>
<th>EMAIL ID</th>
<th>MOBILE NO</th>
<th>ADDRESS</th>
<th>ACTION</th>
</tr>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
System.out.println("Connection Established");
 
 PreparedStatement pstmt = con.prepareStatement("select * from employeelogin ");
ResultSet rs = pstmt.executeQuery();
 while(rs.next())
{
	%>
	<tr align=center>
	<td><%=rs.getString("id")%></td>
	<td><%=rs.getString("fullname")%></td>
	<td><%=rs.getString("gender")%></td>
	<td><%=rs.getString("username")%></td>
	<td><%=rs.getString("emailid")%></td>
	<td><%=rs.getString("mobileno")%></td>
	<td><%=rs.getString("address")%></td>
	<td><%=rs.getString("permission")%></td>
	<td>
	<a href="deleteuser.jsp?id=<%=rs.getString("id")%>">Delete</a>
	</td>
	</tr>
	<%
}

%>




</table>


    </body>
</html>



