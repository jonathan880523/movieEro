<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="../inc/head.jsp" flush="false" />
<jsp:include page="../inc/header.jsp" flush="false" />
<link rel="stylesheet" type="text/css" href="css/Seo-Jin.css">
<section class="sub_content seojin-background">
	<div class="container ">
		<div class="col-sm-12">
			<div class="tab_menu">
		    	<ul class="cf">
		    		<li><a id="toSummary" href="reSummary.do">영화 개요</a></li>
		    		<li><a id="toTrailer" href="trailer.do">트레일러</a></li>
		    		<li class="on"><a id="toReivew" href="review.do">영화 리뷰</a></li>
		    	</ul>
			</div>
			<c:set var="savedReview" value="${requestScope.movieReview}"/>
			<h2 class="page-heading">Reviews</h2>
			<div class="movie detailBorder">
			<!-- comments -->
			<div class="comment-wrapper">
				<c:if test="${empty sessionScope.memberID}">
				<form id="comment-form" class="comment-form" method="post">
				    <textarea name="commentContents" class="comment-form__text" disabled placeholder="로그인해주세요"></textarea>
				    <button type="submit" id="nonSession" class="btn btn-md btn--danger comment-form__btn">로그인</button>
				</form>
				</c:if>
				<c:if test="${not empty sessionScope.memberID}">
				<form id="comment-form" class="comment-form" method="post">
				    <textarea name="commentContents" class="comment-form__text" placeholder="영화를 보신 후기를 남겨주세요"></textarea>
				    <button type="submit" id="hasSession" class="btn btn-md btn--danger comment-form__btn">후기 남기기</button>
				</form>
				</c:if>
				<br>
				<div class="comment-sets">
				<c:forEach var="rv" items="${savedReview}">
					<div class="comment">
					    <a href="#" class="comment__author">${rv.USER_ID}</a>
					    <p class="comment__date">${rv.MV_RV_TITLE}</p>
					    <p class="comment__message">${rv.MV_RV_CONTENTS}</p>
					</div>
				</c:forEach>
				</div>
			<!-- comments -->
			</div>
			<!-- div class=movie -->
			</div>
		</div>
	</div>
</section>
<script>
	$(document).ready(function(){
		$("#hasSession").on('click', function(){
			$("#comment-form").attr('action', 'addReview.do');
			$("#comment-form").attr('method', 'get');
			$("#comment-form").submit();
		});
		
		$("#nonSession").on('click', function(){
			$("#comment-form").attr('action', './');
			$("#comment-form").attr('method', 'get');
			$("#comment-form").submit();
		});
	})
</script>
<jsp:include page="../inc/footer.jsp" flush="false" />