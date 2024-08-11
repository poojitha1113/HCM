<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success Page</title>
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
    </style>
</head>
<body>
<header>
    <h1>Welcome, <%= session.getAttribute("employeeName") %>!</h1>
</header>

<nav>
    <button onclick="navigateTo('createEmployee')">Create Employee</button>
    <form action="/employee-info">
        <button type="submit" value="Submit">Employee's Info</button></form>

    <button onclick="navigateTo('manageTimesheet')">Manage Timesheet</button>
    <br>
    <button onclick="navigateTo('calculatePayroll')">Calculate Payroll</button>


    <!-- Menu options -->
     <div class="menu">
        <button onclick="navigateTo('logout')">Logout</button>
    </div>
</nav>

<img src="../img/IGQf.gif" height="411" width="1280">
<script>
    function navigateTo(sectionId) {switch (sectionId) {
        case 'createEmployee':
            window.location.href = 'CreateEmployee.jsp'; // Replace with your actual file name
            break;
        case 'calculatePayroll':
            window.location.href = 'Settings.html'; // Replace with your actual file name
            break;
        case 'manageTimesheet':
            window.location.href = 'Manage_time_sheet.jsp'; // Replace with your actual file name
            break;
        case 'settings':
            window.location.href = 'Settings.html'; // Replace with your actual file name
            break;
        case 'logout':
            window.location.href = '../html/Login_Home.html'; // Replace with your actual file name or a logout endpoint
            break;
        default:
            console.log('Invalid sectionId:', sectionId);
        }

    }

        // Add logic to perform logout, such as redirecting to a logout servlet or clearing session data
        // For example, you can use window.location.href to navigate to a logout servlet or pag
</script>
</body>
</html>
