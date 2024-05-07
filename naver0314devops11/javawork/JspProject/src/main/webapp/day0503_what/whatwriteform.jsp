<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form with Cloud Background</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        background-image: url('../image/clouds.jpg'); /* Adjust this path if necessary */
        background-size: cover;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .table-container {
        width: 600px;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
        border-radius: 15px;
        padding: 20px;
    }
</style>
</head>
<body>
<div class="table-container">
    <form action="whataction.jsp" method="post" enctype="multipart/form-data">
        <table class="table table-bordered">
        <caption align="top"><b>글쓰기</b></caption>
            <tr>
                <th width="100">제목</th>
                <td>
                    <input type="text" name="title" class="form-control" required="required">
                </td>
            </tr>
            <tr>
                <th width="100">사진</th>
                <td>
                    <input type="file" name="upload" onchange="preview(this)" style="width: 200px;">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea style="width: 100%;height:100px;" name="content" class="form-control" required="required"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <button type="submit" class="btn btn-secondary">작성</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>