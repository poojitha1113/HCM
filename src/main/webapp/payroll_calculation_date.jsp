<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e0f7fa; /* Light green background color */
        }

        header {
            background-color: #009688; /* Teal header color */
            color: #fff;
            text-align: center;
            padding: 1em;
        }

        h2 {
            text-align: center;
            color: #009688;
        }

        .summary-container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .summary-heading {
            color: #009688;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .summary-content {
            margin-bottom: 20px;
        }

        .summary-content h3 {
            color: #4CAF50;
        }

        .report-button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 16px;
            text-align: center;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 8px;
            border: none;
            text-decoration: none;
            display: block;
            margin-top: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        .report-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<header>
    <h2>Payroll Summary</h2>
</header>

<div class="summary-container">
    <div class="summary-heading">Mar 2023</div>
    <div class="summary-heading">Days Count</div>
    <div class="summary-content">

        <h3>Present Days : 18 Days</h3>
        <h3>absent Days : 5 Days</h3>
        <h3>No of Weekoff's Days : 7 Days</h3>
        <!-- Add more weeks as needed -->
    </div>

    <div class="summary-heading">Total Salary Days</div>
    <div class="summary-content">
        <h3> 23 Days</h3>
    </div>

    <a href="summary_page_days.jsp" class="report-button">Generate Report</a>
</div>
</body>
</html>
