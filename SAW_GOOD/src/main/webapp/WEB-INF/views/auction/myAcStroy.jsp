
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<link rel="stylesheet" href="${path }/resources/css/mypage/myAcHistroy.css" />

<style>
	.noList {
		margin-top:50px;
	}
</style>

<div class="container">
	<div class="row">
		<div class="col-md-2">
			<div id="info">
				<div id="infoSub1">
					<img id="profileImg"
						src="../image/KakaoTalk_20200423_153013027.jpg" alt="">
					<p>${member.userId }님</p>
				</div>
				<div id="infoSub2">
					<p>쏘:굿 페이 포인트</p>
					<P><fmt:formatNumber type="number" value="${member.point }"/>원</P>
				</div>
				<div id="infoSub3">
					<button id="cashBtn" class="btn">충전</button>
				</div>
			</div>
			<div id="infoCount" class="center">
				<p>총 이용 내역</p>
				<p>
					<span id="useCount">6건</span> <span>&nbsp;l&nbsp;</span> <span
						id="usePrice">1,071,000원</span>
				</p>
			</div>
			<div id="userCategory" class="center">
				<p>회원정보</p>
				<p>장바구니</p>
				<p onclick="openSub()">결재내역</p>
				<div id="subNav" style="display: none;">
					<form id="subFormProduct" action="${path }/mypage/ph.do"
						method="post">
						<p id="productClick" name="product" class="click">new product</p>
					</form>
					<form id="subFormFunding" action="${path }/mypage/funding.do"
						method="post">
						<p id="fundingClick" name="funding" class="click">funding</p>
					</form>
					<form id="subFormAuction" action="${path }/mypage/auction.do"
						method="post">
						<p id="auctionClick" name="auction" class="click">auction</p>
					</form>
				</div>
			</div>
		</div>


		<div class="col-md-10 ilnine">

			<div id="useList" class="col-md-12 center">
				<!-- 현재상태 보여주기 -->
				<!-- <div id="checkStatus">
                        <div id="statusDriving" class="checkStatusclass">
                            <p>배송중</p>
                        </div>
                        <div id="statusArrive" class="checkStatusclass">
                            <p>배송완료</p>
                        </div>
                        <div id="statusCancle" class="checkStatusclass">
                            <p>취소/환불</p>
                        </div>
                    </div> -->

				<!-- 달력검색 -->
				<div id="monthSearch">
					<div class="list" id="list1">
						<div id="monthListBtn" class="inline">
							<span>12월</span> <span>1월</span> <span>2월</span> <span>3월</span>
							<span>4월</span> <span>5월</span>
						</div>
					</div>
					<div class="list" id="list2">
						<input type="month" name="startMonth" id="startMonth"> - <input
							type="month" name="endMonth" id="endMonth">
					</div>
					<div class="list" id="list3">
						<select>
							<option>전체상태</option>
							<option>배송중</option>
							<option>배송완료</option>
							<option>구매완료</option>
							<option>교환/환불/취소</option>
						</select>
					</div>
					<div class="list" id="list4">
						<input type="submit" value="조회">
					</div>
				</div>
			</div>


			<c:if test="${list.size() == 0 }">
				<p class="noList center">결재내역이 없습니다.<p>
			</c:if>
			<c:if test="${list.size() != 0 }">
			
			<div id="list">

				<c:forEach var="a" items="${list }">
					<div class="product row">
						<div class="col-md-2 productImg">
							<img
								src="${path }/resources/upload/images/auctin/bed.jpg"
								alt="">
						</div>
						<div class="col-md-8 pSpace spanSpace">
							<p class="titleInfo">
								<span class="brand">${a.acBrand }</span> <span
									class="productName">${a.acProName }</span>
							</p>
							
							<p class="priceDate">
								<span class="productPrice">
									<fmt:formatNumber type="number" value="${a.acNowPrice}"/>원
								</span>
								<span class="sendDate">${a.acEndDate }</span>
							</p>

							<!-- step1 : 상품준비중
		                        step2 : 상품 발송
		                        step3 : 배달중
		                        step4 : 배달완료
		                        step5 : 구매완료
		                        stepX : 교환/반품 완료  -->

							<p class="sendCheck">
							
								<c:if test="${a.acStatus == 0 }">
									<span class="sendStep1 sendStep">승인대기중</span>
								</c:if>
								<c:if test="${a.acStatus == 1 }">
									<span class="sendStep2 sendStep">경매진행중</span>
								</c:if>
								<c:if test="${a.acStatus == 2 }">
									<span class="sendStep3 sendStep">입찰확인중</span>
								</c:if>
								<c:if test="${a.acStatus == 3 }">
									<span class="sendStep4 sendStep">입찰완료</span>
								</c:if>

							</p>

							<!-- status1 : 배송전
		                        status2 : 구매확정 전
		                        status3 : 구매확정 후
		                        statusX : 취소  -->

						 	<p class="confirmStatus status1">
						 			<c:if test="${a.acStatus == 0 }">
										<span>관리자 승인대기중입니다.</span></br>
										<span>조금민 기다려주십시오.</span>								
									</c:if>
									<c:if test="${a.acStatus == 1 }">
										<span>경매가 진행중입니다.</span></br>
										<span>경매보기 버튼을 클릭하셔서 확인하시기 바랍니다.</span>						
									</c:if>
									<c:if test="${a.acStatus == 2 }">
										<span>경매가 완료되었습니다.</span></br>
										<span>입찰상태 확인 후 포인트 지급예정입니다.</span>					
									</c:if>							
									<c:if test="${a.acStatus == 3 }">
										<span>고객님의 경매가 끝났습니다.</span></br>
										<span>포인트를 확인해주시기 바랍니다.</span>						
									</c:if>
									<c:if test="${a.acStatus == 4 }">
										<span>고객님의 경매상품이 승인거부 되었습니다.</span></br>
										<span>관리자에게 문의 또는 상품정보를 정확하게 입력해 주십시오.</span>						
									</c:if>
							</p>

						</div>
						<div class="col-md-2 center inline statusBtn1">
							<form action="" method="post">
								<c:if test="${a.acStatus !=0 }">
									<input type="button" class="productBtn acDetail" value="경매보기">
								</c:if>	
								<c:if test="${a.acStatus ==1 || a.acStatus ==0}">
									<input type="button" class="productBtn acDelete" value="경매삭제">
								</c:if>
								<c:if test="${a.acStatus == 2 || a.acStatus == 3 || acStatus ==4 }">
									<input type="button" class="productBtn acListDelete" value="경매내역삭제">
								</c:if>						
								<input type="hidden" class="acNo" name="acno" value="${a.acBoardNo }">
							</form> 
						</div>
					</div>
				</c:forEach>
			</div>
			</c:if>
		</div>
		
	</div>
</div>

<script>
let userId = "${loginMember.userId}";

	function openSub() {
		if($("#subNav").css('display') == 'none') {
			$("#subNav").show();
		} else {
			$("#subNav").hide();
		}
	}

 	$("#productClick").on("click", function() {
		$("#subFormProduct").submit();
	}) 
	
	$("#auctionClick").on("click", function() {
		$("#subFormAuction").submit();
	}) 
	$("#fundingClick").on("click", function() {
		$("#subFormFunding").submit();
	}) 
	
	$(".acDetail").click(function(){
		console.log("안됨?");
		console.log($(this).siblings("input.acNo").val());
		$(this).parent().attr('action','${path}/auction/detail?acBoardNo='+$(this).siblings("input.acNo").val());
		$(this).parent().submit();
	})
	
	$(".acDelete").off("click").on("click", function() {
		$(this).parent().attr('action','${path}/mypage/extend');
		$(this).parent().submit();
	})
	$(".acListDelete").off("click").on("click", function() {
		$(this).parent().attr('action','${path}/mypage/review');
		$(this).parent().submit();
	})

</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />