<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/interpia/script/jquery.min.js"></script>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0" leftmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td height="25"><img src="../../image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원조회</strong></td>
  </tr>
  <tr> 
    <td><table width="640" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="30" align="right"><select name="select" class="INPUT">
              <option selected>::::: 이름 :::::</option>
              <option selected>::::: 성별 :::::</option>
              <option selected>::::: 기술등급 :::::</option>
            </select> <input name="textfield" type="text" class="INPUT"> <a href="#"><img src="../../image/search.gif" width="49" height="18" border="0" align="absmiddle"></a></td>
        </tr>
        <tr> 
          <td><table width="640" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="3" background="../../image/bar_bg1.gif"></td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10">
                <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">삭제</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">인사기록카드</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">경력정보</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">근무정보</a> </td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="1" align="right" bgcolor="B1B1B1"></td>
              </tr>
              <tr> 
                <td>
				<table width="640" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <th width="35" height="20" align="center">
                      <div class="allCheck">
							<input type="checkbox" name="allCheck" id="allCheck" /> <label
								for="allCheck"></label>
							<script>
								$("#allCheck").click(function() {
									var chk = $("#allCheck").prop("checked");
									if (chk) {
										$(".chBox").prop("checked", true);
									} else {
										$(".chBox").prop("checked", false);
									}
								});
							</script>
						</div></th>
                      <th width="85" align="center">이름</th>
                      <th width="153" align="center">주민등록번호</th>
                      <th width="91" align="center">성별</th>
                      <th width="91" align="center">기술등급</th>
                      <th width="91" align="center">상태</th>
                      <th width="94" align="center">근무</th>
                    </tr>
                    <tr> 
                      <td colspan="7" background="../../image/line_bg.gif"></td>
                    </tr>
                    <c:forEach var="item" items="${list}">
					<tr>
						<td height="20" align="center">
							<div class="checkBox">
								<input type="checkbox" name="chBox" class="chBox" data-userNum="${item.user_no}"/>
								<script>
									$(".chBox").click(function() {
										$("#allCheck").prop("checked", false);
									});
								</script>
							</div>
						</td>
						<td align="center">${item.kor_name}</td>
						<td align="center"><a href='detail?no=${item.user_no}'>${item.resident_no}</a></td>
						<td align="center">${item.sex}</td>
						<td align="center">${item.tech_grade}</td>
						<td align="center">${item.payment_type}</td>
						<td align="center">${item.employment_type}</td>
					</tr>
				</c:forEach>
                    <tr class="pagination modal"> 
                      <td height="35" colspan="7" align="center" style="padding-bottom:3">
                      <a href="<c:url value="/app/employee/list?page=${pageMaker.startPage-1}"/>">
                      <img src="../../image/prev.gif" width="22" height="15" border="0" align="absmiddle">
                      </a>&nbsp;
                      
	                      <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<a href='<c:url value="/app/employee/list?page=${idx}"/>' class="num">${idx}</a>&nbsp; 
						  </c:forEach>
					
                        <a href='<c:url value="/app/employee/list?page=${pageMaker.endPage+1}"/>'>
                        <img src="../../image/next_.gif" width="22" height="15" border="0" align="absmiddle">
                        </a>
                       
                        </td>
                    </tr>
                  </table>
				  </td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="1" align="right" bgcolor="B1B1B1"></td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">수정</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">인사기록카드</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">경력정보</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">근무정보</a> </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="3" background="../../image/bar_bg1.gif"></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
