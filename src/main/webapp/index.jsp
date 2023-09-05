<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Todo List</title>
</head>
<body>
<h2>Todo List</h2>

<form action="./" method="post">
    <input type="text" name="task" placeholder="Add new task">
    <input type="submit" value="Add">
</form>

<h3>Tasks:</h3>
<table border="1">
    <tr>
        <th>Task</th>
    </tr>
    <% List<String> tasksList = (List<String>) request.getAttribute("tasks");
       if(tasksList != null) {
           for (String task : tasksList) {
    %>
    <tr>
        <td><%= task %></td>
    </tr>
    <% 
           }
       } 
    %>
</table>
</body>
</html>
