<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	 JLDEVELOPMENT <br> Kick Off TokenMake HaHa!!!!!  
</h1>
<P>  </P>

<P>  The time on the server is ${serverTime}. </P>

<p>-----------------------------------------------------------------------------------</p>

<P>  Member Data Test </P>
 <table border="1">
    <tr align="center">
        <td width="100px">ID</td>
        <td width="100px">PW</td>           
        <td width="100px">RegDAte</td>
    </tr>
<c:forEach var="outputs" items="${outputs}">
    <tr align="center">
        <td>${outputs.UserID}</td>
        <td>${outputs.PW}</td>   
        <td>${outputs.RegDate}</td>              
    </tr>
</c:forEach>
</table>
<img src="/images/main/main1.jpg" alt="" width="100%" height="100%" />
</body>
</html>
