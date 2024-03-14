<%-- 
    Document   : reg
    Created on : 6 Dec, 2022, 10:25:18 AM
    Author     : Anmol Kushwaha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>
            www.voting.com
        </title>
        <link rel="stylesheet" href="css/anmolk.css">
        <style>
            body{
    
    background-image: url("images/l.jpg");
    height: 50%;
    width: 50%;
    opacity: 0.92;
    border-radius: 5px;
    }
    .div
    {
        height: 50px;
        width: 50px;
        background-color: powderblue;
}

    .anmol{
    width: 300px;
    padding: 50px;
    position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color:#D3D3D3;
    text-align: center;
    }

    .anmol input[type = "text"]
    {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 14px 10px;
    width: 200px;
    outline: none;
    color: rgb(109, 8, 8);
    border-radius: 24px;
    transition: 0.25s;
    }

    .anmol input[type = "text"]:focus, .box input[type = "password"]:focus{
    width: 280px;
    border-color: #2ecc71;
    background-color: #2ecc71;
    }

    .anmol input[type = "submit"]
    {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid rgb(46, 204, 113);
    padding: 14px 40px;
    outline: none;
    color: rgb(98, 210, 95);
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer;
    }

    .anmol input[type = "submit"]:hover{
    background: hsl(240, 16%, 84%);
    }
    .anmol input[type = "back"]
    {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid rgb(46, 204, 113);
    padding: 14px 40px;
    outline: none;
    color: rgb(98, 210, 95);
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer;
    }

    .anmol input[type = "back"]
    {
    background: hsl(240, 16%, 84%);
    }


        </style>
</head>
<body>
        <form id="form1" name="form1" method="post" class="anmol" action="regdata.jsp">
            <table>
    <%
      if("blank".equals((String)request.getParameter("msg")))
          out.print("Invalid Entry...");
      %>
        <h1>VOTER REGISTRATION</h1>
        <br>
        <div>
        <input type="text" name="FN" placeholder="Firstname">
        <input type="text" name="LN" placeholder="Lastname">
        <input type="text" name="ADD" placeholder="Address">
        <input type="text" name="PH" placeholder="phone_no">
        <input type="text" name="DOB"placeholder="Date of birth">
        <input type="text" name="Mail"placeholder="Email id">
        <input type="text" name="ADH"placeholder="Aadhaar">
        <input type="text" name="US"placeholder="Users_id">
        <input type="text" name="PAS" placeholder="Password">
        <a href="login.jsp"><input type="submit" name="submit"value="submit"></a>
        <a href="home.jsp"><input type="back" name="back" value="back"></a></div>
            </table>
        </form>
    </body>
</html>