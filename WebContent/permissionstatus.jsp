<%@ page import="java.sql.*" %>
<%

String name= (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if( name==null || email==null || pwd==null)
{
    response.sendRedirect("emp_session.html");
}
%>
<%
String id = (String)session.getAttribute("id");
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    System.out.println("Driver Class Loaded");
  Connection con = null;
  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "project", "project");  
  System.out.println("Connection Established");
 
  PreparedStatement pstmt=con.prepareStatement("select * from permission where id=?");
  pstmt.setString(1,id);
      ResultSet rs1=pstmt.executeQuery();
 
 %>
        <p style="text-align: right"> <h1>PERMISSION STATUS &nbsp; &nbsp; &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;   <input type="button" value="Go Back From Where You Came !" onclick="history.back(-1)" style="background-color: #AD0000; color: #FFFFFF" />    </p> </h1>
  
 <%
      while(rs1.next())
      
      {
     
    
     out.println("STARTDATE:-");
     out.println(rs1.getString("startdate"));
     out.println("&nbsp &nbsp&nbsp");
     out.println("ENDDATE:-");
     out.println(rs1.getString("enddate"));
     out.println("&nbsp &nbsp&nbsp");
     out.println("DURATION:-");
     out.println(rs1.getString("duration"));
     out.println("&nbsp &nbsp&nbsp");
     out.println("REASON:-");
     out.println(rs1.getString("reason"));
     out.println("&nbsp &nbsp&nbsp");
     out.println("STATUS1:-");
     out.println(rs1.getString("leaderstatus"));
     out.println("&nbsp &nbsp&nbsp");
     out.println("STATUS2:-");
     out.println(rs1.getString("managerstatus"));
     out.println("&nbsp &nbsp&nbsp");
     out.println("FINALSTATUS:-");
     out.println(rs1.getString("finalstatus"));
   
     }
     out.println("<br><br><br>");
     out.println("Request  Your Permission  Here <a href='requestpermission.jsp'><b>click Here</b></a>");
 
        
     
}
catch(Exception e)
{
out.println(e);
}

%>
