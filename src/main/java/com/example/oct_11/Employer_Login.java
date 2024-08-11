package com.example.oct_11;
import java.sql.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Employer_Login extends HttpServlet {
    //private static final long serialVersionUID = 1L;
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        if (validateLogin(username, password,request)) {
            response.sendRedirect("Success.jsp"); // Redirect to the dashboard upon successful login

        } else {

            out.println("<html><body><p>Invalid login credentials. Please try again.</p></body></html>");
        }
    }

    private boolean validateLogin(String username, String password, HttpServletRequest request) {
        String url = "jdbc:sqlserver://localhost\\MSSQL2022:1433;databaseName=HCM;integratedSecurity=false;encrypt=false;";
        String user = "sa";
        String pass = "jdbc";

        try {
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            Connection connectionobj = DriverManager.getConnection(url, user, pass);
            String query = "SELECT * FROM EmployeerLogin WHERE Username = ? AND Password = ?";

            try (PreparedStatement preparedStatement = connectionobj.prepareStatement(query)) {
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, password);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        // If a row is returned, the login is successful
                        // Fetch employee details
                        int employeeId = resultSet.getInt("EmployeerID");
                        String employeeName = resultSet.getString("Username");
                        // Fetch other employee details as needed

                        // Store employee details in the session
                        HttpSession session = request.getSession();
                        session.setAttribute("employeeId", employeeId);
                        session.setAttribute("employeeName", employeeName);
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