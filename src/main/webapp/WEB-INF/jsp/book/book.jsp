<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>
    book list Mysql Connection Test
</h1>
<table border="1">
    <tr align="center">
        <td width="100px">아이디</td>
        <td width="100px">책이름</td>           
    </tr>
<c:forEach var="book" items="${books}">
    <tr align="center">
        <td>${book.id}</td>
        <td>${book.pw}</td>                
    </tr>
</c:forEach>
</table>
</body>
</html>