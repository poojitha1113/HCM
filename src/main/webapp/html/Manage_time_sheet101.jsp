<%@ page import="java.util.List" %>
<%@ page import="com.example.oct_11.Employee" %>
<%@ page import="com.example.oct_11.TimeSheet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5; /* Light gray background */
        }

        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        li {
            background-color: #fff;
            margin: 10px;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px; /* Set a fixed width for better alignment */
            text-align: center;
            transition: transform 0.3s; /* Add a smooth transition effect */
        }

        li:hover {
            transform: scale(1.05); /* Enlarge the card on hover */
        }

        h2 {
            text-align: center;
            color: #333; /* Dark gray text color */
            margin-top: 20px;
        }

        h3 {
            margin-bottom: 10px;
            color: #009688; /* Teal heading color */
        }

        h4 {
            color: #555; /* Dark gray heading color */
        }

        .options {
            display: flex;
            justify-content: space-around;
            margin-top: 10px;
        }

        button {
            background-color: #009688; /* Teal button color */
            color: #fff; /* White text color */
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s; /* Add a smooth transition effect */
        }

        button:hover {
            background-color: #00796b; /* Darker teal on hover */
        }
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

        /* Additional styles for edit mode */
        .edit-mode {
            background-color: #fff8dc; /* Light yellow background for edit mode */
        }
        nav {
            background-color: #26a69a; /* Teal navigation bar color */
            overflow: hidden;
        }

        .edit-input {
            width: 80px; /* Adjust as needed */
        }

        .save-button {
            background-color: #4caf50; /* Green Save button */
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Style for the home logo */
        .home-logo {
            display: block;
            margin: 10px;
        }
    </style>
    <title>Manage Time Sheet</title>
</head>
<body>
<a href="Employee_Success_Login101.html" class="home-logo">
  HomePage
</a>

<h2>Manage Time Sheet</h2>
<ul>
    <li>
        <h3>1 - John Doe</h3>
        <h4>2023 Time Sheet</h4>
        <ul>
            <li>
                Jan, 2023
                <div class="options">
                    <button onclick="deleteTimeSheet(1)">Create</button>
                    <button onclick="viewTimeSheet(1)">View</button>
                    <button onclick="editTimeSheet(1)">Edit</button>
                </div>
            </li>
            <li>
                Feb, 2023
                <div class="options">
                    <button onclick="deleteTimeSheet(2)">Create</button>
                    <button onclick="viewTimeSheet(2)">View</button>
                    <button onclick="editTimeSheet(2)">Edit</button>
                </div>
            </li>
        </ul>
    </li>
</ul>

<script>
    function viewTimeSheet(timeSheetId) {
        // Add logic to view time sheet details
        window.location.href = 'view_timesheet_employee101.jsp';
    }

    function editTimeSheet(timeSheetId) {
        // Add logic to edit time sheet
        window.location.href = 'Edit_timesheet_Employee_101.jsp';
    }

    function deleteTimeSheet(timeSheetId) {
        // Add logic to delete time sheet
        window.location.href = 'createTimecard.jsp';
    }

</script>
</body>
</html>
