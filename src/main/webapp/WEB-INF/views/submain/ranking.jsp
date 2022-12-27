<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이::통합검색" name="title" />
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
				href="${path}/submain/ranking" id="ranking-1">장르별 랭킹</a></li>
			<li class="genre-block"><a class="genre-1"
				href="${path}/submain/ranking" id="ranking-2">지역별 랭킹</a></li>
		</ul>
	</div>
</div>
<!-- 장르별, 지역별 랭킹 선택창 끝 -->

<!-- 장르 선택(뮤지컬, 연극, 콘서트, 클래식/미용, 전시) -->
<div class="container">
	<div class="genre-select-2">
		<button onclick="" class="genre-button-1">뮤지컬</button>
		<button onclick="" class="genre-button-1">연극</button>
		<button onclick="" class="genre-button-1">콘서트</button>
		<button onclick="" class="genre-button-1">클래식/미용</button>
		<button onclick="" class="genre-button-1">전시</button>
	</div>
</div>
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
					<th class="table-header">공연명</th>
					<th class="table-header">기간/장소</th>
					<th class="table-header">예매율</th>
					<th class="table-header">예매하기</th>
				</tr>
				<c:if test="${empty ranking}">
					<tr>
						<td style="text-align: center; font-size: 25px;" colspan="5">조회된
							내용이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty ranking}">
					<c:forEach var="ranking" items="${ranking}">
						<tr>
							<td class="ranking-content"><c:out value="${ranking.no}" /></td>
							<td class="ranking-content"><c:out value="${ranking.title}" />
							</td>
							<td class="ranking-content"><c:out value="${ranking.date}" />
								<c:out value="${ranking.place}" /></td>
							<td class="ranking-content"><c:out
									value="${ranking.bookRate}" /></td>

							<td class="ranking-content">
								<button onclick="" class="genre-button-2">예매하기</button>
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