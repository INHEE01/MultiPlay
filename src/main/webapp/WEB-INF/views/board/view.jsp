<%@page import="com.multi.mvc.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;900&family=Noto+Sans+KR:wght@700&family=Paytone+One&family=Secular+One&display=swap"
  rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/board/view.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<script src="https://kit.fontawesome.com/9945425c20.js" crossorigin="anonymous"></script>
<body>
	 <section id="board-write-container">
	    <table id="tbl-board" class="board-table">
	    	<tr class="bnts">
			      <c:if test="${not empty loginMember && (loginMember.userId == board.userId || loginMember.userId == 'admin')}">
			        <button type="button" id="btnUpdate">수정</button>
			        <button type="button" id="btnDelete">삭제</button>
			      </c:if>
			      <button type="button" id="btnList" onclick="location.href='${path}/board/list'">목록</button>
	    	</tr>
	      	<tr><td style="display:none;">${board.bno}</td></tr>
	      	<tr>
	      		<td class="board-title" colspan="3">
	          		<span class="category">[임의 카테고리]</span>
	         		<c:out value="${board.boardTitle}"/>
	        	</td>
	      	</tr>
		    <tr class="board-info">
		      <td colspan="2" class="info-main"> 작성자 : <c:out value="${board.userId}"/></td>
		      <td class="info-sub"> 
		       	 	등록일 : <fmt:formatDate type="both" value="${board.createDate}"/> &nbsp; &nbsp;
		        	조회수 : <c:out value="${board.readCount}"/>&nbsp; &nbsp;
		        	<c:if test="${ !empty board.originalFileName }">
		         	첨부파일: 
					<a href="javascript:fileDownload('${board.originalFileName}','${board.renamedFileName}')">
						<c:out value="${board.originalFileName}"></c:out>						
					</a>
					<script>
							function fileDownload(oriname, rename) {
							const url = "${path}/board/fileDown";
							let oName = encodeURIComponent(oriname);
							let rName = encodeURIComponent(rename);
									
							location.assign(url + "?oriname=" + oName + "&rename=" + rName);
						}
					</script>	
				</c:if>
		      </td>
		     </tr>
		     <tr>
		     <tr>
		       <td colspan="3" >
		         <div class="board-contents">
		         	<div class="imgarea">
		         		<c:if test="${board.originalFileName != null && board.originalFileName.length()>0}">
		         			<c:set var="fileName" value="${board.getOriginalFileName()}"> </c:set>
		         			<c:if test = "${fn:contains(fileName, '.jpg') || fn:contains(fileName, '.JPG') || fn:contains(fileName, '.jpeg')||fn:contains(fileName, '.png')}">
								<img class="file-img" src="${path}/resources/upload/board/${board.getRenamedFileName()}"/>
							</c:if>
						</c:if> 
		         	</div>
		            <textarea  rows="15" cols="100" readonly class="textarea" disabled ><c:out value="${board.boardContent}"/></textarea>
		         </div>
		       </td>
		     </tr>
		</table>
		<table id="tbl-comment">
		  <tr>
		    <td class="comment-count" colspan="2" style="border-color: none;">댓글 3개</td>
		  </tr>
		  <c:if test="${!empty replyList}">
		  	<c:forEach var="reply" items="${replyList}">
		      <tr class="comments">
		        <td class="comment">
		          <sub class="comment-writer">${reply.userId}</sub>
		          <sub class="comment-date"><fmt:formatDate type="both" value="${reply.createDate}"/></sub><br>
		          <c:out value="${reply.content}"/>
		        </td>
		        <td class="comment comment-btn">
		        	<c:set var="admin" value="admin"></c:set>
		        	<c:if test="${ !empty loginMember && (loginMember.userId == reply.userId || loginMember.userId == admin)}">
		        		<div class="reply-btns">
				         	<c:if	test="${ !empty loginMember && (loginMember.userId == reply.userId)}">
				         		<button class="btn-update" id="btn-update" onclick="changeForm();">수정</button>
				         	</c:if>	
				         		<button class="btn-delete" id="btn-delete" onclick="deleteReply('${reply.replyNo}','${board.bno}');" >삭제</button>
				         </div>
				     </c:if>
		        </td>
		      </tr>
	      	</c:forEach>
	      </c:if>
	      <c:if test="${empty replyList}">
	      	<tr>
				<td colspan="3" style="text-align: center;">등록된 리플이 없습니다.</td>
			</tr>
	      </c:if>
	    </table>
	    <div id="comment-container">
	    	<div class="comment-editor">
	    		<form action="${path}/board/reply" method="post" class="comment-inputer">
	    			<input type="hidden" name="boardNo" value="${board.bno}" />
	    			<input type="hidden" name="writerId" value="${loginMember.userId}" />
					  <textarea name="content" id="replyContent"  cols="125" rows="3"></textarea>
					  <button type="submit" id="btn-insert">등록</button>	  	
	    		</form>
	    	</div>
	   	</div>
	  </section>
	  <section>
	    <div class="bnr-bottom-wrap">
	      <div class="bnr-bottom">
	        <div class="bnr-bottom-01">
	          <div class="icon-container">
	            <i class="fa-solid fa-pen-to-square"></i>
	          </div>
	          <div class="info-container">
	            <p class="bottom-title">예매 / 취소</p>
	            <span class="bottom-sub">궁금한 사항은 공지사항 및 문의를 이용해주세요.</span>
	          </div>
	        </div>
	        <div class="bnr-bottom-02">
	          <div class="icon-container">
	            <i class="fa-solid fa-phone-volume"></i>
	          </div>
	          <div class="info-container">
	            <p class="bottom-title">고객센터 이용 안내</p>
	            <span class="bottom-sub"
	              >전화(1544-1234) 또는 일대일 문의를 이용해주세요.</span
	            >
	          </div>
	        </div>
	      </div>
	    </div>
	   </section>
</body>
<!-- <jsp:include page="/WEB-INF/views/common/footer.jsp"/>-->
<script>
	$(document).ready(() => {
		$("#btnUpdate").on("click", (e) => {
			location.href = "${path}/board/update?no=${board.bno}";
		});
		
		$("#btnDelete").on("click", (e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/board/delete?boardNo=${board.bno}");
			}
		});
	});
	
	function deleteReply(replyNo, boardNo){
		var url = "${path}/board/replyDel?replyNo=";
		var requestURL = url + replyNo +"&boardNo=" + boardNo;
		location.replace(requestURL);
	}
</script>
