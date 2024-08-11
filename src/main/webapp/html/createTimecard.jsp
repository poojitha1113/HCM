<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Time Card Entry</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #timeCardForm {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        #popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            z-index: 1;
        }
    </style>
</head>
<body>
<div id="timeCardForm">
    <h2>Time Card Entry</h2>
    <form id="entryForm">
        <label for="datepicker">Select Date:</label>
        <input type="text" id="datepicker" name="date" placeholder="Click to select date" required>

        <label for="timeIn">Time In:</label>
        <input type="time" id="timeIn" name="timeIn" required>

        <label for="timeOut">Time Out:</label>
        <input type="time" id="timeOut" name="timeOut" required>

        <button type="button" onclick="saveEntry()">Save</button>
    </form>
</div>

<div id="popup">
    <p>Entry Saved Successfully!</p>
    <button onclick="closePopup()">Close</button>
</div>

<script>
    $( function() {
        $( "#datepicker" ).datepicker();
    } );

    function saveEntry() {
        // You can add your logic to save the entry here
        // For demonstration, showing the popup
        document.getElementById('popup').style.display = 'block';
    }

    function closePopup() {
        document.getElementById('popup').style.display = 'none';
        // Redirect to managetime.jsp after closing the popup
        window.location.href = 'Manage_time_sheet101.jsp'
    }
</script>
</body>
</html>
