package com.example.oct_11;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class EmployeeInfoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ServletException {
        List<Employee> employeeList = new ArrayList<>();

        try {
            String url = "jdbc:sqlserver://localhost\\MSSQL2022:1433;databaseName=HCM;integratedSecurity=false;encrypt=false;";
            String user = "sa";
            String pass = "jdbc";
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            Connection connection = DriverManager.getConnection(url, user, pass);

                String sql = "SELECT * FROM login_info";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
            ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int employeeId = resultSet.getInt("employee_id");
                    String firstName = resultSet.getString("first_name");
                    String lastName = resultSet.getString("last_name");
                    String dateOfBirth = resultSet.getString("date_of_birth");
                    String email = resultSet.getString("email");
                    String mobileNumber = resultSet.getString("mobile_number");

                    // Create Employee object and add to the list
                    Employee employee = new Employee(employeeId, firstName, lastName, dateOfBirth, email, mobileNumber);
                    employeeList.add(employee);
                    System.out.println("EmployeeInfoServlet: Servlet called");

// Log retrieved employee data
                    System.out.println("EmployeeInfoServlet: Retrieved " + employeeList.size() + " employees");
         //timesheet

                }
            }
            connection.close();

        } catch (SQLException e) {
            // Handle exceptions (log or display an error message)
            e.printStackTrace();
        }

        // Set the employee list as an attribute in the request
        request.setAttribute("employeeList", employeeList);

        // Forward the request to the JSP page
        request.getRequestDispatcher("All_Employee_info.jsp").forward(request, response);
    }
}

