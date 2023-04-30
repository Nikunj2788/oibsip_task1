<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signin Form</title>
    <link rel="stylesheet" href="CSS/login.css">
    <!--BOOTSTRAP LINK-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
    <form action="UserpageController" method="post">

        <div class="signup-form bg-dark">

            <div class="Signup-head bg-success">
                <h1>Login</h1>
            </div>

            <label class="text-white" style="margin-left:10px;">Email</label>
            <input type="email" name="email" class="tarikh bg-dark text-white">
        
           
            <label class="text-white" style="margin-left:10px;">Password</label>
            <input type="password" name="password" class="tarikh bg-dark text-white">
        
        

            
            <input type="submit" value="login" name="action" class="submit-btn bg-success ">
            <a href="UserRegistration.jsp"> Registration page </a>
        </div>
        
    </form>
</body>
</html>