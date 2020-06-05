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
                             |<a href="#">프로젝트 정보 </a>
                             | <a href="../career/detail?no=${employee.userNo}">경력정보</a>
                             | <a href="#">근무정보</a>
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
          <td height="4" align="left" valign="top"><table width="526" border="0" cellspacing="1" cellpadding="1">
            <tr>
              <td width="16" align="right">&nbsp;</td>
              <td><strong>■ 자격증 </strong></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="7" align="center" valign="top"><table width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="439" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="73"><strong>자격증
                          </strong></td>
                          <td width="173"><strong>
                            <input name="certificateName" type="text" size="20"  value="${certificate.certificateName}">
                          </strong></td>
                          <td width="60"><strong>취득일</strong></td>
                          <td width="133"><strong>
                          </strong><strong>
                          <input name="acquistionDate" type="Date" size="20"  value="${certificate.acquistionDate}">		
                          </strong></td>
                          </tr>
                      </table></td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="439" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="73"><strong>자격증
                          </strong></td>
                          <td width="173"><strong>
                            <input name="certificateName" type="text" size="20">
                          </strong></td>
                          <td width="60"><strong>취득일</strong></td>
                          <td width="133"><strong>
                          </strong><strong>
                          <input name="acquistionDate" type="Date" size="20">		
                          </strong></td>
                          </tr>
                      </table></td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="439" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="73"><strong>자격증
                          </strong></td>
                          <td width="173"><strong>
                            <input name="certificateName" type="text" size="20">
                          </strong></td>
                          <td width="60"><strong>취득일</strong></td>
                          <td width="133"><strong>
                          </strong><strong>
                          <input name="acquistionDate" type="Date" size="20">		
                          </strong></td>
                          </tr>
                      </table></td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="439" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="73"><strong>자격증
                          </strong></td>
                          <td width="173"><strong>
                            <input name="certificateName" type="text" size="20">
                          </strong></td>
                          <td width="60"><strong>취득일</strong></td>
                          <td width="133"><strong>
                          </strong><strong>
                          <input name="acquistionDate" type="Date" size="20">		
                          </strong></td>
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
        
        
        <!-- 자격증 입력 끝 -->
        
        <tr>
          <td height="7" align="left" valign="top"><table width="526" border="0" cellspacing="1" cellpadding="1">
            <tr>
              <td width="16" align="right">&nbsp;</td>
              <td><strong>■ 보유기술 </strong></td>
            </tr>
          </table></td>
        </tr>
        <tr> 
          <td height="13" align="center"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td height="26" align="center" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="97" align="center"><strong>보유기술</strong></td>
                          <td width="241"><strong>
                            <input name="techName" type="text" size="30" value="${technology.techName}">
                          </strong></td>
                          <td width="54"><strong>숙련도</strong></td>
                          <td width="206"><strong> </strong><strong>
                            <input type="radio" name="proficiency" value="1"> 
                            초
                            <input type="radio" name="proficiency" value="2">
                            중
                            <input type="radio" name="proficiency" value="3">
                            고
</strong></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr> 
                      <td height="26" align="center" valign="middle" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="97" align="center"><strong>보유기술</strong></td>
                          <td width="241"><strong>
                            <input name="textfield332542622" type="text" size="30">
                          </strong></td>
                          <td width="54"><strong>숙련도</strong></td>
                          <td width="206"><strong> </strong><strong>
                            <input type="radio" name="proficiency" value="radiobutton">
      초
      <input type="radio" name="proficiency" value="radiobutton">
      중
      <input type="radio" name="proficiency" value="radiobutton">
      고 </strong></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr> 
                      <td height="26" align="center" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="97" align="center"><strong>보유기술</strong></td>
                          <td width="241"><strong>
                            <input name="textfield332542623" type="text" size="30">
                          </strong></td>
                          <td width="54"><strong>숙련도</strong></td>
                          <td width="206"><strong> </strong><strong>
                            <input type="radio" name="proficiency" value="radiobutton">
      초
      <input type="radio" name="proficiency" value="radiobutton">
      중
      <input type="radio" name="proficiency" value="radiobutton">
      고 </strong></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="26" align="center" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="97" align="center"><strong>보유기술</strong></td>
                          <td width="241"><strong>
                            <input name="textfield332542624" type="text" size="30">
                          </strong></td>
                          <td width="54"><strong>숙련도</strong></td>
                          <td width="206"><strong> </strong><strong>
                            <input type="radio" name="proficiency" value="radiobutton">
      초
      <input type="radio" name="proficiency" value="radiobutton">
      중
      <input type="radio" name="proficiency" value="radiobutton">
      고 </strong></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="26" align="center" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="97" align="center"><strong>보유기술</strong></td>
                          <td width="241"><strong>
                            <input name="textfield332542625" type="text" size="30">
                          </strong></td>
                          <td width="54"><strong>숙련도</strong></td>
                          <td width="206"><strong> </strong><strong>
                            <input type="radio" name="proficiency" value="radiobutton">
      초
      <input type="radio" name="proficiency" value="radiobutton">
      중
      <input type="radio" name="proficiency" value="radiobutton">
      고 </strong></td>
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
              <td width="49"><img src="../../image/bt_remove.gif" width="49" height="18">
              <button>dd</button>
              </td>
              <td width="51"><img src="../../image/bt_cancel.gif" width="49" height="18"></td>
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
</div>
</body>
</html>