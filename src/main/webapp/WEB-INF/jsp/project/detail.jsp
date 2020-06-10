<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../default/sidebar.jsp" />
 <form action='update' method='post'>
 <input name='userNo' type='hidden' value='${project.userNo}'>
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
                    <td height="26" align="center" bgcolor="#E4EBF1"><strong>                      </strong>
                      <table width="494" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="86"><strong>프로젝트명</strong></td>
                          <td width="160"><strong>
                            <input name="projectName" type="text" size="20" value="${project.projectName}">
                          </strong></td>
                          <td width="75"><strong>참여기간</strong></td>
                          <td width="173"><strong>
                          </strong><strong>
                          <input name="startDate" type="date" size="10" value="${project.startDate}">
~ 							
							<input name="endDate" type="date" size="10" value="${project.endDate}">
						</strong></td>
                          </tr>
                      </table>                      </td>
                    </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><table width="494" border="0" cellpadding="0" cellspacing="0">
                      <tr align="left">
                        <td width="60"><strong>고객사</strong></td>
                        <td width="162"><strong>
                          <input name="custmor" type="text" size="20"  value="${project.custmor}">
                        </strong></td>
                        <td width="65"><strong>근무회사</strong></td>
                        <td width="207"><strong> </strong><strong>
                          <input name="company" type="text" size="20" value="${project.company}">
                        </strong></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="26" align="center" bgcolor="#E4EBF1"><table width="494" border="0" cellpadding="0" cellspacing="0">
                      <tr align="left">
                        <td width="60"><strong>개발분야</strong></td>
                        <td width="162"><strong>
                          <select name="select" name="developmentField">
                            <option value="0">개발분야</option>
                                                    </select>
</strong></td>
                        <td width="65"><strong>역할</strong></td>
                        <td width="207"><strong> </strong><strong>
                          <input name="role" type="text" size="30" value="${project.role}">
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
        <tr>
          <td height="7" align="left" valign="top"><table width="526" border="0" cellspacing="1" cellpadding="1">
            <tr>
              <td width="16" align="right">&nbsp;</td>
              <td><strong>개발환경 </strong></td>
            </tr>
          </table></td>
        </tr>
        <tr> 
          <td height="13" align="center"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td height="26" align="center" bgcolor="#E4EBF1"><table width="480" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="54"><strong>기종</strong></td>
                          <td width="198"><strong>
                            <input name="model" type="text" size="25" value="${project.model}">
</strong></td>
                          <td width="38"><strong>OS</strong></td>
                          <td width="190"><strong> </strong><strong>
                            <input name="os" type="text" size="25" value="${project.os}">
                            </strong></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr> 
                      <td height="26" align="center" valign="middle" bgcolor="#E4EBF1"><table width="480" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="54"><strong>언어</strong></td>
                          <td width="198"><strong>
                            <input name="language" type="text" size="25" value="${project.language}">
                          </strong></td>
                          <td width="60"><strong>DBMS</strong></td>
                          <td width="168"><strong> </strong><strong>
                            <input name="dbms" type="text" size="25" value="${project.dbms}">
                          </strong></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr> 
                      <td height="26" align="center" bgcolor="#E4EBF1"><table width="480" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="54"><strong>TOOL</strong></td>
                          <td width="202"><strong>
                            <input name="tool" type="text" size="25" value="${project.tool}">
                          </strong></td>
                          <td width="44"><strong>통신</strong></td>
                          <td width="185"><strong> </strong><strong>
                            <input name="comunication" type="text" size="25" value="${project.comunication}">
                          </strong></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="26" align="center" bgcolor="#E4EBF1"><table width="480" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left">
                          <td width="54"><strong>기타</strong></td>
                          <td width="429"><strong>
                            <input name="etc" type="text" size="50" value="${project.etc}">
                          </strong><strong> </strong><strong>                          </strong></td>
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
      </table></td>
  </tr>
</table>
	</div>
</div>
</form>
</div>
</body>
</html>
