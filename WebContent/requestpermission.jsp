<%
String id = (String)session.getAttribute("id");
String name= (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(id==null || name==null || email==null || pwd==null)
{
    response.sendRedirect("emp_session.html");
}
%>

<html>
    <head>
        <title>
          RAISE PERMISSION
        </title>
        <style>
body {
  background-image: url("requestpermission.jpg");
 background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>


       
    </head>
    <body >
    <input type="button" value="Go Back From Where You Came!" onclick="history.back(-1)" />      
        <form method="post" action="permission.jsp" >
            <table align="center" style="height:150px;color:red">
           
                <tr>
                    <th colspan="2" >Raise Permission Form</th>
                   
                </tr><br><br>
               
                <tr><td> ID.No</td>
                <td><input  name=id value="<%=id%>"   readonly></td>
                </tr>
                <tr><td> Name</td>
                <td><input name=name   value="<%=name%>"  readonly></td>
                </tr>
                <tr><td> email</td>
                <td><input name=email  value="<%=email%>"  readonly></td>
                </tr>
               
                <tr>
                <td>Category</td>
                <td><input type="text" placeholder="Enter Category" name="category" required></td>
                       </tr>
                       
                       <tr><td> Startdate</td>
                <td><input type="date"  name="startdate" required></td>
                </tr>
               
                <tr><td> Enddate</td>
                <td><input type="date"  name="enddate" required></td>
                </tr>
               
                <tr><td> Duration</td>
                <td><input type="number" placeholder="How many days" name="duration" required></td>
                </tr>

                       <tr>
                           <td>
                               Reason
                           </td>
                           <td><input type="text" placeholder="purpose of permission"  name="reason" required> </td>
                       </tr>
                       
 <td align="center"><input type="submit" value="Submit"></td>
                    <td align="center"><input type="reset" value="Clear"></td>
                </tr>
            </table>

      </form>
    </body>
</html>