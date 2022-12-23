<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!--<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>-->
<link rel="stylesheet" type="text/css" href="${path}/resources/css/board/list.css">


<c:set var="searchType" value="${param.searchType}"></c:set>
<c:if test="${empty searchType}">
	<c:set var="searchType" value="${'title'}"></c:set>
</c:if>
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;900&family=Noto+Sans+KR:wght@700&family=Paytone+One&family=Secular+One&display=swap"
	rel="stylesheet" />
<title>멀티플레이</title>
<script src="https://kit.fontawesome.com/9945425c20.js" crossorigin="anonymous"></script>
<body>
	<section>
		<div class="title">
			<span class="title_name" id="title_name">공지사항</span>
		</div>
	</section>
	<section id="slider1" class="slider">
		<img src="${path}/resources/images/ours/banner1.png" alt="" class="box" /> 
		<img src="${path}/resources/images/ours/banner2.png" alt="" class="box" />
		<img src="${path}/resources/images/ours/banner3.png" alt="" class="box" /> 
		<img src="${path}/resources/images/ours/banner4.png" alt="" class="box" />
	</section>
	<section class="board">
		<div class="container">
			<ul class="tab-container">
				<li class="tab-container__item active" onclick="return setInnerInfo();" data-tab="tab1">
					<a class="tab-container__item--title" href="#">공지사항</a>
				</li>
				<li class="tab-container__item"  onclick="return setInnerASK();" data-tab="tab2">
					<a class="tab-container__item--title" href="#">문의</a>
				</li>
				<li class="tab-container__item" onclick="return setInnerBOARD();" data-tab="tab3">
					<a class="tab-container__item--title" href="#">자유게시판</a>
				</li>
			</ul>
			<div class="content-container">
				<article id="tab1" class="content-container__content target">
					<form action="${path}/board/list" method="get" class="search">
						<div style="text-align: center">
							<label> <input type="radio" name="searchType"
								value="title" ${searchType=='title' ? 'checked':''}> 제목
							</label> <label> <input type="radio" name="searchType"
								value="content" ${searchType=='content' ? 'checked':''}>
								내용
							</label> <label> <input type="radio" name="searchType"
								value="writer" ${searchType=='writer' ? 'checked':''} /> 작성자
							</label> <span class="blue_window"> <input type="text"
								id="searchValue" name="searchValue" class="input_text"
								value="${param.searchValue}" />
							</span>
							<button type="submit" class="sch_smit">검색</button>
						</div>
					</form>
					<table id="tbl-board" class="board-table">
						<tr>
							<th class="table-header">번호</th>
							<th class="table-header">제목</th>
							<th class="table-header">작성자</th>
							<th class="table-header">작성일</th>
							<th class="table-header">첨부파일</th>
							<th class="table-header">조회수</th>
						</tr>
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">조회된 글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty list}">
							<c:forEach var="board" items="${list}">
								<tr>
									<td class="board-content"><c:out value="${board.bno}" /></td>
									<td class="board-content board-title">
										<a href="${path}/board/view?no=${board.bno}"> 
											<c:out value="${board.boardTitle}" />
										</a>
									</td>
									<td class="board-content"><c:out value="${board.userId}" /></td>
									<td class="board-content"><fmt:formatDate type="date" value="${board.createDate}" /></td>
									<td class="board-content">
										<c:if test="${board.originalFileName != null }">
											<img class = "file-img" src="${path}/resources/images/ours/file.png">
										</c:if> 
										<c:if test="${board.originalFileName == null }"><span>첨부파일 없음</span></c:if>
									</td>
									<td class="board-content"><c:out value="${board.readCount}" /></td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
					<div class="table-buttons">
						<button onclick="movePage('${path}/board/list?page=1');" class="table-button">&lt;&lt;</button>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.prevPage}');" class="table-button" >&lt;</button>
						<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}"
							step="1" varStatus="status">
							<c:if test="${status.current == pageInfo.currentPage}">
								<button class="table-button" disabled>${status.current}</button>
							</c:if>
							<c:if test="${status.current != pageInfo.currentPage}">
								<button class="table-button"
									onclick="movePage('${path}/board/list?page=${status.current}');">
									${status.current}</button>
							</c:if>
						</c:forEach>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.nextPage}');" class="table-button" >&gt;</button>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.maxPage}');" class="table-button" >&gt;&gt;</button>
					</div>
				</article>
				<article id="tab2" class="content-container__content">
					<form action="${path}/board/list" method="get" class="search">
						<div style="text-align: center">
							<label> <input type="radio" name="searchType"
								value="title" ${searchType=='title' ? 'checked':''}> 제목
							</label> <label> <input type="radio" name="searchType"
								value="content" ${searchType=='content' ? 'checked':''}>
								내용
							</label> <label> <input type="radio" name="searchType"
								value="writer" ${searchType=='writer' ? 'checked':''} /> 작성자
							</label> <span class="blue_window"> <input type="text"
								id="searchValue" name="searchValue" class="input_text"
								value="${param.searchValue}" />
							</span>
							<button type="submit" class="sch_smit">검색</button>
						</div>
					</form>
					<c:if test="${loginMember != null}">
						<button type="button" id="btn-add" class="write"
							onclick="location.href='${path}/board/mon'">글쓰기</button>
					</c:if>
				<table id="tbl-board" class="board-table">
						<tr>
							<th class="table-header">번호</th>
							<th class="table-header">제목</th>
							<th class="table-header">작성자</th>
							<th class="table-header">작성일</th>
							<th class="table-header">첨부파일</th>
							<th class="table-header">조회수</th>
						</tr>
						<c:if test="${empty list}">
							<tr>
								<td style="text-align: center;"  colspan="6">조회된 글이 없습니다.</td>
							</tr>
						</c:if>
							<c:forEach var="board" items="${list}">
								<tr>
									<td class="board-content"><c:out value="${board.bno}" /></td>
									<td class="board-content board-title">
										<a href="${path}/board/view?no=${board.bno}"> 
											<c:out value="${board.boardTitle}" />
										</a>
									</td>
									<td class="board-content"><c:out value="${board.userId}" /></td>
									<td class="board-content"><fmt:formatDate type="date" value="${board.createDate}" /></td>
									<td class="board-content">
										<c:if test="${board.originalFileName != null }">
											<img class = "file-img"  src="${path}/resources/images/file.png">
										</c:if> 
										<c:if test="${board.originalFileName == null }">
											<span>첨부파일 없음</span>
										</c:if>
									</td>
									<td class="board-content"><c:out value="${board.readCount}" /></td>
								</tr>
							</c:forEach>
					</table>
					<div class="table-buttons">
						<button onclick="movePage('${path}/board/list?page=1');" class="table-button">&lt;&lt;</button>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.prevPage}');" class="table-button" >&lt;</button>
						<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}"
							step="1" varStatus="status">
							<c:if test="${status.current == pageInfo.currentPage}">
								<button class="table-button" disabled>${status.current}</button>
							</c:if>
							<c:if test="${status.current != pageInfo.currentPage}">
								<button class="table-button"
									onclick="movePage('${path}/board/list?page=${status.current}');">
									${status.current}</button>
							</c:if>
						</c:forEach>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.nextPage}');" class="table-button" >&gt;</button>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.maxPage}');" class="table-button" >&gt;&gt;</button>
					</div>
				</article>
				<article id="tab3" class="content-container__content">
					<form action="${path}/board/list" method="get" class="search">
						<div style="text-align: center">
							<label> <input type="radio" name="searchType"
								value="title" ${searchType=='title' ? 'checked':''}> 제목
							</label> <label> <input type="radio" name="searchType"
								value="content" ${searchType=='content' ? 'checked':''}>
								내용
							</label> <label> <input type="radio" name="searchType"
								value="writer" ${searchType=='writer' ? 'checked':''} /> 작성자
							</label> <span class="blue_window"> <input type="text"
								id="searchValue" name="searchValue" class="input_text"
								value="${param.searchValue}" />
							</span>
							<button type="submit" class="sch_smit">검색</button>
						</div>
					</form>
					<c:if test="${loginMember != null}">
						<button type="button" id="btn-add" class="write"
							onclick="location.href='${path}/board/write'">글쓰기</button>
					</c:if>
					<table id="tbl-board" class="board-table">
						<tr>
							<th class="table-header">번호</th>
							<th class="table-header">제목</th>
							<th class="table-header">작성자</th>
							<th class="table-header">작성일</th>
							<th class="table-header">첨부파일</th>
							<th class="table-header">조회수</th>
						</tr>
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">조회된 글이 없습니다.</td>
							</tr>
						</c:if>
							<c:forEach var="board" items="${list}">
								<tr>
									<td class="board-content"><c:out value="${board.bno}" /></td>
									<td class="board-content board-title">
										<a href="${path}/board/view?no=${board.bno}"> 
											<c:out value="${board.boardTitle}" />
										</a>
									</td>
									<td class="board-content"><c:out value="${board.userId}" /></td>
									<td class="board-content"><fmt:formatDate type="date" value="${board.createDate}" /></td>
									<td class="board-content">
										<c:if test="${board.originalFileName != null }">
											<img class = "file-img"  src="${path}/resources/images/file.png">
										</c:if> 
										<c:if test="${board.originalFileName == null }">
											<span>첨부파일 없음</span>
										</c:if>
									</td>
									<td class="board-content"><c:out value="${board.readCount}" /></td>
								</tr>
							</c:forEach>
					</table>
					<div class="table-buttons">
						<button onclick="movePage('${path}/board/list?page=1');" class="table-button">&lt;&lt;</button>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.prevPage}');" class="table-button" >&lt;</button>
						<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}"
							step="1" varStatus="status">
							<c:if test="${status.current == pageInfo.currentPage}">
								<button class="table-button" disabled>${status.current}</button>
							</c:if>
							<c:if test="${status.current != pageInfo.currentPage}">
								<button class="table-button"
									onclick="movePage('${path}/board/list?page=${status.current}');">
									${status.current}</button>
							</c:if>
						</c:forEach>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.nextPage}');" class="table-button" >&gt;</button>
						<button onclick="movePage('${path}/board/list?page=${pageInfo.maxPage}');" class="table-button" >&gt;&gt;</button>
					</div>
				</article>
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
						<span class="bottom-sub">궁금한 사항은 공지사항 및 문의를
							이용해주세요.</span>
					</div>
				</div>
				<div class="bnr-bottom-02">
					<div class="icon-container">
						<i class="fa-solid fa-phone-volume"></i>
					</div>
					<div class="info-container">
						<p class="bottom-title">고객센터 이용 안내</p>
						<span class="bottom-sub">전화(1544-1234) 또는
							일대일 문의를 이용해주세요.</span>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>

<script src="${path}/resources/js/list.js"></script>
<!--<jsp:include page="/WEB-INF/views/common/footer.jsp"/>-->


<script type="text/javascript">
	function movePage(pageUrl){
		var searchValue = document.getElementById("searchValue"); // 갤럭시
		var searchTypes = document.getElementsByName("searchType"); // title
		var searchType = 'title';
		if(searchValue.value.length > 0){
			for(var i = 0; i <searchTypes.length; i++){
				if(searchTypes[i].checked == true){
					searchType = searchTypes[i].value;
				}
			}
			pageUrl = pageUrl + '&searchType=' + searchType + '&searchValue=' + searchValue.value; 
		}
		location.href = encodeURI(pageUrl);	
	}
	
	
	
		function setInnerInfo() {
		  	const element = document.getElementById('title_name');
			  element.innerHTML = '<span class="title_name">공지사항<span>';
		} 
		function setInnerASK() {
		  const element = document.getElementById('title_name');
		  element.innerHTML 
		    = '<span class="title_name">문의<span>';
		} 
		function setInnerBOARD() {
		  const element = document.getElementById('title_name');
		  element.innerHTML 
		    = '<span class="title_name">자유게시판<span>';
		} 
</script>

