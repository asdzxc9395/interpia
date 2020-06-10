<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../default/sidebar.jsp" />

       <form action='update' method='post'>
  		<input name='userNo' type="hidden"  value='${education.userNo}'>
<div id="contents">
	<div id="content">
		<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="640">&nbsp;</td>
  </tr>
  <tr> 
    <td height="25"><img src="../../image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원 기본 정보 수정</strong></td>
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
                      <td width="97" height="31" align="center" bgcolor="#E4EBF1"><strong>사원명</strong></td>
                      <td width="128" align="center" bgcolor="#E4EBF1"><input type="text" name="korName" value='${employee.korName}' size="15" readonly="readonly"></td>
                      <td width="131" align="center" bgcolor="#E4EBF1"><strong>주민등록번호</strong></td>
                      <td width="239" align="center" bgcolor="#E4EBF1"><input name="residentNo" type="text" size="15" value='${employee.residentNo}' readonly="readonly">
                        </td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="3" align="center" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td height="4" align="left" valign="top"><table width="526" border="0" cellspacing="1" cellpadding="1">
            <tr>
              <td width="16" align="right">&nbsp;</td>
              <td><strong>■ 학력</strong></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="7" align="center" valign="top"><table width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="517" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="109"><strong>
                            <input name="hsName" type="text" size="15" value='${education.hsName}'>
                          </strong></td>
                          <td width="70"><strong>고등학교</strong></td>
                          <td width="108"><strong>
                            <input name="hsMajor" type="text" size="15" value='${education.hsMajor}'>
                          </strong></td>
                          <td width="56"><strong>과 졸업</strong></td>
                          <td width="67"><strong>
                            <input name="hsDate" type="Date" size="8" value='${education.hsDate}'>
                          </strong></td>
                          <td width="32"><strong>
                            
                          </strong></td>
                        </tr>
                      </table>                      </td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="517" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="109"><strong>
                            <input name="cpName" type="text" size="15" value='${education.cpName}'>
                          </strong></td>
                          <td width="70"><strong>전산원</strong></td>
                          <td width="108"><strong>
                            <input name="cpMajor" type="text" size="15" value='${education.cpMajor}'>
                          </strong></td>
                          <td width="56"><strong>과 졸업</strong></td>
                          <td width="67"><strong>
                            <input name="cpDate" type="Date" size="8" value='${education.cpDate}'>
                          </strong></td>
                          <td width="32"><strong>
                            
                          </strong></td>
                        </tr>
                      </table>                      </td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="517" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="109"><strong>
                            <input name="tcName" type="text" size="15" value='${education.tcName}'>
                          </strong></td>
                          <td width="70"><strong>전문대</strong></td>
                          <td width="108"><strong>
                            <input name="tcMajor" type="text" size="15" value='${education.tcMajor}'>
                          </strong></td>
                          <td width="56"><strong>과 졸업</strong></td>
                          <td width="67"><strong>
                            <input name="tcDate" type="Date" size="8" value='${education.tcDate}'>
                          </strong></td>
                          <td width="32"><strong>
                            
                          </strong></td>
                        </tr>
                      </table>                      </td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="517" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="109"><strong>
                            <input name="colName" type="text" size="15" value='${education.colName}'>
                          </strong></td>
                          <td width="70"><strong>대학교(원)</strong></td>
                          <td width="108"><strong>
                            <input name="colMajor" type="text" size="15" value='${education.colMajor}'>
                          </strong></td>
                          <td width="56"><strong>과 졸업</strong></td>
                          <td width="67"><strong>
                            <input name="colDate" type="Date" size="8" value='${education.colDate}'>
                          </strong></td>
                          <td width="32"><strong>
                            
                          </strong></td>
                        </tr>
                      </table>                      </td>
                    </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="7" align="center" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td height="7" align="left" valign="top"><table width="526" border="0" cellspacing="1" cellpadding="1">
            <tr>
              <td width="16" align="right">&nbsp;</td>
              <td><strong>■ 교육 </strong></td>
            </tr>
          </table></td>
        </tr>
        <tr> 
          <td height="13" align="center"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
					<!--  -->
                    <tr> 
                      <td height="40" align="center" bgcolor="#E4EBF1"><table width="548" border="0" cellpadding="1" cellspacing="1">
                        <tr align="left">
                          <td width="68" align="center"><strong>교육명</strong></td>
                          <td width="473"><strong>
                            <input name="academyName1" type="text" size="70" value='${education.academyName1}'>
                                                    </strong><strong>                          </strong><strong>                          </strong></td>
                          </tr>
                        <tr align="left">
                          <td colspan="2"><table width="534" height="17" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="72"><strong>시작일</strong></td>
                              <td width="102"><strong>
                                <input name="startDate1" type="Date" size="6" value='${education.startDate1}'>
                              </strong></td>
                              <td width="70"><strong>종료일</strong></td>
                              <td width="91"><strong>
                                <input name="endDate1" type="Date" size="6"  value='${education.endDate1}'>
                              </strong></td>
                              <td width="60"><strong>교육기간</strong></td>
                              <td width="139"><strong>
                                <input name="educationInstitution1" type="text" size="8"  value='${education.educationInstitution1}'>
                              </strong></td>
                            </tr>
                          </table></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr> 
                      <td height="40" align="center" bgcolor="#E4EBF1"><table width="548" border="0" cellpadding="1" cellspacing="1">
                        <tr align="left">
                          <td width="68" align="center"><strong>교육명</strong></td>
                          <td width="473"><strong>
                            <input name="academyName2" type="text" size="70" value='${education.academyName2}'></strong></td>
                          </tr>
                        <tr align="left">
                          <td colspan="2"><table width="534" height="17" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="72"><strong>시작일</strong></td>
                              <td width="102"><strong>
                                <input name="startDate2" type="Date" size="6" value='${education.startDate2}'>
                              </strong></td>
                              <td width="70"><strong>종료일</strong></td>
                              <td width="91"><strong>
                                <input name="endDate2" type="Date" size="6"  value='${education.endDate2}'>
                              </strong></td>
                              <td width="60"><strong>교육기간</strong></td>
                              <td width="139"><strong>
                                <input name="educationInstitution2" type="text" size="8"  value='${education.educationInstitution2}'>
                              </strong></td>
                            </tr>
                          </table></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr> 
                      <td height="40" align="center" bgcolor="#E4EBF1"><table width="548" border="0" cellpadding="1" cellspacing="1">
                        <tr align="left">
                          <td width="68" align="center"><strong>교육명</strong></td>
                          <td width="473"><strong>
                            <input name="academyName3" type="text" size="70" value='${education.academyName3}'>
                                                    </strong><strong>                          </strong><strong>                          </strong></td>
                          </tr>
                        <tr align="left">
                          <td colspan="2"><table width="534" height="17" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="72"><strong>시작일</strong></td>
                              <td width="102"><strong>
                                <input name="startDate3" type="Date" size="6" value='${education.startDate3}'>
                              </strong></td>
                              <td width="70"><strong>종료일</strong></td>
                              <td width="91"><strong>
                                <input name="endDate3" type="Date" size="6"  value='${education.endDate3}'>
                              </strong></td>
                              <td width="60"><strong>교육기간</strong></td>
                              <td width="139"><strong>
                                <input name="educationInstitution3" type="text" size="8"  value='${education.educationInstitution3}'>
                              </strong></td>
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
          <td height="3" align="center">&nbsp;</td>
        </tr>
        <tr>
          <td height="3" align="center"><table width="107" border="0" cellpadding="1" cellspacing="1">
            <tr>
             <td width="49">
			<input type="submit"  value="수정" src="../../image/bt_remove.gif"  width="49" height="18">
              </td>
              <td width="51">
			<input type="reset" value="취소" src="../../image/bt_remove.gif"  width="49" height="18"  onClick="location.href='../employee/list.jsp'">
              </td>
            </tr>
          </table></td>
        </tr>
        <tr> 
          <td height="7" align="right">&nbsp;</td>
        </tr>
      </table>
            
      </td>
  </tr>
</table>
	</div>
</div>
</form>
</div>
</body>
</html>