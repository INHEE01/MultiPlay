<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이" name="title" />
</jsp:include>

<link rel="stylesheet" type="text/css" href="${path}/resources/css/pay.css">



<section id="content">
	<%-- 인원/좌석, 시간 시작 --%>
	<div class="pay-select row">
		<div class="pay-people col-md-8">
			<p class="pay-select-tit">인원 / 좌석</p>
			<div class="pay-persons-wrapper"></div>
			<div class="pay-seat-wrapper"></div>
		</div>
		<div class="pay-time col-md-4">
			<p class="pay-select-tit">시간</p>
		</div>
	</div>
	<%-- 인원/좌석, 시간 끝 --%>
	
	<%-- 선택 정보 시작 --%>
	<div class="pay-showinfo">
	
	</div>
	<%-- 선택 정보 끝 --%>
	
</section>

<script src="${path}/resources/js/pay.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>