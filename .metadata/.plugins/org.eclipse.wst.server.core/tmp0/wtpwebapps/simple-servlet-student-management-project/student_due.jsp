<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student</title>
    <style>
       body{
        background-color: gray;
       }
       h1{
       display: flex;
       justify-content: center;
       text-align: center;
       border: 2px double black;
       
       }

       form{
        display: flex;
        justify-content: center;
        gap: 10px;
 		border-bottom: 10px double black;
        padding: 20px;
        margin: 10px;
        font-size: 20px;
       }
       button{
       	position: relative;
        right: -50px;
        text-decoration: none;
        padding: 5px;
        border: 2px solid black;
        color: black;
        font-weight: bold;
        background-color: floralwhite;
       }
       a{
        position: relative;
        right: -50px;
        
        text-decoration: none;
        padding: 5px;
        border: 2px solid black;
        color: black;
        font-weight: bold;
        background-color: floralwhite;
       }

    </style>
</head>
<body>
    <header>
       <h1>Insert The Roll No, To View Due Fees..</h1>
        <form action="due_student.jsp">
        <label for="roll">Roll No :</label><input  id="roll" type="number" name="roll">
        <button>Load Student</button>
          <a href="accountant_section.jsp">Back</a>
        </form>
       
    </header>
</body>
</html>