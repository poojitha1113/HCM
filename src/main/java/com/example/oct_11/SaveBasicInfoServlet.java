package com.example.oct_11;
import java.sql.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
public class SaveBasicInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int employee_id = Integer.parseInt(request.getParameter("EmployeeId"));
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String address = request.getParameter("address");
        String state = request.getParameter("state");
        String email = request.getParameter("email");
        String mobileNumber = request.getParameter("mobileNumber");
        String jobTitle = request.getParameter("jobTitle");
        String DateofJoin = request.getParameter("DateofJoin");
        String salary = request.getParameter("salary");
        double Basic = Double.parseDouble(request.getParameter("Basic"));
        double HRA = Double.parseDouble(request.getParameter("HRA"));
        double Bonus = Double.parseDouble(request.getParameter("Bonus"));
        double Other = Double.parseDouble(request.getParameter("Other"));
        double PF = Double.parseDouble(request.getParameter("PF"));
        double StateTax = Double.parseDouble(request.getParameter("StateTax"));
        double OtherDeducation = Double.parseDouble(request.getParameter("OtherDeducation"));


        try {
            // Load the JDBC driver
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());

            // Establish a connection

            String url = "jdbc:sqlserver://localhost\\MSSQL2022:1433;databaseName=HCM;integratedSecurity=false;encrypt=false;";
            String user = "sa";
            String pass = "jdbc";
            Connection connection = DriverManager.getConnection(url, user, pass);

            // Prepare SQL statement
            String sql = "INSERT INTO login_info (employee_id, password, first_name, last_name, date_of_birth, address, state, email, mobile_number,job_title,date_of_join) VALUES (?,?,?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement loginInfoStatement = connection.prepareStatement(sql)) {
                loginInfoStatement.setInt(1, employee_id);
                loginInfoStatement.setString(2, password);
                loginInfoStatement.setString(3, firstName);
                loginInfoStatement.setString(4, lastName);
                loginInfoStatement.setString(5, dateOfBirth);
                loginInfoStatement.setString(6, address);
                loginInfoStatement.setString(7, state);
                loginInfoStatement.setString(8, email);
                loginInfoStatement.setString(9, mobileNumber);
                loginInfoStatement.setString(10, jobTitle);
                loginInfoStatement.setString(11, DateofJoin);

                // Execute the statement
                loginInfoStatement.executeUpdate();
            }
            String payrollQuery = "INSERT INTO employee_payroll (total_salary, basic, hra, bonus, other, pf, state_tax, other_deduction) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement payrollStatement = connection.prepareStatement(payrollQuery)) {
                payrollStatement.setString(1, salary); // Assuming totalSalary is a String, convert it to Double
                payrollStatement.setDouble(2, Basic);
                payrollStatement.setDouble(3, HRA);
                payrollStatement.setDouble(4, Bonus);
                payrollStatement.setDouble(5, Other);
                payrollStatement.setDouble(6, PF);
                payrollStatement.setDouble(7, StateTax);
                payrollStatement.setDouble(8, OtherDeducation);
                // Execute the query
                payrollStatement.executeUpdate();

                // Close the connection
                PrintWriter out = response.getWriter();
                int rowsAffected = payrollStatement.executeUpdate();
                if (rowsAffected > 0) {
                    out.println("Employee basic info saved successfully.");
                } else {
                    out.println("Failed to save employee basic info.");
                }
                connection.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}