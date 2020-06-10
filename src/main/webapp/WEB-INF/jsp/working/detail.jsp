<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../default/sidebar.jsp" />
 <form action='update' method='post'>
 <input name='userNo' type='hidden' value='${employee.userNo}'>
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
                      <td width="128" align="center" bgcolor="#E4EBF1"><input name="textfield3325" type="text" size="15" value="${employee.korName}"></td>
                      <td width="131" align="center" bgcolor="#E4EBF1"><strong>주민등록번호</strong></td>
                      <td width="239" align="center" bgcolor="#E4EBF1"><input name="textfield33252" type="text" size="15" value="${employee.residentNo}">
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
          <td height="7" align="center" valign="top"><table width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="102" align="left"><strong>프로젝트명&nbsp; </strong></td>
                        <td width="391"><input name="projectName" type="text" size="40" value="${working.projectName}">
                          </td>
                      </tr>
                    </table>                      
                      </td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="102" align="left"><strong>근무장소&nbsp; </strong></td>
                        <td width="391"><input name="workPlace" type="text" size="40" value="${working.workPlace}">
                        </td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="101" align="left"><strong>근무시작일&nbsp; </strong></td>
                        <td width="151"><input name="startDate" type="date" size="15" value="${working.startDate}">
                        </td>
                        <td width="94"><strong>근무종료일</strong></td>
                        <td width="141"><input name="endDate" type="date" size="15" value="${working.endDate}"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="22" align="center" bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="101" align="left"><strong>매출액&nbsp; </strong></td>
                        <td width="151"><input name="profit" type="text" size="15" value="${working.profit}">
                        </td>
                        <td width="117">&nbsp;</td>
                        <td width="118">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="22" align="center" bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="101" align="left"><strong>결제예정일 &nbsp; </strong></td>
                        <td width="151"><input name="paymentDueDate" type="date" size="15" value="${working.paymentDueDate}"></td>
                        </td>
                        <td width="96" align="center"><strong>결제일</strong></td>
                        <td width="139"><input name="paymentDate" type="date" size="15" value="${working.paymentDate}">
                      </tr>
                    </table></td>
                  </tr>
<!--                   <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="101" align="left"><strong>���� ������ &nbsp; </strong></td>
                        <td width="151"><select name="select">
                          <option>�����ϼ���</option>
                                                </select></td>
                        <td width="117">&nbsp;</td>
                        <td width="118">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr> -->
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
      </table></td>
  </tr>
</table>
	</div>
</div>
</form>
</div>
</body>
</html>
