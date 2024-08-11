package com.example.oct_11;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class EmployeeLogin extends HttpServlet {
    //private static final long serialVersionUID = 1L;
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int employee_Id = Integer.parseInt(request.getParameter("EmployeeId"));
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        if (validateLogin(employee_Id, password,request)) {
            response.sendRedirect("../html/Employee_Success_Login101.html"); // Redirect to the dashboard upon successful login

        } else {

            out.println("<html><body><p>Invalid login credentials. Please try again.</p></body></html>");
        }
    }

    private boolean validateLogin(int employee_Id, String password, HttpServletRequest request) {
        String url = "jdbc:sqlserver://localhost\\MSSQL2022:1433;databaseName=HCM;integratedSecurity=false;encrypt=false;";
        String user = "sa";
        String pass = "jdbc";

        try {
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            Connection connectionobj = DriverManager.getConnection(url, user, pass);
            String query = "SELECT * FROM login_info WHERE employee_id = ? AND password = ?";

            try (PreparedStatement preparedStatement = connectionobj.prepareStatement(query)) {
                preparedStatement.setInt(1, employee_Id);
                preparedStatement.setString(2, password);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        // If a row is returned, the login is successful
                        // Fetch employee details
                        int employee_id = resultSet.getInt("employee_id");
                        String  first_name = resultSet.getString("first_name");
                        // Fetch other employee details as needed

                        // Store employee details in the session
                        HttpSession session = request.getSession();
                        session.setAttribute("employeeId", employee_id);
                        session.setAttribute("employeeName",  first_name);
                        // Store other employee details in the session as needed

                        return true;
                    } else {
                        // If no row is returned, print a message for debugging
                        System.out.println("No matching records found for the provided credentials.");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL Exception: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Exception: " + e.getMessage());
        }

        // If execution reaches this point, login validation failed
        System.out.println("Login validation failed");
        return false;
    }
}
