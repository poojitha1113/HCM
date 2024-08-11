<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payroll Calculation</title>
    <style>
        /* Add your styling here */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        .edit-button {
            background-color: #4CAF50;
            color: white;
            padding: 6px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            cursor: pointer;
        }

        /* Style for the payroll form */
        #payrollForm {
            max-width: 400px;
            margin: 20px;
        }

        #payrollForm label {
            display: block;
            margin-bottom: 8px;
        }

        #payrollForm input[type="radio"] {
            margin-right: 5px;
        }

        #payrollForm input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2>Day Based Payroll Calculation</h2>

<table>
    <thead>
    <tr>
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <!-- Replace this section with dynamic data -->
    <tr>
        <td>101</td>
        <td>John</td>
        <td>Doe</td>
        <td>
            <button onclick="viewPayroll(101)">View</button>
        </td>
    </tr>
    <!-- Add more rows dynamically as needed -->
    <tr>
        <td>102</td>
        <td>Jane</td>
        <td>Smith</td>
        <td>
            <button onclick="viewPayroll(101)">View</button>
        </td>
    </tr>
    <tr>
        <td>103</td>
        <td>Beth Bigidea</td>
        <td>Bigidea</td>
        <td>
            <button onclick="viewPayroll(101)">View</button>
        </td>
    </tr>
    <tr>
        <td>104</td>
        <td>Crystal Codebase</td>
        <td>Codebase</td>
        <td>
            <button onclick="editEmployee(1)">View</button>
        </td>
    </tr>
    <tr>
        <td>105</td>
        <td>Beth Bigidea</td>
        <td>Bigidea</td>
        <td>
            <button onclick="editEmployee(1)">View</button>
        </td>
    </tr>
    <tr>
        <td>109</td>
        <td>Sara Salesleader</td>
        <td>Salesleader</td>

        <td>
            <button onclick="editEmployee(1)">View</button>
        </td>
    </tr>
    <tr>
        <td>110</td>
        <td>Crystal </td>
        <td>Codebase</td>
        <td>
            <button onclick="editEmployee(1)">View</button>
        </td>
    </tr>
    <!-- Repeat similar rows for other employees -->
    </tbody>
</table>

<script>
    function viewPayroll(employeeId) {
        // Redirect to the payroll calculation page with the employee ID
        window.location.href = 'calculate_selection_date.jsp';
    }
</script>
</body>
</html>
