<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="${path }/resources/css/funding/detail.css?ver=6"/>
	
	<div class="container-fluid col-md-12" id="detail-header">
    	<div class="bg-image" style="background-image: url(${path}/resources/images/signup2.jpg);"></div>
        <i>
        	<c:out value="${f.category }"/>
        </i>
        <h1><c:out value="${f.subContent }"/></h1>
    </div>
    <section>
         <div class="container">
            <div class="col-md-12">
                <section class="row first-row">
                    <div class="col-md-7 img-container" style="height: 700px;">
                        <img src="${path }/resources/images/leftphoto.png" class="arrow" style="left: 20px;">
                        <img src="${path }/resources/images/${f.mainImg}" class="images"> 
                        <img src="${path }/resources/images/rightphoto.png" class="arrow" style="right: 20px;">
                    </div>
                    <div id="p-table" class="col-md-5" style="height: 700px;">
                        <caption>
                            <h5>
                            	<c:set value="<%=new java.util.Date() %>" var="now"/>
								<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="today"/>
								<fmt:parseNumber value="${f.endDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"/>
											${endDate-today} 일 남음
								
                            </h5>
                        </caption>
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="2">DESIGNER &nbsp;&nbsp;&nbsp; ${f.designer }</th>
                                </tr>
                            </thead>
                            <tbody id="main-info">
                                <tr>
                                    <td>목표금액</td>
                                    <td>
	                                    <p>
	                                    	<fmt:formatNumber value="${f.targetPrice }" type="number" />
	                                    </p><i>원</i>
	                                  </td>
                                </tr>
                               <tr>
                                   <td>참여인원</td>
                                    <td><p>00</p><i>명 참여</i></td>
                                </tr>
                                <tr>
                                    <td>PRICE</td> 
                                    <td><p>500,000</p><i>원</i></td> 
                                </tr>
                                <tr>
                                    <td>참여율</td>
                                    <td><p>50</p><i>% 달성</i></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <svg width="100%" height="3px" xmlns="http://w3.org/2000/svg" version="1.1" class="bar-container">
                                            <rect x="0" y="0" width="50%" height="3px" class="bar"/>
                                        </svg>
                                    </td>
                                </tr>
                                
                            </tbody>
                            <tbody id="sub-info">
                                <tr>
                                    <td>0000원 이상</td> 
                                    <td><p>의자 1개</p><i></i></td> 
                                </tr>
                                <tr>
                                    <td>00000원 이상</td> 
                                    <td><p>의자+테이블</p><i></i></td> 
                                </tr>
                                <tr>
                                    <!-- <td>구매 수량</td> 
                                    <td>
                                        <button type="button">-</button>
                                        <input type="text" value="1">
                                        <button type="button">+</button>
                                    </td> -->
                                    <td></td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2">
                                        <button id="buy-btn">프로젝트 밀어주기</button>
                                    </td>
                                   
                                </tr>
                            </tfoot>
                        </table>

                    </div>
                </section>
                <ul class="row">
                    <li class="col-md-4"><span class="underline" onclick="select(1);">프로젝트 소개</span></li>
                    <li class="col-md-4"><span onclick="select(2);">참여내역</span></li>
                    <li class="col-md-4"><span onclick="select(3);">후기</span></li>
                </ul>
                <section>
                    
                    <div class="detail-select" id="project">
                        <p>
							${f.detail }
                            
                        </p>
                    </div>
                    <div class="detail-select" id="purchase">
                        <p class="tx_total">총 <strong class="num">280</strong>개의 참여내역과 응원메시지가 있습니다.</p>
                            <ul class="lst_sponser">
                                <li>
                                    <span class="img_thm">
                                        <img src="" width="50" height="50" alt="wwiiw_img">
                                    </span>
                                    <div class="sponser_info">
                                        <p>
                                            <span class="wordBreak">이 프로젝트의 성공을 응원합니다.</span>
                                        </p>
                                        <span class="date">2020.05.10 20:31</span>
                                    <div>                    
                                        <span class="nick"><a style="text-decoration:none">wwiiw님</a></span>
                                        <span class="price"><strong class="num">45,000</strong>원 참여</span>
                                    </div>
                                </li>
                            </ul>
                    </div>
                    <div class="detail-select" id="review">
                        <div id="insertReview" class="col-md-12 row">
                            <textarea name="" id="insertText" class="col-md-10" cols="30" rows="10"></textarea>
                            <button id="insertTextBtn" class="col-md-2">등록</button>
                            <div id="commentList" class="col-md-12">
                            </div>
                        </div>
                        <!-- <ul class="lst_sponser">
                            <li>
                                <span class="img_thm">
                                    <img src="" width="50" height="50" alt="wwiiw_img">
                                </span>
                                <div class="sponser_info">
                                    <p>
                                        <span class="wordBreak">상품 후기</span>
                                    </p>
                                    <span class="date">2020.05.10 20:31</span>
                                <div>                    
                                    <span class="nick"><a style="text-decoration:none">wwiiw님</a></span>
                                    <span class="price"><strong class="num">****</strong>별점</span>
                                </div>
                            </li>
                        </ul> -->
                    </div>

                </section>
            </div>
            
            
        
            
        </div>

    </section> 
    <script>
        // var loginMember=${loginMember};
        function select(menu){

            var project = $("#project");
            var purchase = $("#purchase");
            var review = $("#review");
            $(event.target).parent().siblings("li").children("span").removeClass("underline");
            $(event.target).addClass("underline");
            project.css("display","none");
            purchase.css("display","none");
            review.css("display","none");
            switch(menu){
                case 1: project.css("display","block");
                        break;
                case 2: purchase.css("display","block");
                        break;
                case 3: review.css("display","block");
                        break;
            }
        }

        // 리뷰
        // 로그인한 사람 아이디
        let loginId = "{loginMember.userId}";
        // 로그인 되어 있으면 클릭 가능, 아니면 안됨
        $(function() {
            if('${loginMember == null}'=='true') {
                $("#insertReview").click(function() {
                    console.log("되니?");
                    alert("로그인을 해주세요!");
                })
            } else {
                $("#insertTextBtn").click(function() {
                    if($("#insertText").val() != null && $("#insertText").val() != '') {
                        let time = new Date();
                        time = formatDate(time);
                        // 아이디, 작성 시간, 수정, 삭제 => p1
                        let p1 = $("<p>").append($("<span>").addClass("commentUserId")
                            .html('${loginMember.userId}'))
                            .append($("<span>").addClass("commentTime").html(time))
                            .append($("<span>").addClass("commentDelete").html('삭제'))
                            .append($("<span>").addClass("commentUpdate").html('수정'))
                            .append($("<span>").addClass("reComment").html("댓글"));
                        // 내용 => p2
                        let p2 = $("<p>").html($("#insertText").val());
                        // 합친다.
                        let div = $("<div>").addClass("comment").append(p1).append(p2);
                    
                        $("#commentList").append(div);
                        $("#insertText").val('');
                    } else {
                        alert("댓글을 입력해주세요.");
                    }
                    // reCommentCheck(loginId);
                    reCommentOk();
                })
            }
        })

        function formatDate(date) {
            var year = date.getFullYear();              //yyyy
            var month = (1 + date.getMonth());          //M
            month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
            var day = date.getDate();                   //d
            day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
            // let hour = date.getHours();
            // let minutes = date.getMinutes();
            // let seconds = date.getSeconds();
            // return  year + '.' + month + '.' + day + "-" + hour + ":" + minutes + ":" + seconds;
            return  year + '.' + month + '.' + day;
        }

        let reCommentCheckNum = 0;

        // 대댓글 id 체크
        // function reCommentCheck(id) {
        //     if(id != "${f.userId}") {
        //         $(".reComment").css("display","none");
        //     }
        // }
        // reCommentCheck(loginId);
        // 대댓글 달아주기
        function reCommentOk() {
            $(".reComment").off("click").on(
					"click",
					function() {
                        
                        // textarea 생성
                        let reTextarea = $("<textarea>").attr({"class":"reInsertText col-md-10","cols":"30","rows":"10"});
                            let reBtn = $("<button>").attr({"class":"reInsertTextBtn col-md-2"}).html("등록");
                            let reDiv = $("<div>").attr({"class":"reCommentInsertDiv col-md-12 row"});
                            reDiv.append(reTextarea).append(reBtn);
                            $(this).parent().parent().append(reDiv);
                            // let reDivList = $("<div>").attr({"class":"reCommentList col-md-12"});
                            // $(this).parent().parent().append(reDivList);
                        reCommentCheckNum++;
                        $(".reInsertTextBtn").off("click").on(
                            "click",
                            function() {
                                let time = new Date();
                                time = formatDate(time);
                                // 아이디, 작성 시간, 수정, 삭제 => p1
                                let p1 = $("<p>").append($("<span>").addClass("reCommentUserId")
                                    .html("담당자"))
                                    .append($("<span>").addClass("reCommentTime").html(time))
                                    .append($("<span>").addClass("reCommentDelete").html('삭제'))
                                    .append($("<span>").addClass("reCommentUpdate").html('수정'));
                                // 내용 => p2
                                let p2 = $("<p>").html($(this).prev().val());
                                // 합친다.
                                let div = $("<div>").addClass("rereComment").append(p1).append(p2);

                                $(this).parent().parent().append(div);

                                $(this).prev().val('');
                                $(this).parent().hide();
                            })
                    })
        }
        reCommentOk();


    </script>

    <script src="${path }/resources/js/funding/detail.js?ver=1"></script>
		

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>