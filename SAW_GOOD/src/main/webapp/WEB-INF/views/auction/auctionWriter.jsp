<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet"
	href="${path }/resources/css/auction/auctionWrite.css" />

<!-- 오늘 날짜 세팅 -->
<c:set value="<%=new java.util.Date()%>" var="now" />
<fmt:parseNumber value="${now.time / (1000*60*60*24)}"
	integerOnly="true" var="today"></fmt:parseNumber>
<!-- 가져온 날짜 세팅 -->
<fmt:parseNumber value="${a.acEndDate.time / (1000*60*60*24)}" integerOnly="true" var="acEndDate"/>
<section>
        <!-- <div class="container-fluid" style="margin-top: 50px;"> -->
        <div class="container" style="margin-top: 50px;">
            <div style="margin-bottom: 30px;">
                <h2 style="text-align: center; font-size: 20px;">상품 정보입력</h2>
            </div>

            <div class="detailArea">
                <div class="row">
                    <div class="col-md-6">
                       <!--  <img src="http://placehold.it/600x500" class="bigImg"> -->
                        <div id="main">
                        </div>
                        <div class="addImg">
                            <ul>
                           <!--      <li class="img-record">
                                    <img src="http://placehold.it/600x500" class="subImg">
                                </li>
                                <li class="img-record">
                                    <img src="http://placehold.it/600x500" class="subImg">
                                </li>
                                <li class="img-record">
                                    <img src="http://placehold.it/600x500" class="subImg">
                                </li>
                                <li class="img-record">
                                    <img src="http://placehold.it/600x500" class="subImg">
                                </li>
                                <li class="img-record">
                                    <img src="http://placehold.it/600x500" class="subImg">
                                </li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="headingArea row">
                            <div class="col-md-3" style="padding : 0; padding-top: 5px;">
                                <h2>경매 제목</h2>
                            </div>
                            <div class="col-md-9">
                                <input type="text" id="auction-name" class="pilsu"
                                        name="headTitle" placeholder="제목 입력" value="">
                            </div>
                        </div>
                        <div class="record_container">
                            <div class="row">
                                <div class="record col-md-3">
                                    <span>상품명</span>
                                    <span>시작가격</span>
                                    <span>가격상승 단위</span>
                                    <span>즉시낙찰가격</span>
                                    <span>카테고리</span>
                                    <span>상품상태(S~D)</span>
                                    <span style="margin-bottom: 15px;">종료일자</span>
                                </div>
                                <div class="record col-md-3" style="width: 750px;">
                                    <strong>
                                        <input type="text" id="pro-name" class="pilsu"
                                        name="acTitle" placeholder="상품명 입력" value="">
                                    </strong>
                                    <strong>
                                        <input type="text" id="start-price" class="pilsu"
                                        name="acStartPrice" placeholder="시작가격 입력" value="">
                                    </strong>
                                    <strong style="width: 300px;">
                                        <input type="text" id="point-price" class="pilsu"
                                        name="acPointPrice" placeholder="상승가격 입력 (1=1,000원)" value="" style="width: 200px">
                                        천원
                                    </strong>
                                    <strong>
                                        <input type="text" id="now-price" class="pilsu"
                                        name="acNowPrice" placeholder="즉시낙찰가격" value="">
                                    </strong>
                                    <strong>
                                        <select id="category" name="category" class="selectStyle">
                                            <option value="0">category</option>
                                            <option value="1">bed</option>
                                            <option value="2">couch / chair</option>
                                            <option value="3">table / desk</option>
                                            <option value="4">carpet / lug</option>
                                            <option value="5">storage</option>
                                            <option value="6">others</option>
                                        </select> 
                                    </strong>
                                    <strong style="width: 300px;">
                                        <label> 
                                            <input type="radio" name="proRank"
                                            value="S"> S급
                                        </label>
                                        <label> 
                                            <input type="radio" name="proRank"
                                            value="A"> A급
                                        </label> 
                                        <label> 
                                            <input type="radio" name="proRank"
                                            value="B"> B급
                                        </label>  
                                        <label> 
                                            <input type="radio" name="proRank"
                                            value="C"> C급
                                        </label> 
                                        <label> 
                                            <input type="radio" name="proRank"
                                            value="D"> D급
                                        </label> 
                                    </strong>
                                    <strong style="margin-bottom: 0; width: 300px;">
                                        <label> 
                                            <input type="radio" name="finalDate"
                                            value="S"> 10일
                                        </label>
                                        <label> 
                                            <input type="radio" name="finalDate"
                                            value="A"> 20일
                                        </label> 
                                        <label> 
                                            <input type="radio" name="finalDate"
                                            value="B"> 30일
                                        </label>
                                    </strong>
                                </div>
                            </div>
                    
                            <div class="productAction">
                                <div class="product-button">
                                    <!-- <button class="main-poto-btn">메인사진 등록</button> -->
                                    <div class="filebox">
                                    	<label for="main_file">메인사진 등록</label>
                                    	<input type="file" id="main_file">
                                    	<label for="serve_file" style="background:rgb(238, 152, 124);">서브사진 등록</label>
                                    	<input type="file" id="serve_file">
                                    </div>
                                    <!-- <button class="serve-poto-btn">서브사진 등록</button> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>

            <div id="detail">
                <div class="tab">
                    <h2 style="text-align: center; font-size: 20px;">상품상세 정보입력</h2>
                </div>
                <div class="row">
                    <div class="col-md-6 pro-info-wrap">
                        <h2>information</h2>
                        <ul id="pro-info">
                            <li>
                                <div class="pro-info-title">치수(단위 : mm)</div>
                                <div class="pro-info-content">
                                    &nbsp&nbsp가로 : <input type="text" id="pro-info-hor" class="pilsu"
                                    name="hor" placeholder="가로" 
                                    style="width:70px;" value="">
                                    &nbsp&nbsp세로 : <input type="text" id="pro-info-ver" class="pilsu"
                                    name="hor" placeholder="세로"
                                    style="width:70px;" value="">
                                    &nbsp&nbsp높이 : <input type="text" id="pro-info-height" class="pilsu"
                                    name="height" placeholder="높이"
                                    style="width:70px;" value="">
                                </div>
                            </li>
                            <li>
                                <div class="pro-info-title">브랜드</div>
                                <div class="pro-info-content">
                                    &nbsp&nbsp ※ 위에 상품정보에서 입력
                                </div>
                            </li>
                            <li>
                                <div class="pro-info-title">구매일</div>
                                <div class="pro-info-content">
                                    &nbsp&nbsp<input type="date" name="buyDate" value="">
                                </div>
                            </li>
                            <li>
                                <div class="pro-info-title">새 상품 사이트</div>
                                <div class="pro-info-content">
                                    &nbsp&nbsp<input type="text" id="pro-url" class="pilsu"
                                    name="proUrl" placeholder="새 새상품 사이트 입력" value="">
                                </div>
                            </li>


                        </ul>
                        <h2>content</h2>
                        <table style="margin-bottom: 40px;">
                            <colgroup>
                                <col style="width:100px;">
                                <col style="width:auto">
                            </colgroup>
                            <!-- <thead>
                                <tr>
                                    <th colspan="2" class="pro-">product content
                                    </th>
                                </tr>
                            </thead> -->
                            <tbody>
                                <tr>
                                    <td>제품명</td>
                                    <th>※ 위에 상품정보 상품명 입력</th>
                                </tr>
                                <tr>
                                    <th style="vertical-align: middle;">제품설명</th>
                                    <td>
                                        <p><textarea cols="70" rows="3" name="proContent"></textarea></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>제품상태</th>
                                    <td>※ 위에 상품정보 체크
                                    </br></br>※ 아래의 "STATUS RANK 목록"을 확인하시기 바랍니다.
                                    </td>
                                </tr>
                          
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-6 pro-info-wrap" style="margin-top: 70px;">
                        <h2 style="margin-top: 15px;">status rank
                        </h2>
                        <table>
                            <colgroup>
                                <col style="width:100px;">
                                <col style="width:auto">
                            </colgroup>
                            <!-- <thead>
                                <tr>
                                    <th colspan="2" >Product status</th>
                                </tr>
                            </thead> -->
                            <tbody>
                                <tr>
                                    <th>S급</th>
                                    <td>
                                        사용하지 않은 제품입니다. 상자,
                                        케이스가없는 사용하지 않은 제품도 포함
                                    </td>
                                </tr>
                                <tr>
                                    <th>A급</th>
                                    <td>
                                        중고품 중에서도 사용감을 느낄 수없는 아주 깨끗한 제품입니다.
                                         흠집, 오염이 거의없는 중고품이라고 생각합니다.
                                    </td>
                                </tr>
                                <tr>
                                    <th>B급</th>
                                    <td>
                                        중고품 중에서도 깨끗한 상품입니다.
                                        약간의 상처 나 얼룩이 있지만, 사용감이 적게 느껴지는 제품입니다.
                                    </td>
                                </tr>
                                <tr>
                                    <th>C급</th>
                                    <td>
                                        상처, 얼룩이 조금 있고,
                                        사용 흔적을 느낄 수 있지만 상태가 좋은 일반적인 중고품입니다.
                                    </td>
                                </tr>
                                <tr>
                                    <th>D급</th>
                                    <td>
                                        상처, 얼룩이 많지만, 사용에 문제가없는 중고품입니다.
                                    </td>
                                </tr>
                          
                            </tbody>
                        </table>
                        <div class="textWriter">
                            <div class="product-button">
                                <button class="writer-btn">글 작성</button>
                                <button class="cancel-btn">취소</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />