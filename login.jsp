<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <!doctype html>
<html>
    <head>
        <title>
            www.voting.com
        </title>
        <link rel="stylesheet" href="css/anmolk.css">
        <style>
            body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background-image: url("pp.jpg");
    opacity: 0.92;
    border-radius: 5px;
    }

    .anmol{
    width: 300px;
    padding: 50px;
    position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color:#D3D3D3 ;
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
        <form id="form1" name="form1" method="post" class="anmol" action="logindata.jsp">
            <table>
<%    if("blank".equals((String)request.getParameter("msg")))
        out.print("Fields are Blank....");
   else
       if("error".equals((String)request.getParameter("msg")))
           out.print("Invalid Password...");
    %>

        <h1>VOTER LOG IN</h1>
        <br>
        <input type="text" name="US"placeholder="Users_id/Email id">
        <input type="text" name="PAS" placeholder="Password">
        <input type="submit" name="submit" value="LOG IN">
        <a href="home.jsp"><input type="back" name="back" value="back"></a>
            </table>
        </form>
    </body>
</html>