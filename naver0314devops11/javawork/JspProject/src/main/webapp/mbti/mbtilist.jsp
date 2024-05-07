<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        background-image: url('../image/clouds.jpg'); /* Adjust this path if necessary */
        background-size: cover; /* Cover the entire page */
        background-attachment: fixed; /* Fix background during scrolling */
    }
    table {
        width: 80%; /* Width of the table */
        margin: 50px auto; /* Margin top and bottom 50px, auto on the sides for center alignment */
        border-collapse: separate; /* Borders of each cell separated */
        border-spacing: 10px; /* Space between cells */
    }
    td {
        background-color: #f8f8f8; /* Cell background color */
        border: 2px solid #cccccc; /* Cell border */
        text-align: center; /* Center text alignment */
        padding: 15px; /* Padding inside cells */
        border-radius: 15px; /* Rounded corners of cells */
        box-shadow: 0 2px 5px rgba(0,0,0,0.1); /* Shadow effect for 3D feel */
    }
    a {
        text-decoration: none; /* No underline for links */
        color: #333; /* Link color */
        font-weight: bold; /* Font weight */
    }
    a:hover {
        color: #007BFF; /* Color change on hover */
    }
</style>
</head>
<body>
<h2 style="text-align:center;">MBTI 게시판</h2>
<table align="center">
    <% 
    String[] mbtiTypes = {"ISTJ", "ISFJ", "INFJ", "INTJ", "ISTP", "ISFP", "INFP", "INTP",
                          "ESTP", "ESFP", "ENFP", "ENTP", "ESTJ", "ESFJ", "ENFJ", "ENTJ"};
    int count = 0; 
    %>
    <tr>
    <% for (int i = 0; i < mbtiTypes.length; i++) { %>
        <td><a href="mbtiBoard.jsp?mbti=<%= mbtiTypes[i] %>"><%= mbtiTypes[i] %></a></td>
        <% count++;
        if (count % 4 == 0 && count < mbtiTypes.length) { %>
            </tr><tr>
        <% }
    } %>
    </tr>
</table>
</body>
</html>