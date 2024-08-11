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
            color:#222222;
        }

        .payslip-container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .employee-details {
            margin-bottom: 20px;
        }

        .employee-details h3 {
            color: #4CAF50;
        }

        .summary-heading {
            color: #009688;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .summary-content {
            margin-bottom: 20px;
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
    <h2>Payslip</h2>
</header>

<div class="payslip-container">
    <div class="employee-details">
        <h3>Employee ID: 101</h3>
        <h3>Employee Name: John Doe</h3>
        <h3>Month: January 2023</h3>
    </div>

    <div class="summary-heading">Earnings</div>
    <div class="summary-content">
        <h3>Basic Salary: $2556</h3>
        <h3>HRA: $852</h3>
        <h3>Other Earnings: $850</h3>
    </div>

    <div class="summary-heading">Deductions</div>
    <div class="summary-content">
        <h3>Tax: $800 </h3>
        <h3>State Tax: $230 </h3>
        <h3>Other Deductions:$50  </h3>
    </div>

    <div class="summary-heading">Net Salary</div>
    <div class="summary-content">
        <h3>Total Salary: $4,260</h3>
    </div>

</div>
</body>
</html>
