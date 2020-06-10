<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../default/sidebar.jsp" />
 <form action='add' method='post'>
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
                            <a href="../employee/form?no=${employee.userNo}">기본정보</a>
                             | <a href="../education/form?no=${employee.userNo}">교육정보</a>
                             | <a href="../certificate/form?no=${employee.userNo}">자격증. 보유기술정보 </a>
                             |<a href="../project/form?no=${employee.userNo}">프로젝트 정보 </a>
                             | <a href="../career/form?no=${employee.userNo}">경력정보</a>
                             | <a href="../working/form?no=${employee.userNo}">근무정보</a>
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
                      <td width="128" align="center" bgcolor="#E4EBF1"><input name="korName" type="text" size="15" value="${employee.korName}"></td>
                      <td width="131" align="center" bgcolor="#E4EBF1"><strong>주민등록번호</strong></td>
                      <td width="239" align="center" bgcolor="#E4EBF1"><input name="residentNo" type="text" size="15" value="${employee.residentNo}">
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
                    <td height="45" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="547" border="0" cellpadding="1" cellspacing="1">
                        <tr align="left">
                          <td width="49"><strong>회사명</strong></td>
                          <td width="268"><strong>
                            <input name="companyName" type="text" size="30">
                          </strong></td>
                          <td width="78"><strong>직위</strong></td>
                          <td width="152"><strong>
                          </strong><strong>
                          <input name="position" type="text" size="15">
</strong></td>
                          </tr>
                        <tr align="left">
                          <td><strong>기간</strong></td>
                          <td width="268"><strong>
                            <input name="joinDate" type="Date" size="7" value="2020-06-09">
~ 
<input name="leaveDate" type="Date" size="7" value="2020-06-09">
</strong></td>
                          <td width="78"><strong>담당업무</strong></td>
                          <td width="152"><strong>
                            <input name="chargePosition" type="text" size="20">
                          </strong></td>
                        </tr>
                      </table>                      </td>
                    </tr> 
                   <tr>
                    <td height="45" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="547" border="0" cellpadding="1" cellspacing="1">
                        <tr align="left">
                          <td width="49"><strong>회사명</strong></td>
                          <td width="268"><strong>
                            <input name="companyName" type="text" size="30">
                          </strong></td>
                          <td width="78"><strong>직위</strong></td>
                          <td width="152"><strong>
                          </strong><strong>
                          <input name="position" type="text" size="15">
</strong></td>
                          </tr>
                        <tr align="left">
                          <td><strong>기간</strong></td>
                          <td width="268"><strong>
                            <input name="joinDate" type="Date" size="7" value="2020-06-09">
~ 
<input name="leaveDate" type="Date" size="7" value="2020-06-09">
</strong></td>
                          <td width="78"><strong>담당업무</strong></td>
                          <td width="152"><strong>
                            <input name="chargePosition" type="text" size="20">
                          </strong></td>
                        </tr>
                      </table>                      </td>
                    </tr> 
                   <tr>
                    <td height="45" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="547" border="0" cellpadding="1" cellspacing="1">
                        <tr align="left">
                          <td width="49"><strong>회사명</strong></td>
                          <td width="268"><strong>
                            <input name="companyName" type="text" size="30">
                          </strong></td>
                          <td width="78"><strong>직위</strong></td>
                          <td width="152"><strong>
                          </strong><strong>
                          <input name="position" type="text" size="15">
</strong></td>
                          </tr>
                        <tr align="left">
                          <td><strong>기간</strong></td>
                          <td width="268"><strong>
                            <input name="joinDate" type="Date" size="7" value="2020-06-09">
~ 
<input name="leaveDate" type="Date" size="7" value="2020-06-09">
</strong></td>
                          <td width="78"><strong>담당업무</strong></td>
                          <td width="152"><strong>
                            <input name="chargePosition" type="text" size="20">
                          </strong></td>
                        </tr>
                      </table>                      </td>
                    </tr> 
                   <tr>
                    <td height="45" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="547" border="0" cellpadding="1" cellspacing="1">
                        <tr align="left">
                          <td width="49"><strong>회사명</strong></td>
                          <td width="268"><strong>
                            <input name="companyName" type="text" size="30">
                          </strong></td>
                          <td width="78"><strong>직위</strong></td>
                          <td width="152"><strong>
                          </strong><strong>
                          <input name="position" type="text" size="15">
</strong></td>
                          </tr>
                        <tr align="left">
                          <td><strong>기간</strong></td>
                          <td width="268"><strong>
                            <input name="joinDate" type="Date" size="7" value="2020-06-09">
~ 
<input name="leaveDate" type="Date" size="7" value="2020-06-09">
</strong></td>
                          <td width="78"><strong>담당업무</strong></td>
                          <td width="152"><strong>
                            <input name="chargePosition" type="text" size="20">
                          </strong></td>
                        </tr>
                      </table>                      </td>
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
      </table></td>
  </tr>
</table>
	</div>
</div>
</form>
</div>
</body>
</html>