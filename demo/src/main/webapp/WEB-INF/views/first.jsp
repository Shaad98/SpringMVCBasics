<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>First Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            background-color:#f8b252 ;
            color:white;
        }
    </style>
</head>
<body>
    <% String name = (String)request.getAttribute("name");
        List<Integer> l = (List<Integer>)request.getAttribute("f");  %>
    <h1>Dear <%= name %></h1>
    <h2>&nbsp;&nbsp;&nbsp;You have to pay <%= l.get(0) %> for Spring and <%= l.get(1) %> for Spring Boot</h2>
    
</body>
</html>