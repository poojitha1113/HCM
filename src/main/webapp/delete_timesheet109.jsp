<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Time Sheet</title>
    <style>
        /* Same styles as before */
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

        .edit-input {
            width: 80px; /* Adjust as needed */
        }

        .action-buttons button {
            margin-right: 5px;
        }

        .delete-button {
            background-color: #f44336; /* Red Delete button */
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .save-button {
            background-color: #4caf50; /* Green Save button */
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        nav {
            background-color: #26a69a; /* Teal navigation bar color */
            overflow: hidden;
        }
    </style>
</head>
<body>
<h2>Employee Time Sheet - January 2023</h2>
<a href="Success.jsp" class="home-logo">
    HomePage
</a>
<nav>
    <button class="back-button" onclick="navigateToMain()">Back to Main</button>
</nav>
<table id="timeSheetTable">
    <thead>
    <tr>
        <th>Employee ID</th>
        <th>Name</th>
        <th>Date</th>
        <th>Time In</th>
        <th>Time Out</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>John Doe</td>
        <td>Jan 1, 2023</td>
        <td>11:00 AM</td>
        <td>6:00 PM</td>
        <td class="action-buttons">
            <button onclick="editRow(this)">Edit</button>
            <button class="delete-button" onclick="deleteRow(this)">Delete</button>
        </td>
    </tr>
    <!-- Add more rows with sample data -->
    <!-- Include some days with missing entries (null or placeholder) -->
    </tbody>
</table>

<script>
    function editRow(button) {
        var row = button.parentNode.parentNode;
        toggleEditMode(row);
    }

    function deleteRow(button) {
        var row = button.parentNode.parentNode;
        row.remove();
    }

    function toggleEditMode(row) {
        row.classList.toggle('edit-mode');

        if (row.classList.contains('edit-mode')) {
            // Change cells to input fields for editing
            var cells = row.getElementsByTagName('td');
            for (var i = 2; i <= 4; i++) {
                var currentValue = cells[i].innerText;
                cells[i].innerHTML = '<input class="edit-input" type="text" value="' + currentValue + '">';
            }

            // Add Save Changes button
            var actionButtonsCell = row.getElementsByClassName('action-buttons')[0];
            actionButtonsCell.innerHTML = '<button class="save-button" onclick="saveChanges(this)">Save Changes</button>';
        } else {
            // Revert back to view mode
            var cells = row.getElementsByTagName('td');
            for (var i = 2; i <= 4; i++) {
                var inputValue = cells[i].getElementsByTagName('input')[0].value;
                cells[i].innerHTML = inputValue;
            }

            // Remove Save Changes button
            var actionButtonsCell = row.getElementsByClassName('action-buttons')[0];
            actionButtonsCell.innerHTML = '<button onclick="editRow(this)">Edit</button>' +
                '<button class="delete-button" onclick="deleteRow(this)">Delete</button>';
        }
    }

    function saveChanges(button) {
        var row = button.parentNode.parentNode;
        toggleEditMode(row);
    }
    // Function to navigate to the main page (success.html)
    function navigateToMain() {
        window.location.href = 'Manage_time_sheet.jsp';
    }
</script>
</body>
</html>
