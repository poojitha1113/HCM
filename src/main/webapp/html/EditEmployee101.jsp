<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<a href="Employee_Success_Login101.html" class="home-logo">
    HomePage
</a>
<nav>
    <div class="nav-icons" onclick="goBack()">&#9665;</div>
    <h1>Edit John Information</h1>
    <div class="nav-icons">&#10006;</div>
</nav>

<div class="container">
    <form>
        <div class="section-heading logininfo"> Login- Info</div>
        <label type="readonly">EmployeeId:</label>101


        <label for="password">Password:</label>1234
        <input type="password" id="password" name="password">


        <div class="section-heading basic-info">Basic Info</div>
        <label for="firstName">First Name:</label>John
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last Name:</label>Doe
        <input type="text" id="lastName" name="lastName">

        <label for="dateOfBirth">Date Of Birth:</label>13-10-1995
        <input type="date" id="dateOfBirth" name="dateOfBirth">

        <label for="address">Address:</label>San Francisco
        <input type="text" id="address" name="address">

        <label for="state">State:</label>CA
        <input type="text" id="state" name="state">

        <label for="email">Email:</label>bethb@newblend.com
        <input type="email" id="email" name="email" required>

        <label for="mobileNumber">Mobile Number:</label>2023202232
        <input type="text" id="mobileNumber" name="mobileNumber">

        <!-- Add other basic info fields -->

        <div class="section-heading work-info">  Work- Info</div>
        <label for="jobTitle">Job Title:</label>Account Manager
        <input type="text" id="jobTitle" name="jobTitle">

        <label>Date:</label>01-01-2023
        <input type="date" id="DateofJoin" name="DateofJoin">

        <!-- Add other work info fields -->
        <div class="section-heading totalsalary">Total Salary</div>
        <label type="readonly">Salary:</label>50000


        <!-- Add other deductions fields -->

        <button type="submit" value="Submit">Submit the changes</button>
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
