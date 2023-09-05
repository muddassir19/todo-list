package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TodoServlet extends HttpServlet {

    private List<String> tasks = new ArrayList<>();  // Use this list to store tasks

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String task = request.getParameter("task");
        if (task != null && !task.trim().isEmpty()) {
            tasks.add(task);
        }
        response.sendRedirect(request.getContextPath());
    }
}
