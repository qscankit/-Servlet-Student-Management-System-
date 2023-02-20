<!DOCTYPE html>

<%@page import="com.ty.student_management_project.dto.Student"%>
<%@page import="com.ty.student_management_project.service.StudentService"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student</title>
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
            width: 150px;
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
	<form action="edit_student.jsp">
		<% StudentService studentService = new StudentService();
		int roll = Integer.parseInt(request.getParameter("roll"));
		Student student = studentService.getByAll(roll);
		%>
	</form>

    <header>
        <section class="sec1">
    	
            <h1>Update Student</h1>
            <form action="update_student" method="post">
            <%if(student!=null){ %>
            <%if(student.getRoll()==roll){ %>
                <fieldset style="border: 3px dashed black;" class="field1">
                    <legend >Personal Details</legend>
                    <label for="name">Name :</label><input class="block" id="name" type="text" name="name" value=<%= student.getName() %>><br><br>
                    <label for="email">Email :</label><input class="block" id="email" type="text" name="email" value=<%=student.getEmail() %> ><br><br>
                   	<label for="dob">D.O.B :</label><input class="block" id="dob" type="date" name="dob" value=<%= student.getDob()%> ><br><br>
                    <label for="roll">Roll No :</label><input class="block"  id="roll" type="number" name="roll" readonly="readonly" value=<%= student.getRoll() %>><br><br>
                    <label for="course">Course :</label><input class="block" id="course" type="text" name="course" value=<%=student.getCourse() %> ><br><br>
                    <label for="fee">Fee  :</label><input class="block" id="fee" type="number" name="fee"  value=<%=student.getFee() %>><br><br>
                    <label for="paid">Paid :</label><input class="block" id="paid" type="number" name="paid" value=<%=student.getPaid() %>><br><br>
                    <label for="due">Due :</label><input class="block" id="due" type="number" name="due" value=<%=student.getDue() %> ><br><br>
                </fieldset>
    
                <fieldset style="border: 3px dashed black;">
                    <legend>Address Details</legend>
                    <label for="address">Address :</label><input class="block" id="address" type="text" name="address" value=<%=student.getAddress() %>><br><br>
                    <label for="city">City :</label><input class="block" id="city" type="text" name="city" value=<%=student.getCity() %> ><br><br>
                    <label for="state">State :</label><input class="block" id="state" type="text" name="state" value=<%=student.getState() %>><br><br>
                    <label for="pin">Pin Code :</label><input class="block" id="pin" type="number" name="pincode" value=<%=student.getPincode() %>><br><br>
                    <label for="country">Country :</label><input class="block" id="country" type="text" name="country" value=<%=student.getCountry() %>><br><br>
                    <label for="phn">Contact No :</label><input class="block" id="phn" type="number" name="conatct" value=<%=student.getContact() %> ><br><br>
    
    
                    <button>Update Student</button>
                    <a href="edit_student.jsp">Back</a>
                </fieldset>
   			<%} %>
    		<%} %>
    				<%if(student==null){ %>
    				<h2 style=" color: red" >Invalid Roll No.</h2>
                    <a href="edit_student.jsp">Back</a>
                    <%} %>
            </form>
         
        </section>
        </header>
</body>
</html>