<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
</head>
<body>
<table border='1'>
				<tr>
					<th><input type="checkbox"></th>
					<th>이름</th>
					<th>주민등록번호</th>
					<th>성별</th>
					<th>기술등급</th>
					<th>상태</th>
					<th>근무</th>
				</tr>
				<c:forEach var="item" items="${list}" >
					<tr>
						<td id="box">
							<div class="checkBox">
								<input type="checkbox" name="chBox" class="chBox"
									data-="${item.user_no}" />
								<script>
									$(".chBox").click(function() {
										$("#allCheck").prop("checked", false);
									});
								</script>
							</div>
						</td>
						<td>${item.kor_name}</td>
						<td><a href='detail?no=${item.user_no}'>${item.resident_no}</a></td>
						<td>${item.sex}</td>
						<td>${item.tech_grade}</td>
						<td>${item.payment_type}</td>
						<td>${item.employment_type}</td>
					</tr>
				</c:forEach>
			</table>
 			<table>
		<tr>
		    <c:if test="${pageMaker.prev}">
		    <td>
		        <a href='<c:url value="/app/employee/pageList?page=${pageMaker.startPage-1}"/>'>&laquo;</a>
		    </td>
		    </c:if>
		    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
		    <td>
		        <a href='<c:url value="/app/employee/pageList?page=${idx}"/>'>${idx}</a>
		    </td>
		    </c:forEach>
		    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		    <td>
		        <a href='<c:url value="/app/employee/pageList?page=${pageMaker.endPage+1}"/>'>&raquo;</a>
		    </td>
		    </c:if>
		</tr>
	</table>
			 
</body>
</html>