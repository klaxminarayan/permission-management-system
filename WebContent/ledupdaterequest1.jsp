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
<h1 align="center" style="size:10pt;color:red">MARVEL IT SOLUTION</h1>
<h3 align="center">LEADER HOME </h3>
<style>
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
<li class="dropdown">
    <a href="viewpermission.jsp" class="dropbtn">View Permissions</a>
    
    <li><a href="changepassword_led.jsp">Change Password</a>
  </li>
  </li>
<li><a href="https://twitter.com/udaysamala">Contact Us</a>
  </li>
  <li><a href="llogout.jsp">Logout</a>
  </li>
</ul><br><br>
    


<br><fieldset width="100" >
      <legend><strong style="color:green"><i>UPDATE STATUS</i></strong></legend>
<form method="post" action="ledupdaterequest.jsp">
      
      <table align="center" width="40%" height="20%">
      
         
          <tr>
              <td><b></b></td>
              <td><input type="text" name="leaderstatus" required></td>
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
      
      
      
  







