<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 기본정보 수정</title>
</head>
<body>
<h1>사원 기본정보 수정</h1>
<form action='update' method='post' enctype='multipart/form-data'>
<input name='userNo' type='hidden' value='${employee.userNo}'><br>
<img src='${pageContext.servletContext.contextPath}/upload/employee/${employee.image}' height='80'><br>
사진: <input name='imageFile' type='file'><br>
한글 이름: <input name='korName' type='text' value='${employee.korName}'><br>
영문 이름: <input name='engName' type='text' value='${employee.engName}'><br>
한문 이름: <input name='chiName' type='text' value='${employee.chiName}'><br>
주민 번호: <input name='residentNo' type='text' value='${employee.residentNo}'><br>
결혼 유무: <input name='martialStatus' type='number' value='${employee.martialStatus}'><br>
년차: <input name='birthDate' type='Date' value='${employee.birthDate}'><br>
년차: <input name='year' type='number' value='${employee.year}'><br>
급여 지급 유형: <input name='paymentType' type='number' value='${employee.paymentType}'><br>
희망 직무: <input name='typeJob' type='number' value='${employee.typeJob}'><br>
입사 유형: <input name='employmentType' type='number' value='${employee.employmentType}'><br>
주소: <input name='adress' type='text' value='${employee.adress}'><br>
연락처: <input name='number' type='number' value='${employee.number}'><br>
이메일: <input name='email' type='text' value='${employee.email}'><br>
기술등급: <input name='techGrade' type='text' value='${employee.techGrade}'><br>
주량: <input name='alcohol' type='text' value='${employee.alcohol}'><br>
<p><button>수정</button>
<a href='list'>취소</a></p>
</form>
</body>
</html>