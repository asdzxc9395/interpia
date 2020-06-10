<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../default/sidebar.jsp" />
 
  <form action='update' method='post' enctype='multipart/form-data' >
 <input name='userNo' type='hidden' value='${employee.userNo}'>
<div id="contents">
		<div id="content">
			<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="640">&nbsp;</td>
  </tr>
  <tr> 
    <td height="25"><img src="../../image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원 기본 정보 입력</strong></td>
  </tr>
  <tr> 
    <td><table width="640" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="15" align="left"><table width="640" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td><table width="640" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td height="2" background="../../image/bar_bg1.gif"></td>
                    </tr>
                    <tr align="center" bgcolor="F8F8F8"> 
                      <td height="26" align="center" bgcolor="#E4EBF1" style="padding-right:10"><table width="600" border="0" cellspacing="0" cellpadding="0">
                           <tr> 
                            <td align="center"><strong>
                            <a href="../employee/detail?no=${employee.userNo}">기본정보</a>
                             | <a href="../education/detail?no=${employee.userNo}">교육정보</a>
                             | <a href="../certificate/detail?no=${employee.userNo}">자격증. 보유기술정보 </a>
                             |<a href="../project/detail?no=${employee.userNo}">프로젝트 정보 </a>
                             | <a href="../career/detail?no=${employee.userNo}">경력정보</a>
                             | <a href="../working/detail?no=${employee.userNo}">근무정보</a>
                              </strong></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr align="center" bgcolor="F8F8F8"> 
                      <td height="3" align="right" background="../../image/bar_bg1.gif"></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="6" align="center" valign="top">&nbsp;</td>
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
                                    <td height="110" bgcolor="#FFFFFF">
                                    <img src='${pageContext.servletContext.contextPath}/upload/employee/${employee.image}' height='112'></td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table></td>
                          <td width="456"><table width="423" border="0" cellspacing="2" cellpadding="0">
                            <tr>
                              <td height="2" colspan="2"></td>
                              </tr>
                            <tr>
                              <td width="107" height="26" align="right"><strong>한글이름 :</strong>&nbsp;</td>
                              <td width="310" height="26">
                                <input type="text" name="korName" value='${employee.korName}'>
                              </td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>영문이름 :&nbsp;</strong></td>
                              <td height="26"><input type="text" name="engName" value='${employee.engName}'></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>한문이름:</strong>&nbsp;</td>
                              <td height="26"><input type="text" name="chiName" value='${employee.chiName}'></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>주민등록번호 :</strong>&nbsp;</td>
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
          <td height="7" align="center" valign="top">&nbsp;</td>
        </tr>
        <tr> 
          <td height="13" align="center"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="526" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>사진파일명 :&nbsp;</strong></td>
                            <td width="268">< <input name="imageFile" type="file" size="40">	</td>
                            <td width="146"></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                             <td width="102" align="right"><strong>생년월일 :&nbsp;</strong></td>
                            <td width="391"><input name="birthDate" type="date" size="10"  value='${employee.birthDate}'>
                              <!-- ( 
                              <input type="radio" name="radiobutton" value="radiobutton">
                              양력 
                              <input type="radio" name="radiobutton" value="radiobutton">
                              음력 ) -->
                              </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>성별 :&nbsp; </strong></td>
                            <td width="391"> 
                            	<input type="radio" name="sex" value="남자" checked="checked">
                              남자 
                              	<input type="radio" name="sex" value="여자">
                              여자
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>결혼유무 :&nbsp;</strong></td>
                            <td width="391"> 
                            <input type="radio" name="martialStatus" value="기혼" checked="checked">
                              기혼 
                            <input type="radio" name="martialStatus" value="미혼">
                              미혼
                           	</td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>년차 :&nbsp;</strong></td>
                            <td width="392"><input name="year" type="number" size="10" value='${employee.year}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>급여 지급유형 :&nbsp;</strong></td>
                            <td width="392"> <select name="paymentType">
                                <option value="주급" selected="selected">주급</option>
 							   <option value="월급">월급</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>희망직무 :&nbsp;</strong></td>
                            <td width="392"> <select name="typeJob">
                                <option value="SI">SI</option>
 							   <option value="SM">SM</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>입사유형:&nbsp;</strong></td>
                            <td width="392"> <select name="employmentType">
                                <option value="정규직">정규직</option>
 							   <option value="계약직">계약직</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>주소:&nbsp;</strong></td>
                            <td width="392"><input name="adress" type="text" size="20" value='${employee.adress}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>연락처:&nbsp;</strong></td>
                            <td width="392"><input name="number" type="tel" size="20" value='${employee.number}'>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>이메일:&nbsp;</strong></td>
                            <td width="392"><input name="email" type="email" size="20" value='${employee.email}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>기술등급:&nbsp;</strong></td>
                            <td width="392"><input name="techGrade" type="text" size="20" value='${employee.techGrade}'> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>주량:&nbsp;</strong></td>
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
          <td height="3" align="center">&nbsp;</td>
        </tr>
        <tr>
          <td height="3" align="center"><table width="107" border="0" cellpadding="1" cellspacing="1">
            <tr>
             <td width="49">
			<input type="submit"  value="수정" src="../../image/bt_remove.gif"  width="49" height="18">
              </td>
              <td width="51">
			<input type="reset" value="취소" src="../../image/bt_remove.gif"  width="49" height="18"  onClick="location.href='list.jsp'">
              </td>
            </tr>
          </table>            </td>
        </tr>
        <tr> 
          <td height="7" align="right">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
		</div>
	</div>
  </form>
</div>
</body>
</html>
