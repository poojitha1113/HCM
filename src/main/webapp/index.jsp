<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<title>Employee_Login_Page</title>
<head>
  <title>HCM</title>
  <link rel="stylesheet" href="../css/style.css">
</head>
<body>
  <div class="text_and_image">
    <div class="text">
      <p class="header-2" style="font-size: xx-large" >  Comprehensive System, for Managing  <font color="#008b8b">Human Resources and Calculating Payroll </font> </p>
      <pre class="font"><!--pre formated it add the space between the lines-->
    Experience unparalleled efficiency, productivity, and growth. Our
    modern ERP solution empowers your business with advanced
    features, customizable workflows, and real-time insights for strategic
    decision-making.
     </pre>
        <nav>
        &nbsp <!--form action="/login" method="post"--> <button onclick="navigateTo('EmployerLogin')" class="button" style="background: #009688">Employer Login </button>
        <button onclick="navigateTo('EmployeeLogin')" class="button" style="background: #009688"> Employee Login </button><!--/form-->
        </nav>
    </div>

      <div class="image">
          <image  src="../img/happy-employees-1.jpg" height="425" width="725" ></image>
        </div>

      </div>
        <br>
        <hr>
        <!--span is inline container-->
        <!--block line container-->
<script>

    function navigateTo(sectionId) {switch (sectionId) {

        case 'EmployerLogin':
            window.location.href = '../html/Login_Home.html';
            break;
        case 'EmployeeLogin':
            window.location.href = 'EmployeeLogin.jsp';
            break;
    }}
</script>
</body>
</html>