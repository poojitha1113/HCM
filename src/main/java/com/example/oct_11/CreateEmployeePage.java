package com.example.oct_11;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class CreateEmployeePage extends HttpServlet{
    public  void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Perform employee creation logic
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        // Redirect or show success message
        response.sendRedirect("employee-created.jsp");

    }

}
