<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<html>
<head>
    <title>Todo List</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
<h2>Todo List</h2>

<form action="./" method="post">
    <input type="text" name="task" placeholder="Add new task">
    <input type="submit" value="Add">
</form>

<%
List<String> tasksList = (List<String>) request.getAttribute("tasks");
if(tasksList == null) {
    tasksList = new ArrayList<String>();
}
%>

<!-- Displaying tasks in reverse order -->
<table>
    <thead>
        <tr>
            <th>#</th>
            <th>Task</th>
        </tr>
    </thead>
    <tbody>
        <% 
        for (int i = tasksList.size() - 1; i >= 0; i--) {
            String task = tasksList.get(i);
        %>
        <tr>
            <td><%= i + 1 %></td>
            <td><%= task %></td>
        </tr>
        <% } %>
    </tbody>
</table>
</body>
</html>
