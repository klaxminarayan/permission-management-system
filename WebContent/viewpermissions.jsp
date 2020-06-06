<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>led home</title>
<p style="text-align: center"> <a href="leaderhome.jsp"> <img src="marvel1.png" width="500" height="100" alt=""  style="border: 0">   </a> </p>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
   text-align: center;
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

        
        
        
        
        
        
        
<table  width="800">
<tr bgcolor="#FF6666" border=20>
<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>CATEGORY</th>
<th>STARTDATE</th>
<th>ENDDATE</th>
<th>DURATION</th>
<th>REASON</th>
<th>STATUS</th>
<th>ACTION</th>

</tr>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
System.out.println("Connection Established");
 
 PreparedStatement pstmt = con.prepareStatement("select * from permission where leaderstatus='PROCESSING' " );
ResultSet rs = pstmt.executeQuery();
 while(rs.next())
{
	%>
	<tr >
	<td><%=rs.getString("id")%></td>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("email")%></td>
	<td><%=rs.getString("category")%></td>
	<td><%=rs.getString("startdate")%></td>
	<td><%=rs.getString("enddate")%></td>
	
	<td><%=rs.getString("duration")%></td>
	<td><%=rs.getString("reason")%></td>
	<td><%=rs.getString("leaderstatus")%></td>
	
	
	<td>
      <a href="leaderacceptrequest.jsp?id=<%=rs.getString("id")%>"><button type="button" class="btn btn-success">ACCEPT</button></a>
	 <a href="leaderrejectrequest.jsp?id=<%=rs.getString("id")%>"><button type="button" class="btn btn-danger">REJECT</button></a>
    
	<br>
	<br>
	
	
	</td>
	</tr>
	<%
}

%>




</table>


    </body>
</html>



