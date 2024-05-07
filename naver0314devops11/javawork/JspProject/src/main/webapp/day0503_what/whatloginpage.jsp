<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
    body{
    background-image: url('../image/clouds.jpg'); /* 배경 이미지를 구름 사진으로 설정 */
    background-size: cover; /* 이미지가 화면을 꽉 채우도록 설정 */
    background-position: center; /* 이미지가 화면 중앙에 위치하도록 설정 */
    background-repeat: no-repeat; /* 이미지 반복 없음 */
    background-attachment: fixed; /* 스크롤 시 이미지가 고정되도록 설정 */
}
        .login-container {
            position: relative;
            text-align: center;
            margin-top: 20vh;
            
        }

        .login-form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
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
            transition: background-color 0.3s;
        }

        .login-form button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="../image/postit.jpg" alt="Your Image" width="400"
        background-color: rgba(255, 255, 255, 0.5)>
        <div class="login-form">
            <h3>로그인</h3>
            <form action="./whatmbtilist.jsp" method="post">
                <div style="margin-bottom: 10px;">
                    <input type="text" name="username" placeholder="ID" required>
                </div>
                <div style="margin-bottom: 10px;">
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <div>
                    <button type="submit" class="btn btn-info">Login</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>