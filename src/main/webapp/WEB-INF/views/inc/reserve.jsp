<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ID" value="${sessionScope.memberID}"/>

<div id="order">
	<div class="container">
		<div class="row order-content">
			<div class="col-sm-8 col-xs-12 seat_content ph0">
				<h2>order a ticket</h2>
				<div class="entry-order-content">
					<form class="msform" id="msform" name="msform" action="reserve.do" method="get">
					<!-- 로그인 아이디 -->
					<input type="hidden" name="MB_ID" id="MB_ID" value="${ID}"/>
						<!-- action에 컨트롤러 태워서 db에 데이터 넣기 -->
						<!-- fieldsets -->
						<fieldset>
							<div class="wpc-content">
								<h3>location</h3>
								<!-- 영화관 정보 -->
								<select name="CINEMA_NAME" id="CINEMA_NAME">
									<!-- 데이터 베이스에서 영화관 리스트만 뽑아와서 forEach로 뿌려주기 -->
									<option value="cgv 강남">cgv 강남</option>
									<option value="megabox 강남">megabox 강남</option>
									<option value="lotte cinema 신사역">lotte cinema 신사역</option>
									<option value="cgv 수원역">cgv 수원역</option>
								</select>
								<h3 class="mt3">Movie</h3>
								<!-- 영화 종류 -->
								<select name="CINEMA_MOVIE" id="CINEMA_MOVIE">
									<!-- 영화관 정보에 따라서 데이터베이스에서 영화목록만 받아와서 forEach로 뿌려주기 -->
									<option>Dead pool</option>
									<option>THE BATTLE OF ALGIERS (DI ALGERI)</option>
									<option>LORD OF THE RINGS: THE RETURN OF THE KINGS</option>
									<option>어벤져스</option>
								</select>
								<h3 class="mt3">TIME</h3>
								<!-- 상영시간 -->
								<select name="CINEMA_MOVIE_TIME" id="CINEMA_MOVIE_TIME">
									<option class="btn_time" value="11:50">
											11:50
									</option>
									<option class="btn_time" value="13:40">
											13:40
									</option>
									<option class="btn_time" value="16:35">
											16:35
									</option>
									
								</select>
							</div>
							<input type="button" name="next" class="next action-button" value="Next" />
						</fieldset>
						<fieldset class="seat-content">
							<div class="wpc-content">
								<h3 class="seat_title">SCREEN</h3>
								<div id="seat-map"></div>
								<div id="legend"></div>
							</div>
							<input type="button" name="previous" class="action-button previous" value="Previous" />
							<input type="button" name="payment" id="payment" class="payment action-button" value="payment" />
						</fieldset>

<div id="seatIds">
</div>
<script>
$('#seat-map > div > div').click(function(){
	var seatId = $('this').attr('id');
	if(seatId){
		str ='"<input type="hidden" name="CINEMA_MOVIE_SEAT" value="'+seatId+'"/>';
		$('#seatIds').appen(str)
	}
	
	$.each('#seatIds input',function(i,val){
		
	})
	
});
</script>

						<!-- 좌석 정보 -->
						<input type="hidden" name="CINEMA_MOVIE_SEAT" id="CINEMA_MOVIE_SEAT" value="4_9">
					</form>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12 order_sidebar ph0">
				<h2>Your Information</h2>
				<div class="order-details">
					<span> Location:</span>
					<p id="locationp">Tenguu Cinema Tysons corner</p>
					<span>Time:</span>
					<p>2016.3.8 18:30</p>
					<span>Seat: </span>
					<ul id="selected-seats"></ul>
					<div>
						Tickets: <span id="counter">0</span>
					</div>
					<div>
						Total: <b><span id="total">0</span></b> 
					</div>
					<a href="#" class="close-window"><i class="fa fa-times"></i></a>
				</div>
			</div>
		</div>
	</div>
</div>




<script>

	$(document).ready(function(){

		
		function aaa() {
			var seatNum = 0;
			$('.seatCharts-seat').click(function(){
				if($(this).hasClass('selected')){
					seatNum =$(this).attr("id");
					$('#seatNum').val(seatNum);
				}
			})			
			
		}
		aaa();
		
		
		$(".btn_time").on('click',function(){
			return false;
		});
		
		/* $(".next").click(function(event){
			
			
			
		});
		 */
		 
		 
		 /* 결제창 불러오고 실행하는 부분 */
		 var IMP = window.IMP; 
		 IMP.init("imp68666223");
		 
		 
		 $(".payment").on('click',function(){
			 alert($('#MB_ID').val());
			 IMP.request_pay({
				    pg : 'inicis',
				    pay_method : 'card',
				    merchant_uid : 'merchant_' + new Date().getTime(),
				    name : $('#CINEMA_MOVIE').val(),
				    amount : 1000,
				    buyer_email : 'worua99@nate.com',
				    buyer_name : $('#MB_ID').val(),
				    buyer_tel : '010-2030-1266',
				    buyer_addr : '서울특별시 강남구 삼성동',
				    buyer_postcode : '123-456'
				}, function(rsp) {
				    if ( rsp.success ) {
				    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
				    	jQuery.ajax({
				    		url: "reserve.do", // 가맹점 서버
				            method: "GET",
				            headers: { "Content-Type": "application/json" },
				            data: {
				            	MB_ID : $('#MB_ID').val(),
				            	CINEMA_NAME : $('#CINEMA_NAME').val(),
				            	CINEMA_MOVIE : $('#CINEMA_MOVIE').val(),
				            	CINEMA_MOVIE_SEAT : $('#CINEMA_MOVIE_SEAT').val(),
				            	CINEMA_MOVIE_TIME : $('#CINEMA_MOVIE_TIME').val(),
				            	CINEMA_SECTION : "임시 상영관"
				            },
				            success : function(result){
				            	var msg = '결제가 완료되었습니다.';
						        msg += '아이디 : ' + $('#MB_ID').val();
						        msg += '영화관 : ' + $('#CINEMA_NAME').val();
						        msg += '영화제목 : ' + $('#CINEMA_MOVIE').val();
						        msg += '좌석 : ' + $('#CINEMA_MOVIE_SEAT').val();
						        msg += '시간 : ' + $('#CINEMA_MOVIE_TIME').val();

				    			alert(msg);
				            	location.href="";//반환값 지정해서 페이지 리로딩
				            }
				    	});
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;

				        alert(msg);
				    }
				});
		 });
		 
			    		
		location.href="#";
	});
</script>