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
    </style>
</head>
<body>
<h2>Employee Time Sheet - January 2023</h2>
<a href="Success.jsp" class="home-logo">
    HomePage
</a>
<nav>
    <button class="back-button" onclick="navigateToMain()">Save and Submit the changes</button>
</nav>
<table id="timeSheetTable">
    <thead>
    <tr>
        <th>Date</th>
        <th>Time In</th>
        <th>Time Out</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Jan 1, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td>present</td>
        <td><button onclick="editRow(this)">Edit</button></td>
    </tr>
    <tr>
        <td>Jan 2, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 3, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 4, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 5, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 6, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 7, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 8, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 9, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 10, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 11, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 12, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 13, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 14, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 15, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 16, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 17, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 18, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 19, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 20, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 21, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 22, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 23, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 23, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 25, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 26, 2023</td>
        <td></td>
        <td></td>
        <td> Weekend </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>

    <tr>
        <td>Jan 27, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 28, 2023</td>
        <td></td>
        <td></td>
        <td> absent </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 29, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 30, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <tr>
        <td>Jan 31, 2023</td>
        <td>09:00 AM</td>
        <td>18:00 PM</td>
        <td> present </td>
        <td><button onclick="editRow(this)">Edit</button></td></tr>
    <!-- Add more rows with sample data -->
    </tbody>
</table>

<script>
    function editRow(button) {
        var row = button.parentNode.parentNode;
        toggleEditMode(row);
    }

    function toggleEditMode(row) {
        row.classList.toggle('edit-mode');

        if (row.classList.contains('edit-mode')) {
            // Change cells to input fields for editing
            var cells = row.getElementsByTagName('td');
            for (var i = 1; i <= 3; i++) {
                var currentValue = cells[i].innerText;
                cells[i].innerHTML = '<input class="edit-input" type="text" value="' + currentValue + '">';
            }

            // Add Save Changes button
            var saveButtonCell = row.getElementsByTagName('td')[4];
            saveButtonCell.innerHTML = '<button class="save-button" onclick="saveChanges(this)">Save Changes</button>';
        } else {
            // Revert back to view mode
            var cells = row.getElementsByTagName('td');
            for (var i = 1; i <= 3; i++) {
                var inputValue = cells[i].getElementsByTagName('input')[0].value;
                cells[i].innerHTML = inputValue;
            }

            // Remove Save Changes button
            var saveButtonCell = row.getElementsByTagName('td')[4];
            saveButtonCell.innerHTML = '<button onclick="editRow(this)">Edit</button>';
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
