<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>

<%
    // Simulated data - Replace this with your actual logic to fetch timesheet data
    ArrayList<String[]> timesheetData = new ArrayList<>();
    timesheetData.add(new String[]{"2023-11-10", "09:00", "17:00"});
    timesheetData.add(new String[]{"2023-11-11", "09:30", "18:00"});
    // Add more data as needed

    // Calculate hours worked per day
    ArrayList<String[]> hoursWorkedPerDay = new ArrayList<>();
    for (String[] entry : timesheetData) {
        String date = entry[0];
        String startTime = entry[1];
        String endTime = entry[2];

        // Calculate hours worked
        // This is a simplified example, you should implement actual logic for time calculations
        int hoursWorked = calculateHoursWorked(startTime, endTime);

        hoursWorkedPerDay.add(new String[]{date, String.valueOf(hoursWorked)});
    }

    // Send hoursWorkedPerDay back to the main HTML
    request.setAttribute("hoursWorkedPerDay", hoursWorkedPerDay);
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Time Sheet</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5; /* Light gray background */
        }

        table {
            width: 80%;
            margin: 50px auto;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #009688; /* Teal header color */
            color: #fff; /* White text color */
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray background for even rows */
        }
    </style>
</head>
<body>
<h2>Sara Salesleader - March 2023</h2>
<a href="Success.jsp" class="home-logo">
    HomePage
</a>
<table>
    <thead>
    <tr>
        <th>Date</th>
        <th>Time In</th>
        <th>Time Out</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Mar 1, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 2, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 3, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 4, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 5, 2023</td>
        <td></td>
        <td></td>
        <td> Absent </td>
    </tr>
    <tr>
        <td>Mar 6, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 7, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 8, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 9, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 10, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 11, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 12, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 13, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 14, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 15, 2023</td>
        <td>11:00 AM</td>
        <td>20:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 16, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
    </tr>
    <tr>
        <td>Mar 17, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
    </tr>
    <tr>
        <td>Mar 18, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
    </tr>
    <tr>
        <td>Mar 19, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
    </tr>
    <tr>
        <td>Mar 20, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 21, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 22, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 23, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 23, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 25, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
    </tr>
    <tr>
        <td>Mar 26, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
    </tr>

    <tr>
        <td>Mar 27, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
    </tr>
    <tr>
        <td>Mar 28, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
    </tr>
    <tr>
        <td>Mar 29, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 30, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>
    <tr>
        <td>Mar 31, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
    </tr>


    <!--ore rows with sample data -->
    <!-- Include some days with missing entries (null or placeholder) -->
    </tbody>
</table>
</body>
</html>
<%!
    private int calculateHoursWorked(String startTime, String endTime) {
        return 0;
    }
%>