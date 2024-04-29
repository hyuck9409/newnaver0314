<%@page import="data.dao.ShopDao"%>
<%@page import="data.dto.ShopDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 엔코딩
	request.setCharacterEncoding("utf-8");
	//2. 6개의 상품데이타 읽기
	String sname=request.getParameter("sname");
	String scolor=request.getParameter("scolor");
	String sphoto=request.getParameter("sphoto");
	int sprice=Integer.parseInt(request.getParameter("sprice"));
	int scount=Integer.parseInt(request.getParameter("scount"));
		
	//3. dto 에 넣기-setter 로 넣기(총 6개)
	
	//4. dao 선언
	ShopDao dao=new ShopDao();
	
	//6. updtate 메서드 호출
	
	
	//6. shoplist.jsp 로 이동
	response.sendRedirect("shoplist.jsp");//이동,url 주소 바뀜
	
%>