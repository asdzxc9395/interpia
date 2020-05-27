<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>사원조회</title>
<h1>사원조회</h1>
</head>
<body>
<a href="form">등록</a>
<table border='1'>
  <tr>
    <th>이름</th>
    <th>주민등록번호</th>
    <th>성별</th>
    <th>기술등급</th>
    <th>상태</th>
    <th>근무</th>
  </tr>
  
<c:forEach items="${list}" var="item">
  <tr>
    <td>${item.korName}</td> 
    <td><a href='detail?no=${item.userNo}'>${item.residentNo}</a></td> 
    <td>${item.sex}</td> 
    <td>${item.techGrade}</td> 
    <td>${item.paymentType}</td>
    <td>${item.employmentType}</td>
  </tr>
</c:forEach>
</table>

<form action='search' method='get'>
검색어: <input name='keyword' type='text'>
<button>검색</button>
</form>
</body>
</html>