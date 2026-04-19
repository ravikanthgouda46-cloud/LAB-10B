<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Marks Form</title>

    <style>
        .container {
            width: 350px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
        }
        .field {
            margin: 8px 0;
        }
    </style>

    <script>
        function validateForm() {

            let roll = document.forms["studForm"]["rollno"].value;
            let name = document.forms["studForm"]["name"].value;

            let sub1 = document.forms["studForm"]["sub1"].value;
            let sub2 = document.forms["studForm"]["sub2"].value;
            let sub3 = document.forms["studForm"]["sub3"].value;
            let sub4 = document.forms["studForm"]["sub4"].value;
            let sub5 = document.forms["studForm"]["sub5"].value;

            if (roll == "" || name == "") {
                alert("Roll No and Name required!");
                return false;
            }

            if (sub1 == "" || sub2 == "" || sub3 == "" || sub4 == "" || sub5 == "") {
                alert("All subject marks required!");
                return false;
            }

            return true;
        }
    </script>

</head>

<body>

<div class="container">

    <h2>Student Marks Entry</h2>

    <form name="studForm" action="ResultServlet" method="post" onsubmit="return validateForm()">

        <div class="field">
            Roll No: <input type="text" name="rollno">
        </div>

        <div class="field">
            Name: <input type="text" name="name">
        </div>

        <div class="field">
            Sub1: <input type="number" name="sub1">
        </div>

        <div class="field">
            Sub2: <input type="number" name="sub2">
        </div>

        <div class="field">
            Sub3: <input type="number" name="sub3">
        </div>

        <div class="field">
            Sub4: <input type="number" name="sub4">
        </div>

        <div class="field">
            Sub5: <input type="number" name="sub5">
        </div>

        <input type="submit" value="Submit">

    </form>

</div>

</body>
</html>