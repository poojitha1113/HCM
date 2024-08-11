<!DOCTYPE html>
<html lang="en">
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
<h2>Payroll Calculation</h2>

<form id="payrollForm">
  <label for="month">Select Month:</label>
  <select id="month" name="month">
    <option value="January">January</option>
    <option value="February">February</option>
    <option value="March">March</option>
    <option value="April">April</option>
    <option value="May">May</option>
    <option value="June">June</option>
    <option value="July">July</option>
    <option value="August">August</option>
    <option value="September">September</option>
    <option value="October">October</option>
    <option value="November">November</option>
    <option value="December">December</option>
  </select>

  <input type="button" value="Load" onclick="loadInformation()">
</form>

<div id="result"></div>

<!-- Continue Button -->
<button onClick="navigateTo('continueButton')">Continue</button>


<script>
  function loadInformation() {
    var selectedMonth = document.getElementById('month').value;

    // Fetch data using fetch API (replace with your endpoint)
    fetch('view_timesheet.jsp?month=' + selectedMonth)
            .then(response => response.text())
            .then(data => {
              document.getElementById('result').innerHTML = data;

              // Clear employee details table
              clearEmployeeDetails();
            })
            .catch(error => {
              console.error('Error fetching data:', error);
            });
  }

  function clearEmployeeDetails() {
    // Clear the employee details table
    var employeeTable = document.getElementById('employeeTable');
    if (employeeTable) {
      employeeTable.remove();
    }
  }

  function continueToNextPage() {
    // Fetch the hours worked per day
    fetch('view_timesheet109.jsp') // Update the URL if needed
            .then(response => response.json()) // Assuming you're returning JSON
            .then(hoursWorkedPerDay => {
              // Display the hours worked per day
              displayHoursWorked(hoursWorkedPerDay);
            })
            .catch(error => {
              console.error('Error fetching hours worked:', error);
            });
  }

  function displayHoursWorked(hoursWorkedPerDay) {
    // Create a table to display the hours worked per day
    var table = '<table>';
    table += '<thead><tr><th>Date</th><th>Hours Worked</th></tr></thead>';
    table += '<tbody>';

    hoursWorkedPerDay.forEach(entry => {
      table += '<tr>';
      table += '<td>' + entry[0] + '</td>';
      table += '<td>' + entry[1] + '</td>';
      table += '</tr>';
    });

    table += '</tbody></table>';

    // Display the table
    document.getElementById('result').innerHTML = table;
  }
  function navigateTo(continueButton) {
    // Redirect to the payroll calculation page with the employee ID
    window.location.href = 'payroll_calculation_date.jsp';
  }
</script>
</body>
</html>