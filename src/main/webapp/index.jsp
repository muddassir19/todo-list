<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, java.util.ArrayList" %> <!-- Added ArrayList import here -->
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

<!-- Begin changes -->
<%
List<String> tasksList = (List<String>) request.getAttribute("tasks");
if(tasksList == null) {
    tasksList = new ArrayList<String>();  // Initialize it if it's null
}
%>
<!-- End changes -->

<ul>
    <% for (String task : tasksList) { %> <!-- Updated this line -->
    <li><%= task %></li>
    <% } %>
</ul>
</body>
</html>
