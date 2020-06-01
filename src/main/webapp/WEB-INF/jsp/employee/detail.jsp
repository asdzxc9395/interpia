<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../default/left.jsp" />

		
			<table width="640">
			<form action='update' method='post' enctype='multipart/form-data'>
				 <input name='userNo' type='hidden' value='${employee.userNo}'><br>
  <tr> 
    <td width="640"></td>	
  </tr>
  <tr> 
    <td height="25"><img src="image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원 기본 정보 등록</strong></td>
  </tr>
  <tr> 
    <td><table width="640" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="15" align="left"><table width="640" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td><table width="640" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td height="2" background="image/bar_bg1.gif"></td>
                    </tr>
                    <tr align="center" bgcolor="F8F8F8"> 
                      <td height="26" align="center" bgcolor="#E4EBF1" style="padding-right:10"><table width="600" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td align="center"><strong>학력 - 교육정보 | 자격증 - 보유기술정보 | 프로젝트정보 |경력정보| 근무정보</strong></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr align="center" bgcolor="F8F8F8"> 
                      <td height="3" align="right" background="image/bar_bg1.gif"></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="6" align="center" valign="top"></td>
        </tr>
        <tr>
          <td height="7" align="center" valign="top"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td height="135" align="center" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="144" height="119" align="center"><table width="100" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td height="112" bgcolor="#CCCCCC"><table width="100" border="0" cellspacing="1" cellpadding="0">
                                  <tr>
                                    <td height="110" bgcolor="#FFFFFF"><img src='${pageContext.servletContext.contextPath}/upload/employee/${employee.image}' height='112'></td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table></td>
                          <td width="456"><table width="423" border="0" cellspacing="2" cellpadding="0">
                            <tr>
                              <td width="107" height="26" align="right"><strong>한글 이름 :</strong></td>
                              <td width="310" height="26">
                                <input type="text" name="korName" value='${employee.korName}'>
                              </td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>영문 이름 :</strong></td>
                              <td height="26"><input type="text" name="engName" value='${employee.engName}'></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>한문 이름:</strong></td>
                              <td height="26"><input type="text" name="chiName" value='${employee.chiName}'></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>주민등록번호:</strong></td>
                              <td height="26"><input name="residentNo" type="text" size="15" value='${employee.residentNo}'></td>
                            </tr>
                          </table></td>
                        </tr>
                      </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="7" align="center" valign="top"></td>
        </tr>
        <tr> 
          <td height="13" align="center"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="526" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="130" align="center"><strong>사진 파일명 :</strong></td>
                            <td width="268"><input name="image" type="file" size="40"></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>생년월일 :</strong></td>
                            <td width="391"><input name="birthDate" type="Date" size="10" value='${employee.birthDate}'>
                              </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>성별 : </strong></td>
                            <td width="391"> 
                            <input type="radio" name="sex" value="0" checked="checked"> 남자 
                            <input type="radio" name="sex" value="1"> 여자
                              </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>결혼유무 :</strong></td>
                            <td width="391"> 
                            <input type="radio" name="martialStatus" value="0" checked="checked"> 기혼 
                              <input type="radio" name="martialStatus" value="1"> 미혼
                              </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>년차 :</strong></td>
                            <td width="392"><input name="year" type="number" size="10" value='${employee.year}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="130" align="right"><strong>급여지급유형 :</strong></td>
                            <td width="392"> <select name="payment">
                                <option value="0" selected="selected">주급</option>
 							   <option value="1">월급</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>희망직무 :</strong></td>
                            <td width="392"> <select name="typeJob">
                                <option value="0" selected="selected">SI</option>
 							   <option value="1">SM</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>입사유형 :</strong></td>
                            <td width="392"> <select name="employmentType">
                                <option value="0" selected="selected">정규직</option>
 							   <option value="1">계약직</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>주소:</strong></td>
                            <td width="392">
                              <input name="adress" type="text" size="40" value='${employee.adress}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>연락처 :</strong></td>
                            <td width="392"><input name="number" type="tel" size="10" value='${employee.number}'></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>이메일:</strong></td>
                            <td width="392"><input name="email" type="email" size="20" value='${employee.email}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>기술등급:</strong></td>
                            <td width="392"><input name="techGrade" type="text" size="20" value='${employee.techGrade}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>주량:</strong></td>
                            <td width="392"><input name="alcohol" type="text" size="20" value='${employee.alcohol}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="3" align="center"></td>
        </tr>
        <tr>
          <td height="3" align="center">
          <table width="107" border="0" cellpadding="1" cellspacing="1">
           		 <p>
					<button>수정</button>
					<a href='list'>취소</a>
				</p>
          </table>         
          </td>
        </tr>
      </table></td>
  </tr>
</table>
			</form>
			</div>
			</body>
			</html>