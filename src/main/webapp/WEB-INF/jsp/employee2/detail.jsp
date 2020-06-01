<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../default/left.jsp" />
<div class="main_content"></div>
	<div class="header">사원정보</div>
	<div class="info">
		
		<div id="user">
			<form action='update' method='post' enctype='multipart/form-data'>
				<input name='userNo' type='hidden' value='${employee.userNo}'><br>
				<img src='${pageContext.servletContext.contextPath}/upload/employee/${employee.image}' height='100' style="float: left;"
				alt='사 진 '	>
			<div id="name">
				한글 이름: <input name='korName' type='text' value='${employee.korName}'><br>
				영문 이름: <input name='engName' type='text' value='${employee.engName}'><br>
				한문 이름: <input name='chiName' type='text' value='${employee.chiName}'><br>
				주민 번호: <input name='residentNo' type='text' value='${employee.residentNo}'><br> 
			</div>
			<div id="image">
				사진: <input name='imageFile' type='file'>
				생년월일: <input name='birthDate' type='Date' value='${employee.residentNo}'><br>
				결혼 유무: <input name='martialStatus' type='radio' value='0' checked="checked">기혼
						<input name='martialStatus' type='radio' value='1'>미혼<br> 
			</div>
					<div id="year">
				년차: <input name='year' type='number' value='${employee.year}'><br>
				입사 유형: <select name="employmentType">
 							   <option value="0" selected="selected">정규직</option>
 							   <option value="1">계약직</option>
							</select>  <br> 
					</div>
					<div id="payment">
				급여 지급 유형:  <select name="job">
 							   <option value="0" selected="selected">주급</option>
 							   <option value="1">월급</option>
							</select>  
							<br> 
				
					희망 직무: <select name="typeJob">
 							   <option value="0" selected="selected">SI</option>
 							   <option value="1">SM</option>
							</select>  <br>
					</div>
					<div id="adress">
				주소: <input name='adress' type='text' value='${employee.adress}'><br>
					</div>
				<div id="email">
				연락처: <input name='number' type='number' value='${employee.number}'><br>
				</div>
				이메일: <input name='email' type='text' value='${employee.email}'><br>
				<div>
				기술등급: <input name='techGrade' type='text' value='${employee.techGrade}'><br> 
				주량: <input name='alcohol' type='text' value='${employee.alcohol}'><br>
				</div>
				<p>
					<button>수정</button>
					<a href='list'>취소</a>
				</p>
					</div>
			</form>
			</div>
		
			
			</body>
			</html>