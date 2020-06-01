<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../default/sidebar.jsp" />
<br>
<div class="main_content">
	<div class="header">사원등록</div>
	<div class="info">
		<div>
		
<div id="user">
<form action='add' method='post' enctype='multipart/form-data'>
사진: <input name='image' type='file'><br>
<div id="name">
한글 이름: <input name='korName' type='text'><br>
영문 이름: <input name='engName' type='text'><br>
한문 이름: <input name='chiName' type='text'><br>
</div>
주민 번호: <input name='residentNo' type='text'><br>
결혼 유무: <input name='martialStatus' type='number'><br>
생년월일: <input name='birthDate' type='Date'><br>
성별: <input name='sex' type='number'><br>
년차: <input name='year' type='number'><br>
급여 지급 유형: <input name='paymentType' type='number'><br>
희망 직무: <input name='typeJob' type='number'><br>
입사 유형: <input name='employmentType' type='number'><br>
주소: <input name='adress' type='text'><br>
연락처: <input name='number' type='tel'><br>
이메일: <input name='email' type='email'><br>
기술등급: <input name='techGrade' type='text'><br>
주량: <input name='alcohol' type='text'><br>
<button>등록</button>
</form>
</div>


</body>
</html>