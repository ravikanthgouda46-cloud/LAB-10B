  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Result Page</title>

    <style>
        .container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
        }
        .pass {
            color: green;
        }
        .fail {
            color: red;
        }
    </style>

</head>
<body>

<div class="container">

    <h2>Student Result</h2>

    <%
        String message = (String) request.getAttribute("message");
    %>

    <p><b><%= message %></b></p>

    <%
        if (!message.startsWith("Error")) {

            String result = (String) request.getAttribute("result");
    %>

        <p>Roll No: <%= request.getAttribute("rollno") %></p>
        <p>Name: <%= request.getAttribute("name") %></p>

        <p>Sub1: <%= request.getAttribute("s1") %></p>
        <p>Sub2: <%= request.getAttribute("s2") %></p>
        <p>Sub3: <%= request.getAttribute("s3") %></p>
        <p>Sub4: <%= request.getAttribute("s4") %></p>
        <p>Sub5: <%= request.getAttribute("s5") %></p>

        <p>Total: <%= request.getAttribute("total") %></p>
        <p>Average: <%= request.getAttribute("avg") %></p>

        <h3 class="<%= result.equals("PASS") ? "pass" : "fail" %>">
            Result: <%= result %>
        </h3>

    <%
        }
    %>

    <br>
    <a href="index.jsp">Go Back to Form</a>

</div>

</body>
</html>