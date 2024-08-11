<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information</title>
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

        nav {
            background-color: #26a69a; /* Teal navigation bar color */
            overflow: hidden;
        }

        button {
            background-color: #26a69a; /* Green button color */
            color: white;
            padding: 14px 16px;
            text-align: center;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 8px;
            border: none;
        }

        button:hover {
            background-color: #e0f7fa; /* Darker green on hover */
        }

        .menu {
            float: right;
            margin-right: 20px;
        }

        .menu button {
            margin-left: 10px;
        }

        .employee-list {
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #009688;
            color: white;
        }

        .actions {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<header>
    <h1>Welcome, John</h1>
</header>

<a href="Employee_Success_Login101.html" class="home-logo">
    HomePage
</a>
<div class="employee-list">
    <table>
        <thead>
        <tr>
            <th>Employee ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Mobile Number</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- Fetch and display employee data dynamically here -->
        <!-- Example row, replace with data fetched from the server -->
        <tr>
            <td>101</td>
            <td>John</td>
            <td>Doe</td>
            <td>10-13-1995</td>
            <td>bethb@newblend.com</td>
            <td>202-320-2232</td>
            <td>
                <button onclick="editEmployee(1)">Edit</button>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>


    function editEmployee(employeeId) {
        // Add logic to navigate to the edit page with the selected employeeId
        window.location.href = 'EditEmployee101.jsp';
    }
</script>

</body>
</html>
