<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<jsp:include page="../default/sidebar.jsp" />
<div id="contents">
	<div id="content"> 
	<div class="title"><img src="../../image/icon.gif" width="9" height="9" align="absmiddle"> 
  <!-- 옵션 검색 -->
      <strong>사원조회</strong></div>
   <div id="selectBox">
  <div>
  	<select id="searchTypeSel" name="searchType">
			<option value="">검색조건</option>
			<option value="n">이름</option> 
			<option value="s">성별</option>
			<option value="t">경력정보</option>
			<option value="a">주소</option>
		</select>
	<input type="text" id="keyword" name="keyword" 
		value="${pageMaker.cri.keyword}" placeholder="검색어를 입력하세요"/>
	<button id="searchBtn">Search</button>
  </div>
  
  <!-- 사원검색 -->	
  <form action='search' method='get'>  
  <div>
   <label class="label">:::: 연 &nbsp;&nbsp; 차 :::: </label>
  	 <input name="year" type="number" class="INPUT" placeholder="뒤에7자리"> 
  </div>	 
  <button style="margin-left: 227px;">검색</button>
  </form>
  </div>
  <div id="naviBar">
  <!-- 선택삭제기능 -->
  	<a class="selectDelete_btn">삭제</a>
  	   <script>
 $(".selectDelete_btn").click(function(){
  var confirm_val = confirm("정말 삭제하시겠습니까?");
  
  if(confirm_val) {
   var checkArr = new Array();
   
   $("input[class='chBox']:checked").each(function(){
    checkArr.push($(this).attr("data-userNum"));
   });
    
   $.ajax({
    url : "/interpia/app/employee/checkDelete",
    type : "post",
    data : { chBox : checkArr },
    success : function(result){
    	  if(result == 1) {          
    	   location.href = "/interpia/app/employee/list";
    	  } else {
    	   alert("삭제 실패");
    	  }
    	 }
    	});
 		 } 
	 });

	</script><img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle">
  	<a class="selectDetail_btn">수정</a> 
  	<script type="text/javascript">
  	 $(".selectDetail_btn").click(function(){
  		  
  		var checkArr = new Array();
		var user_by_no = $("input[class='chBox']:checked").attr("data-userNum");
		   $("input[class='chBox']:checked").each(function(){
			    checkArr.push($(this).attr("data-userNum"));
			   });
		
		console.log(user_by_no);
		console.log(checkArr.length);
		if(checkArr.length > 1) {
			alert("한개만 체크하여 주세요");
		} else {
			function selectDetail() {
				location.href = "/interpia/app/employee/detail?no="+user_by_no;
				}
		  		selectDetail(); 
		}
		
		
		
  	 });
  	</script>
  	<img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle">
    <a href="#">인사기록카드</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle">
    <a href="#">경력정보</a> <img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
    <a href="#">근무정보</a><img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle"> 
  </div>
  
  <!-- 회원 리스트 -->
  <div id="tableText">
        <table  width="640">
        	<thead>
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
						</div>
						</th>
              	<th  width="85" align="center">이름</th>
              	<th width="85" align="center">주민번호</th>
              	<th width="85" align="center">성별</th>
              	<th width="85" align="center">기술등급</th>
              	<th width="85" align="center">상태</th>
              	<th width="85" align="center">근무형태</th>
              <tr> 
              </thead>
				<!-------------------------  리스트 ------------------------------>
				<tbody>
                    <c:forEach var="item" items="${list}">
					<tr>
                    <td colspan="7" background="../../image/line_bg.gif"></td>
                    </tr>
					<tr>
						<td height="20" align="center">
							<div class="checkBox">
								<input type="checkbox" name="chBox" class="chBox" data-userNum="${item.userNo}"/>
								<script>
									$(".chBox").click(function() {
										$("#allCheck").prop("checked", false);
									});
								</script>
							</div>
						</td>
						<td align="center">${item.korName}</td>
						<td align="center"><a href='detail?no=${item.userNo}'>${item.residentNo}</a></td>
						<td align="center">${item.sex}</td>
						<td align="center">${item.techGrade}</td>
						<td align="center">${item.paymentType}</td>
						<td align="center">${item.employmentType}</td>
					</tr>
				</c:forEach>
                    </tbody>	
                    <tfoot>
                    <tr> 
                      <td colspan="7" background="../../image/line_bg.gif"></td>
                    </tr>
                    <tr>
                      <td height="35" colspan="7" align="center" style="padding-bottom:3">
                      
                      <ul class="pagination">
		
			<tr> 
                 <td height="35" colspan="7" align="center" style="padding-bottom:3">
                      
			<!-- prev 버튼 -->
				<a href="list${pageMaker.makeQuery(pageMaker.startPage)}">
				<img src="../../image/prev.gif" width="22" height="15" border="0" align="absmiddle">
				</a>
			
			<!-- 페이지 번호 (시작 페이지 번호부터 끝 페이지 번호까지) -->
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				    <a href="list${pageMaker.makeQuery(idx)}">&nbsp;${idx}&nbsp;</a>
			</c:forEach>
			
			<!-- next 버튼 -->
			    <a href="list${pageMaker.makeQuery(pageMaker.endPage)}">
			    <img src="../../image/next_.gif" width="22" height="15" border="0" align="absmiddle">
			    </a>
                        
                        </td>
                    </tr>
                    </tfoot>
                  </table>
                    <script>
                  	$(function(){
                  		//perPageNum select 박스 설정
                  		setPerPageNumSelect();
                  	//searchType select 박스 설정
                		setSearchTypeSelect();
                  		
               	   		//prev 버튼 활성화, 비활성화 처리
                  		var canPrev = '${pageMaker.prev}';
                  		if(canPrev !== 'true'){
                  			$('#page-prev').addClass('disabled');
                  		}
                  		
                  		//next 버튼 활성화, 비활성화 처리
                  		var canNext = '${pageMaker.next}';
                  		if(canNext !== 'true'){
                  			$('#page-next').addClass('disabled');
                  		}
                  		
                  		//현재 페이지 파란색으로 활성화
                  		var thisPage = '${pageMaker.cri.page}';
                  		//매번 refresh 되므로 다른 페이지 removeClass 할 필요는 없음->Ajax 이용시엔 해야함
                  		$('#page'+thisPage).addClass('active');
                  	})
                  	
                  	function setPerPageNumSelect(){
                  		var perPageNum = "${pageMaker.cri.perPageNum}";
                  		var $perPageSel = $('#perPageSel');
                  		var thisPage = '${pageMaker.cri.page}';
                  		$perPageSel.val(perPageNum).prop("selected",true);
                  		//PerPageNum가 바뀌면 링크 이동
                  		$perPageSel.on('change',function(){
                  			//pageMarker.makeQuery 사용 못하는 이유: makeQuery는 page만을 매개변수로 받기에 변경된 perPageNum을 반영못함
                  			window.location.href = "list?page="+thisPage+"&perPageNum="+$perPageSel.val();
                  		})
                  	}
                  	function setSearchTypeSelect(){
                		var $searchTypeSel = $('#searchTypeSel');
                		var $keyword = $('#keyword');
                		
                		$searchTypeSel.val('${pageMaker.cri.searchType}').prop("selected",true);
                		//검색 버튼이 눌리면
                		$('#searchBtn').on('click',function(){
                			var searchTypeVal = $searchTypeSel.val();
                			var keywordVal = $keyword.val();
                			//검색 조건 입력 안했으면 경고창 
                			if(!searchTypeVal){
                				alert("검색 조건을 선택하세요!");
                				$searchTypeSel.focus();
                				return;
                			//검색어 입력 안했으면 검색창
                			}else if(!keywordVal){
                				alert("검색어를 입력하세요!");
                				$('#keyword').focus();
                				return;
                			}
                			var url = "list?page=1"
                				+ "&perPageNum=" + "${pageMaker.cri.perPageNum}"
                				+ "&searchType=" + searchTypeVal
                				+ "&keyword=" + encodeURIComponent(keywordVal);
                			window.location.href = url;
                		})
                	}
                  </script>
                    
 			</div><!-------------------------  리스트 ------------------------------>
 			
 			
 			<script type="text/javascript">
 		    
    function doExcelDownloadProcess(){
/*   			let data = {};
  			data.checkArr =  [];
  				$("input[class='chBox']:checked").each(function(){
  					data.checkArr.push($(this).attr("data-userNum"));});
  				
		   console.log(data.checkArr);
		   console.log(data);
		   
		   let convertedData = JSON.stringify(data);
		   console.log(convertedData);
		   var xhr = new XMLHttpRequest();
		   
		   xhr.onreadystatechange = () => {
			      if (xhr.readyState == 4) {
			          if (xhr.status == 200) {
		           let obj = JSON.parse(xhr.responseText);
		}}}
   			xhr.open('POST', 'downloadExcelFile');
  			xhr.setRequestHeader('Content-Type', 'application/json'); 
  			xhr.send(convertedData);   */ 
  			
  		/* 방법2 */ 
  		
  		var f = document.getElementById('form1');
  			var checkArr = new Array();
  			$("input[class='chBox']:checked").each(function(){
			    checkArr.push($(this).attr("data-userNum"));});
  			checkArr.sort();
  			
  			for(int i = 0; i < checkArr.length; i++) {
  				data.append('num', checkArr[i]);
  				console.log(checkArr[i]);
  			}
  			
  			
  			
  		   $.ajax({
  			    url : "downloadExcelFile",
  			    type : "post",
  			    data : {chBox : chArr },
  			    success : function(){
  			    	
  			    	 }
  			    	});
  			
/*  방법3 			$(function() {
  				var checkArr = new Array();
  	  			$("input[class='chBox']:checked").each(function(){
  				    checkArr.push($(this).attr("data-userNum"));});
  	  			checkArr.sort();
  				$('#btn_send').click(function() {
  					$.form({
  						action: 'downloadExcelFile',
  						data: { chBox: checkArr },
  					}).submit();
  				});
  			}); */
    }
</script>
 			<div id="downLoad">
 			</div>
           <form id="form1" name="form1" method="post" enctype="multipart/form-data">
    		<button type="button" id="btn_send" onclick="doExcelDownloadProcess()">
    		<img src="../../image/all_icon.gif" width="11" height="11" align="absmiddle">자료다운 작업</button>
			</form>
           
           </div>   
    </div><!-- contents end -->          
</div>
</body>
</html>
