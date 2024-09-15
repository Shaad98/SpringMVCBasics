<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>About page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    body {
        font-family: "Poppins", sans-serif;
    }
</style>

</head>
<body>
   <% 
String name = (String)request.getAttribute("name");
String city = (String)request.getAttribute("city");
List<String> list = (List<String>)request.getAttribute("channel");
%>
<h1>Welcome To Our Web Application <%= name != null ? name : "Guest" %></h1>
<h2>We Figured Out That You Belong To <%= city != null ? city : "Unknown City" %></h2> 
<h1>You Learn Coding From </h1>
<% if (list != null) {
    for (String channel : list) {
%>
    <h1><%= channel %></h1>   
<% } } else { %>
    <p>No channels available.</p>
<% } %>
<h2>Youtube Channels</h2>

</body>
</html>