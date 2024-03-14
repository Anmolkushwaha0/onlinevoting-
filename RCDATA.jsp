<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%
String Firstname=request.getParameter("FN");
String Lastname=request.getParameter("LN");
String Fathername=request.getParameter("FA");
String Mathername=request.getParameter("MA");
String Address=request.getParameter("ADD");
String phone_no=request.getParameter("PH");
String DOB=request.getParameter("DOB");
String Email_id=request.getParameter("EM");
String Aadhaar=request.getParameter("ADH");
String FamilyMembers=request.getParameter("FM");
if("".equals(Firstname)||"".equals(Lastname)||"".equals(Fathername)||"".equals(Mathername)||"".equals(Address)||"".equals(phone_no)||"".equals(DOB)||"".equals(Email_id)||"".equals(Aadhaar)||"".equals(FamilyMembers))
{    response.sendRedirect("Insert.jsp?msg=blank");}
else    {
    try{        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anmol","123456789");
        String qry="insert into CR values(?,?,?,?,?,?,?,?,?,?)";
       PreparedStatement prestmt=con.prepareStatement(qry);
       prestmt.setString(1,Firstname);
       prestmt.setString(2,Lastname);
       prestmt.setString(3,Fathername);
       prestmt.setString(4,Mathername);
       prestmt.setString(5,Address);
       prestmt.setString(6,phone_no);
       prestmt.setString(7,DOB);
       prestmt.setString(8,Email_id);
       prestmt.setString(9,Aadhaar);
       prestmt.setString(10,FamilyMembers);
      prestmt.executeUpdate();
      con.close();
      prestmt.close();
       out.print("CHICME");
       %><a href="home.jsp">THANKYOU</a><%
       }
    catch(Exception e)
            { out.println(e); } }%>
