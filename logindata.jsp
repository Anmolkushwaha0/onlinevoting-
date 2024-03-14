<%-- 
    Document   : logindata
    Created on : 6 Dec, 2022, 10:56:13 AM
    Author     : Anmol Kushwaha
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" %>
<%String login=request.getParameter("US");
     String pass=request.getParameter("PAS");
     if("".equals(login)||"".equals(pass))
    response.sendRedirect("login.jsp?msg=blank");
    else    {
    try
            {  boolean flag=false;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anmol","123456789");
     Statement stmt=con.createStatement();
     String qry="select * from S1";
     ResultSet rs=stmt.executeQuery(qry);
     while(rs.next())
         { String dbid=rs.getString("Users.id");
         String dbpass=rs.getString("Password");
         if(login.equals(dbid) && pass.equals(dbpass) )
             { flag=true; } }
        if(flag) { out.print("Successfully Login...."
                ); }
        else { response.sendRedirect("login.jsp?msg=error");} }
    catch(Exception e)  {    }}%>
     