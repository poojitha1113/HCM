<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crete Employee Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light Gray background */
            margin: 0;
            padding: 0;
            color: #333; /* Dark Gray text color */
        }

        header {
            background-color: #196f5d; /* Blue header */
            padding: 10px;
            text-align: center;
            color: white;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #999999; /* White background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form {
            display: grid;
            grid-gap: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555; /* Dark Gray */
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc; /* Light Gray border */
            border-radius: 5px;
            margin-bottom: 10px;
        }

        button {
            background-color: #009688; /* Green button */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #27ae60; /* Darker green on hover */
        }

        .section-heading {
            font-size: 1.2em;
            margin-bottom: 10px;
            color: #555; /* Dark Gray */
            border-bottom: 2px solid #ddd; /* Light Gray border */
            padding-bottom: 5px;
        }

        /* Different light colors for each section */
        .basic-info {
            background-color: #196f5d;/*ight Yellow background */
            font-size: 2.2em;
            color: #F3FBF4;
        }
        .logininfo{
            background-color: #196f5d;/*ight Yellow background */
            font-size: 2.2em;
            color: #F3FBF4;
        }

        .work-info {
            background-color: #196f5d;/*ight Yellow background */
            font-size: 2.2em;
            color: #F3FBF4;
        }

        .earnings {
            background-color: #196f5d;/*ight Yellow background */
            font-size: 2.2em;
            color: #F3FBF4;
        }

        .deductions {
            background-color: #196f5d;/*ight Yellow background */
            font-size: 2.2em;
            color: #F3FBF4;
        }
        .totalsalary{
            background-color: #196f5d;/*ight Yellow background */
            font-size: 2.2em;
            color: #F3FBF4;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #196f5d; /* Blue header */
            padding: 10px;
            color: white;
        }

        .nav-icons {
            font-size: 1.5em;
            cursor: pointer;
        }

        .nav-icons:hover {
            color: #549464; /* Dark Red on hover */
        }
    </style>
</head>
<body>
<nav>
    <div class="nav-icons" onclick="goBack()">&#9665;</div>
    <h1>Employee Information</h1>
    <div class="nav-icons">&#10006;</div>
</nav>
<a href="Success.jsp" class="home-logo">
    HomePage
</a>
<div class="container">
    <form action="/SaveBasicInfoServlet" method="post">
        <div class="section-heading logininfo"> Login- Info</div>
        <label for="EmployeeId">EmployeeId:</label>
        <input type="text" id="EmployeeId" name="EmployeeId" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>


        <div class="section-heading basic-info">Basic Info</div>
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName">

        <label for="dateOfBirth">Date Of Birth:</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth">

        <label for="address">Address:</label>
        <input type="text" id="address" name="address">

        <label for="state">State:</label>
        <input type="text" id="state" name="state">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="mobileNumber">Mobile Number:</label>
        <input type="text" id="mobileNumber" name="mobileNumber">

        <!-- Add other basic info fields -->

        <div class="section-heading work-info">  Work- Info</div>
        <label for="jobTitle">Job Title:</label>
        <input type="text" id="jobTitle" name="jobTitle">

        <label>Date:</label>
        <input type="date" id="DateofJoin" name="DateofJoin">

        <!-- Add other work info fields -->
        <div class="section-heading totalsalary">Total Salary</div>
        <label for="salary">Salary:</label>
        <input type="text" id="salary" name="salary">

        <div class="section-heading earnings">Earnings</div>
        <label for="Basic">Basic:</label>
        <input type="text" id="Basic" name="Basic">
        <label for="HRA">HRA:</label>
        <input type="text" id="HRA" name="HRA">
        <label for="Bonus">Bonus:</label>
        <input type="text" id="Bonus" name="Bonus">
        <label for="Other">Other:</label>
        <input type="text" id="Other" name="Other">
        <!-- Add other earnings fields -->

        <div class="section-heading deductions">Deductions</div>
        <label for="PF">PF</label>
        <input type="text" id="PF" name="PF">
        <label for="StateTax">StateTax</label>
        <input type="text" id="StateTax" name="StateTax">
        <label for="OtherDeducation">Other Deduction</label>
        <input type="text" id="OtherDeducation" name="OtherDeducation">

        <!-- Add other deductions fields -->

        <button type="submit" value="Submit">Save</button>
    </form>
</div>

<script>

    function goBack() {
        // Add logic to go back
        console.log('Going back');
        // You can use window.history.back() to navigate back
    }
</script>
</body>
</html>
