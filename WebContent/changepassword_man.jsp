<%@ page import="java.sql.*" %>
<%
String id = (String)session.getAttribute("id");
String name= (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(id==null || name==null || email==null || pwd==null)
{
    response.sendRedirect("man_session.html");
}
%>
<!DOCTYPE html>
<html>
<head>
<title>manager change password</title>
<p style="text-align: center"> <a href="managerhome.jsp"> <img src="marvel1.png" width="500" height="100" alt=""  style="border: 0">   </a> </p>

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
  <li><a href="managerhome.jsp">Home</a>
  </li>
<li class="dropdown">
   
  </li>
<li><a href="viewemployes.jsp">View Employes</a>
  </li>
  <li><a href="viewleaders.jsp">View Leaders</a>
  </li>
<li><a href="viewpermissions1.jsp">View Permissions</a>
  </li>

    <li><a href="changepassword_man.jsp">Change Password</a>
  </li>
  </li>
<li><a href="https://twitter.com/udaysamala">Contact Us</a>
  </li>
  <li><a href="mlogout.jsp">Logout</a>
  </li>
</ul><br><br>

    


<br><fieldset width="100" >
      <legend><strong style="color:red"><i>Change Password</i></strong></legend>
<form method="post" action="man_changepassword.jsp">
      
      <table align="center" width="40%" height="20%">
      
         
          <tr>
              <td><b>Enter Old Password</b></td>
              <td><input type="password" name="opwd" required></td>
          </tr>
           <tr>
              <td><b>Enter New Password</b></td>
              <td><input type="password" name="npwd" required></td>
          </tr>
            <tr>
              <td align="center"><input type="submit" value="Change"></td>
              <td align="center"><input type="reset" value="Clear"></td>
          </tr>
      </table>
      
  </form>  
  </fieldset>


</body>
</html>
      
      
      
  







