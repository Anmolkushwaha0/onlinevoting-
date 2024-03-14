<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%
String Firstname=request.getParameter("FN");
String Lastname=request.getParameter("LN");
String Address=request.getParameter("ADD");
String phone_no=request.getParameter("PH");
String DOB=request.getParameter("DOB");
String Users_id=request.getParameter("US");
String Password=request.getParameter("PAS");
if("".equals(Firstname)||"".equals(Lastname)||"".equals(Address)||"".equals(phone_no)||"".equals(DOB)||"".equals(Users_id)||"".equals(Password))
{    response.sendRedirect("reg.jsp?msg=blank");}
else    {
    try{        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anmol","123456789");
        String qry="insert into S1 values(?,?,?,?,?,?,?)";
       PreparedStatement prestmt=con.prepareStatement(qry);
       prestmt.setString(1,Firstname);
       prestmt.setString(2,Lastname);
       prestmt.setString(3,Address);
       prestmt.setString(4,phone_no);
       prestmt.setString(5,DOB);
       prestmt.setString(6,Users_id);
       prestmt.setString(7,Password);
      prestmt.executeUpdate();
      con.close();
      prestmt.close();
       %><a href="login.jsp">
           <input type=" " name=" " value="login"></a>
      <a href="home.jsp">home.jsp</a><%
       }
    catch(Exception e)
            { out.println(e); } }%>
