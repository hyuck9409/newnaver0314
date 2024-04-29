<%@page import="data.dao.ShopDao"%>
<%@page import="data.dto.ShopDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String sname=request.getParameter("sname");
    String scolor=request.getParameter("scolor");
    String sphoto=request.getParameter("sphoto");
    int sprice=Integer.parseInt(request.getParameter("sprice"));
    int scount=Integer.parseInt(request.getParameter("scount"));
    
    ShopDto dto=new ShopDto(sname,sprice,scount,scolor,sphoto);
    
    ShopDao dao=new ShopDao();
    
    dao.insertShop(dto);
    
    response.sendRedirect("shoplist.jsp");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>

</style>
</head>
<body>

</body>
</html>
