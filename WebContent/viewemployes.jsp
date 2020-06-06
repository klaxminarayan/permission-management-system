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
<!DOCTYPE html>
<html>
<head>
<title>emp home</title>
<p style="text-align: center"> <a href="leaderhome.jsp"> <img src="marvel1.png" width="500" height="100" alt=""  style="border: 0">   </a> </p>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
  
}
</style>
</head>
<body>

<ul>
  <li><a href="leaderhome.jsp">Home</a>
  </li>
<li class="dropdown">
   
  </li>
<li><a href="viewemployes.jsp">View Employes</a>
  </li>
<li><a href="viewpermissions.jsp">View Permissions</a>
  </li>

    <li><a href="changepassword_led.jsp">Change Password</a>
  </li>
  </li>
<li><a href="https://twitter.com/udaysamala">Contact Us</a>
  </li>
  <li><a href="llogout.jsp">Logout</a>
  </li>
</ul><br><br>

        
        
        
        
        
        
        
<table >
<tr  bgcolor="#FF6666" border=20>
<th>ID</th>
<th>NAME</th>
<th>DATEOFBIRTH</th>
<th>EMAIL</th>
<th>USERNAME</th>
<th>GENDER</th>
<th>MOBILE NO</th>
<th>ADDRESS</th>

</tr>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
System.out.println("Connection Established");
 
 PreparedStatement pstmt = con.prepareStatement("select * from employee");
ResultSet rs = pstmt.executeQuery();
 while(rs.next())
{
	%>
	<tr align=center>
	<td><%=rs.getString("id")%></td>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("dob")%></td>
	<td><%=rs.getString("email")%></td>
	<td><%=rs.getString("uname")%></td>
	<td><%=rs.getString("gender")%></td>
	<td><%=rs.getString("mob")%></td>
	<td><%=rs.getString("address")%></td>
		</tr>
	<%
}

%>




</table>


    </body>
</html>



