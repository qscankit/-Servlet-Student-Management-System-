<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN LOGIN</title>

 <style>
        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        body{
            background-color: slategrey;
        }

        .sec1{
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
            left: 400px;
            top: 100px;
            border: 5px double black;
            height: 350px;
            width: 250px;
            background-color: antiquewhite;
        
        }
       
        .head1{
            display: flex;
            justify-content: center;
            text-align: center;
            text-decoration: solid;
            font-size: medium;
            
            /* border-bottom: 5px solid black; */

        }
        .form1{
            display: flex;
            height: 150px;
            width: 500px;
            margin-left: 150px;
            padding: 10px;
            border: 5px  double black;
            margin-top: 10px;
            justify-content: center;
            text-align: center;
            
        }
    </style>

</head>
<body>
	
	  <header>
        <section class="sec1">
            <div class="head1"><h1>Admin Login</h1></div>
            <div class="form1">
                <form action="login" method="post">
                   Name :  <input type="text" name="name"><br><br>
                   Password: <input type="password" name="password"><br><br>
                    <input type="submit" name="login">
                </form>
            </div>
        </section>
    </header>
	
</body>
</html>