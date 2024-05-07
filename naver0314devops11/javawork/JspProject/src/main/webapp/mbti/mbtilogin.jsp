<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        background-image: url('../image/clouds.jpg'); /* Adjust this path if necessary */
        background-size: cover; /* Cover the entire page */
        background-attachment: fixed; /* Fix background during scrolling */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .image-container {
        position: relative;
        width: 400px; /* Set the width of the container */
        height: 250px; /* Set the height of the container */
    }
    img {
        width: 100%;
        height: 100%;
    }
    .login-form {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 8px;
    }
    .login-form input[type="text"],
    .login-form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .login-form button {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    
</style>
</head>
<body>
    <div class="image-container">
        <img src="../image/postit.jpg" alt="Your Image">
        <div class="login-form">
            <h3>로그인</h3>
            <form action="./mbtilist.jsp" method="post">
                <input type="text" name="id" placeholder="ID" required>
                <input type="password" name="pw" placeholder="Password" required>
                <input type="text" name="mymbti" placeholder="MBTI" required>
                <button type="submit" class="btn btn-success" style="width:100%;">Login</button>
            </form>
            
        </div>
        <div>
            
            </div>
    </div>
    
</body>
</html>