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
    <h1>Welcome, <%= session.getAttribute("employeeName") %>!</h1>
</header>

<nav>
    <button onclick="navigateTo('createEmployee')">Create Employee</button>
    <button>Manage Timesheet</button>
    <button>Calculate Payroll</button>

    <!-- Menu options -->
    <div class="menu">
        <button>Setting</button>
        <button onclick="navigateTo('logout')">Logout</button>
    </div>
</nav>
<a href="Success.jsp" class="home-logo">
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
                <button onclick="deleteEmployee(1)">Delete</button>
            </td>
        </tr>
        <!-- Add more rows dynamically as needed -->
        <tr>
            <td>102</td>
            <td>Jane</td>
            <td>Smith</td>
            <td>11-11-1990</td>
            <td>crystalc@newblend.com</td>
            <td>123-456-7890</td>
            <td>
                <button onclick="editEmployee(1)">Edit</button>
                <button onclick="deleteEmployee(1)">Delete</button>
            </td>
        </tr>
        <tr>
            <td>103</td>
            <td>Beth Bigidea</td>
            <td>Bigidea</td>
            <td>01-01-2000</td>
            <td>harryh@newblend.com</td>
            <td></td>
            <td>
                <button onclick="editEmployee(1)">Edit</button>
                <button onclick="deleteEmployee(1)">Delete</button>
            </td>
        </tr>
        <tr>
            <td>104</td>
            <td>Crystal Codebase</td>
            <td>Codebase</td>
            <td>13-10-1995</td>
            <td></td>
            <td></td>
            <td>
                <button onclick="editEmployee(1)">Edit</button>
                <button onclick="deleteEmployee(1)">Delete</button>
            </td>
        </tr>
        <tr>
            <td>105</td>
            <td>Beth Bigidea</td>
            <td>Bigidea</td>
            <td>11-11-1990</td>
            <td>halleyh@newblend.com</td>
            <td>2023202232</td>
            <td>
                <button onclick="editEmployee(1)">Edit</button>
                <button onclick="deleteEmployee(1)">Delete</button>
            </td>
        </tr>
        <tr>
            <td>109</td>
            <td>Sara Salesleader</td>
            <td>Salesleader</td>
            <td>10-13-1995</td>
            <td>saras@newblend.com</td>
            <td></td>
            <td>
                <button onclick="editEmployee(1)">Edit</button>
                <button onclick="deleteEmployee(1)">Delete</button>
            </td>
        </tr>
        <tr>
            <td>110</td>
            <td>Crystal </td>
            <td>Codebase</td>
            <td>11-11-1990</td>
            <td></td>
            <td></td>
            <td>
                <button onclick="editEmployee(1)">Edit</button>
                <button onclick="deleteEmployee(1)">Delete</button>
            </td>
        </tr>
        </tbody>
    </table>

    <div class="actions">
        <button onclick="selectAll()">Select All</button>
        <button onclick="clearSelection()">Clear Selection</button>
        <button onclick="deleteEmployee()">Delete Selected</button>
    </div>
</div>

<script>
    function navigateTo(sectionId) {
        // Add navigation logic as before
    }

    function editEmployee(employeeId) {
        // Add logic to navigate to the edit page with the selected employeeId
        window.location.href = 'EditEmployee.jsp';
    }



    function selectAll() {
        // Add logic to select all employees in the list
        console.log('Select All');
    }

    function clearSelection() {
        // Add logic to clear the selection of all employees
        console.log('Clear Selection');
    }

    function deleteEmployee() {
        // Add logic to delete the employee data
        var confirmDelete = confirm('Are you sure you want to delete this employee?');

        if (confirmDelete) {
            // Perform the deletion (replace with actual deletion logic)
            console.log('Employee deleted successfully!');
            // Display a success message
            alert('Employee deleted successfully!');

            // After deletion, you may want to hide the edit form and show the employee list
            cancelEdit();
        }
    }
</script>

</body>
</html>
