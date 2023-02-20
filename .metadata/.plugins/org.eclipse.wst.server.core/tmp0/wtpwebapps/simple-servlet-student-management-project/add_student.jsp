<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD STUDENT</title>
 <style>
        .sec1{
            background-color: grey;
            padding: 40px;
            border: 10px double black;
        }
        h1{
            display: flex;
            justify-content: center;
            text-decoration: underline;
            font-size: 30px;
            color: black;
            margin-bottom: 60px;
        }
        .field1{
            position: relative;
            bottom: 40px;
        }
        legend{
            font-size: 20px;
            text-align: center;
            font-weight: bold;
            color: rgb(3, 3, 97);
            margin-bottom: 10px;
        }
        /* label{
            display: flex;
            justify-content: baseline;
        } */
        .block{
            display: flex;
            /* justify-content: baseline; */
            position: relative;
            left: 90px;
            top: -20px;   
        }

        button{
            width: 100px;
            height: 30px;
            display: inline-block;
            position: relative;
            left: 80px;
             /* top: 10px; */
            border: 1px solid black;
        }
        a{  
            display: inline-block;
            position: relative;
            /* height: 30px; */
            width: 100px;
            border: 1px solid black;
            left: 250px;
            /* top: -5px; */
            color: black;
            text-decoration: none;
            text-align: center;
            background-color: aliceblue;
            padding: 7px;
        }
    </style>

</head>
<body>

<header>
    <section class="sec1">

        <h1>Add Student</h1>
        <form action="add_student" method="post">
            <fieldset style="border: 3px dashed black;" class="field1">
                <legend >Personal Details</legend>
                <label for="roll">Roll No :</label><input class="block"  id="roll" type="number" name="roll"><br><br>
                <label for="name">Name :</label><input class="block" id="name" type="text" name="name"><br><br>
                <label for="email">Email :</label><input class="block" id="email" type="text" name="email"><br><br>
                <label for="dob">D.O.B :</label><input class="block" id="dob" type="date" name="dob"><br><br>
                <label for="course">Course :</label><input class="block" id="course" type="text" name="course"><br><br>
                <label for="fee">Fee  :</label><input class="block" id="fee" type="number" name="fee"><br><br>
                <label for="paid">Paid :</label><input class="block" id="paid" type="number" name="paid"><br><br>
                <label for="due">Due :</label><input class="block" id="due" type="number" name="due"><br><br>
            </fieldset>

            <fieldset style="border: 3px dashed black;">
                <legend>Address Details</legend>
                <label for="address">Address :</label><input class="block" id="address" type="text" name="address"><br><br>
                <label for="city">City :</label><input class="block" id="city" type="text" name="city"><br><br>
                <label for="state">State :</label><input class="block" id="state" type="text" name="state"><br><br>
                <label for="pin">Pin Code :</label><input class="block" id="pin" type="number" name="pincode"><br><br>
                <label for="country">Country :</label><input class="block" id="country" type="text" name="country"><br><br>
                <label for="phn">Conatact No :</label><input class="block" id="phn" type="number" name="conatct"><br><br>


                <button>Add Student</button>
                <a href="accountant_section.jsp">Back</a>
            </fieldset>

        </form>


    </section>
    </header>

</body>
</html>