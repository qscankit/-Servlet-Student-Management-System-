<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Accontant</title>
<style>
    body{
        background-color: gray;
    }
    .sec1{
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
            background-color: darkgray;
            left: 400px;
            top: 100px;
            border: 5px double black;
            height: 450px;
            width: 350px;
    }
    .head1{

        display: flex;
        justify-content: center;
        position: relative;
        top: -50px;
        text-decoration: underline;
    

    }
    .form1{

        position: relative;
        left: 50px;
    }
    .bar{
        position: relative;
        left: 39px;
    }
    .bar2{
        position: relative;
        left: 20px;
    }
    .bar3{
        position: relative;
        left: 5px;
    }
    button{
        position: relative;
        top: 10px;
        border: 1px solid black;
    }
    a{
        display: inline-block;
        position: relative;
        top: 10px;
        border: 1px solid black;
        left: 40px;
        width: 80px;
        text-align: center;
        color: black;
        text-decoration: none;
        background-color: aliceblue;
        
    }
</style>


</head>
<body>
    <header>
        <section class="sec1">
            <div class="head1"><h1>Add Accountant</h1></div>
            <div class="form1">
                <form action="add_accountant" method="post">
                   <label for="name">Name :</label> <input class="bar" id="name" type="text" name="name"><br><br>
                   <label for="pass">Password  :</label><input class="bar2" id="pass" type="text" name="password"><br><br>
                   <label for="email">Email :</label><input class="bar" id="email" type="text" name="email"><br><br>
                   <label for="phn">Contact No :</label><input class="bar3" id="phn" type="number" name="contact"><br><br>

                   <button>Add Accountant</button>
                   
                   <a href="admin_section.jsp">Back</a>
                </form>
            </div>
        </section>
    </header>
</body>
</html>