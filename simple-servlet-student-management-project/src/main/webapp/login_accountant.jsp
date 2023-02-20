<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Accountant</title>
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
            <div class="head1"><h1>Accountant Login</h1></div>
            <div class="form1">
                <form action="accountant_login" method="post">
                   <label for="mail">Email :</label><input required="required" id="mail" type="text" name="email"><br><br>
                   <label for="password"></label>Password :<input required="required" id="password" type="password" name="password"><br><br>
                    <button>Login</button>

                </form>
            </div>
        </section>
    </header>
</body>
</html>