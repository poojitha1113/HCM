<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <style>
        body{
            background-image:url('./img/Abstract1.jpg');
        }
    </style>
</head>
<body>
<form action="/EmployeeLogin" method="post">
    <div class="imgcontainer">
        <img src="../img/default-avatar-profile-icon-social-media-user-photo-in-flat-style-vector.jpg" class="avatar">
    </div>
    <div class="container">
        <label ><b>EmployeeId</b></label>
        <input type="text" placeholder="Enter EmployeeId" name="EmployeeId" required>

        <label ><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit" value="Submit">Login</button>
    </div>
</form>
<!--   <label>
       <input type="checkbox" checked="checked" name="remember"> Remember me
   </label>
</div>
<div class="container" style="background-color:#f1f1f1">
   <button type="button" class="cancelbtn">Cancel</button>
   <span class="psw">Forgot <a href="#">password?</a></span>
</div>-->

</body>
</html>