<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<ul>
    <% for (String task : (List<String>) request.getAttribute("tasks")) { %>
    <li><%= task %></li>
    <% } %>
</ul>
</body>
</html>
