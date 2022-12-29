<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이::랭킹" name="title" />
</jsp:include>

<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/ranking.css">

<!-- 검색 부 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!-- 장르별, 지역별 랭킹 선택창 -->
<div class="container">
	<div class="genre-select-1">
		<ul class="genre-middle-select">
			<li class="genre-block"><a class="genre-1"
				href="#" id="ranking-1">장르별 랭킹</a></li>
			<li class="genre-block"><a class="genre-1"
				href="#" id="ranking-2">지역별 랭킹</a></li>
		</ul>
	</div>
	<div class="genre-select-2">
		<button onclick="location.href='${path}/submain/musicalRanking'" class="genre-button-1">뮤지컬</button>
		<button onclick="location.href='${path}/submain/playRanking'" class="genre-button-1">연극</button>
		<button onclick="" class="genre-button-1">콘서트</button>
		<button onclick="" class="genre-button-1">클래식/무용</button>
		<button onclick="" class="genre-button-1">전시</button>
	</div>
</div>
<!-- 장르별, 지역별 랭킹 선택창 끝 -->

<!-- 장르 선택 끝 -->

<!-- 랭킹, 공연명, 기간/장소, 예매율, 예매하기 부분 -->
<section class="ranking-list">
	<div class="container">
		<div class="content-container">
			<h1 class="select-date">날짜 선택</h1>
			<form style="text-align: center;">
				<input type="date" id="currentDate" name="day">
			</form>
			<!-- 선택한 날짜의 해당하는 랭킹 출력하기 -->
			<table class="ranking-table">
				<tr>
					<th class="table-header">랭킹</th>
					<th class="table-header" colspan="2">공연명</th>
					<th class="table-header">기간/장소</th>
					<th class="table-header">예매율</th>
					<th class="table-header">예매하기</th>
				</tr>
				<c:if test="${empty rankingList}">
					<tr>
						<td style="text-align: center; font-size: 25px;" colspan="5">조회된
							내용이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty rankingList}">
					<c:forEach var="rankingList" items="${rankingList}">
						<tr>
							<td class="ranking-content"><strong><p style="width:60px;"><c:out value="${rankingList.rankNo}"/></p></strong></td>
							<td class="ranking-content">
								<img src="<c:out value="${rankingList.poster}"/>" style="width:150px; height:200px;"/>
							</td>
							<td class="ranking-content"><strong><c:out value="${rankingList.prfnm}" /></strong>
							</td>
							<td class="ranking-content">
								<fmt:formatDate var="dayFrom" value="${rankingList.prfpdfrom}" pattern="yyyy.MM.dd"/>
								<c:out value="${dayFrom}" />&#32;~&#32;
								<fmt:formatDate var="dayTo" value="${rankingList.prfpdto}" pattern="yyyy.MM.dd"/>
								<c:out value="${dayTo}" /><br>
								<p class="ranking-place"><strong><c:out value="${rankingList.fdtynm}"/></strong></p>
								
							</td>
							<td class="ranking-content">
								<p style="font-weight:600; color:#ffaa46; font-size:20px;">
									<c:out
									value="${rankingList.bookRate}" />
									
								</p>
							</td>
	
							<td class="ranking-content">
								<button type="button" class="btn btn-warning">예매하기</button><br>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</div>
	</div>
</section>

<script>
	document.getElementById('currentDate').value = new Date().toISOString()
			.substring(0, 10);
	;
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>