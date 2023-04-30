<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <link rel="stylesheet" href="CSS/signup.css">
    <!--BOOTSTRAP LINK-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
    <form method="post" action="UserpageController">

        <div class="signup-form bg-dark">

            <div class="Signup-head bg-success">
                <h1>SignUp</h1>
            </div>

            <label class="text-white" style="margin-left:10px;">First Name</label>
            <input type="text" name="fname" class="tarikh bg-dark text-white" required="required">
          
            <label class="text-white" style="margin-left:10px;">Last Name</label>
            <input type="text" name="lname"class="tarikh bg-dark text-white" required="required"><br>
          
            <label class="text-white" style="margin-left:10px;">Contact No</label>
            <input type="text"name="contactno" class="tarikh bg-dark text-white" required="required">
          
            <label class="text-white" style="margin-left:10px;">Address</label>
            <input type="text"name="address" class="tarikh bg-dark text-white" required="required"><br>
            
            
            <label class="text-white" style="margin-left:10px;">Bithdate</label>
            <input type="date" name="birthdate"class="tarikh bg-dark text-white" required="required">
          
            <label class="text-white" style="margin-left:10px;">Email</label>
            <input type="email" name="email"class="tarikh bg-dark text-white" required="required"><br>
        
           
            <label class="text-white" style="margin-left:10px;"> password</label>
            <input type="password"name="password" class="tarikh bg-dark text-white" required="required"><br>
        
        
            <label class="text-white" style="margin-left:10px;">Confirm password</label>
            <input type="password"name="confirm_password" class="tarikh bg-dark text-white"   
                    required="required"><br>
        

            
            <input type="submit" value="signup" name="action" class="submit-btn bg-success ">
      		<a href="UserLoginpage.jsp"> Login Page </a>
        </div>
    </form>
</body>
</html>