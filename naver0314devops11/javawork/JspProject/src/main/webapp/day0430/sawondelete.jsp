<%@page import="data.dao.SawonDao"%>
<%@page import="data.dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//shopidx int 타입으로 읽기
	int num=Integer.parseInt(request.getParameter("num"));
	//dao 선언
	SawonDao dao=new SawonDao();
	//delete메서드 호출
	dao.deleteSawon(num);
	//목록 shoplist.jsp 로 이동
	response.sendRedirect("sawonlist.jsp");
%>