<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
  <title>주문내역</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
        crossorigin="anonymous" />
  <link rel="stylesheet" href="/css/hwa/orderDetail.css"/><!-- css -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><!-- ajax -->

  <style>
    * {
      margin: 0;
      padding: 0;
    }
    body {
      font-family: "나눔바른고딕OTF", "돋움";
    }

    #mypageTop {
      height: 150px;
    }

    #member {
      height: 120px;
      background: rgba(231, 230, 230, 0.673);
    }

    #user_grade {
      margin-left: 500px;
      width: 500px;
      /* background: rgba(231, 230, 230, 0.673); */
    }

    #page_point {
      height: 30px;
      margin-left: 500px;
    }

    #container {
      display: flex;
      flex-direction: row;
    }

    #menu {
      margin: 20px;
      flex: 1;
      margin-left: 250px;
      border-right: 1px solid rgba(231, 230, 230, 0.673);
    }

    #menu p {
      margin-top: 20px;
      margin-bottom: 20px;
      color: #777777;
    }

    #page {
      margin: 20px;
      flex: 9;
      min-height: 600px;/* 주문내역 추가 */
      margin-right: 100px;/* 주문내역 추가 */
      margin-left: 30px;/* 주문내역 추가 */
    }
  </style>
</head>

<body>
<jsp:include page="../header.jsp" />

<div class="mypage">
  <div id="mypageTop">
    <div id="page_point">
      <p>홈 > 마이페이지 > 1:1상담내역</p>
    </div>
    <div id="member">
      <div id="user_grade">
        <h1>회원 등급 표시</h1>
      </div>
    </div>
  </div>

  <div id="container">
    <div id="menu">
      <p>주문/배송현황</p>
      <p>취소/교환/환불</p>
      <p>뷰티포인트</p>
      <p>찜한 제품</p>
      <p>내 리뷰</p>
      <p>1:1 상담내역</p>
      <p>회원정보 수정</p>
      <p>배송지 관리</p>
    </div>
    <div id="page">

      <div class="section-title-wrap bottom-line">
        <div class="section-title">
          <h3 class="title">주문/배송 조회</h3>
        </div>
      </div>


      <h3 class="subTitle2">주문정보</h3>
      <div class="tableType noLine">
        <table>
          <caption>주문 정보</caption>
          <colgroup>
            <col style="width:15%;">
            <col style="width:35%;">
            <col style="width:15%;">
            <col style="width:35%;">
          </colgroup>
          <tbody>
          <tr>
            <th>주문번호</th><td colspan="3">19880605</td>
          </tr>
          <tr>
            <th scope="col">주문자(아이디) / 회원등급</th>
            <!-- 옴니플랫폼 cstmid -> custWebId로 변경 by ljm -->
            <td>이현화(macbaansuk) / WELCOME</td>
            <th scope="col">이메일</th>
            <td>lee95812@naver.com</td>
          </tr>
          <tr>
            <th scope="col">주문일</th>
            <td>
              2023.05.07 16:11:30
            </td>
            <th scope="col">결제완료일</th>
            <td>
            </td>
          </tr>
          <tr>

            <th scope="col">결제방법</th>
            <td>
              무통장입금(에스크로)
            </td>
            <th scope="col">영수증여부</th>
            <td>Y</td>

          </tr>
          <tr>
            <th scope="col">주문상태</th>
            <td class="state">
              주문접수
            </td>
            <th scope="col">송장번호</th>
            <td>
            </td>
          </tr>
          <tr>
            <!-- <th scope="col">배송일</th>
            <td></td> -->
            <th scope="col">배송완료일</th>
            <td>

            </td>


            <th scope="col"></th>
            <td></td>

          </tr>
          </tbody>
        </table>
     </div>




      <h3 class="subTitle2">내 주문상품정보</h3>
      <div class="tableType noLine noPdg">
        <table>
          <caption>내 주문상품정보</caption>
          <colgroup>
            <col style="width:100px;">
            <col>
            <col style="width:5%;">
            <col style="width:8%;">
            <col style="width:8%;">
            <col style="width:8%;">
            <col style="width:8%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:8%;">
            <col style="width:10%;">
          </colgroup>
          <thead>
          <tr>
            <th scope="col" colspan="3">제품명</th>
            <th scope="col">수량</th>
            <th scope="col">판매가</th>
            <th scope="col">일반결제</th>
            <th scope="col">할인금액</th>
            <th scope="col">적립금 사용</th>
            <th scope="col">적립포인트</th>
            <th scope="col">상태</th>
            <th scope="col">구매후기</th>
          </tr>
          </thead>
          <tbody class="center">


          <tr>
            <td>
              <a href="/kr/ko/ProductView.do?prdSeq=34497">
                <img src="https://images.innisfree.co.kr/upload/product/34497_p_S_107.jpg?T202305090627" onerror="this.src='/kr/ko/resources/error/img/125x125.png'" alt="블랙티 유스 인핸싱 앰플 [대용량]" width="100px">
              </a>
            </td>
            <td class="pdtCont">
              <a href="/kr/ko/ProductView.do?prdSeq=34497" target="_blank">
                                    <span class="name">
                                        블랙티 유스 인핸싱 앰플 [대용량]50mL
                                    </span>
                <span class="opt">제품코드: 34497</span>
              </a>
            </td>
            <td></td>
            <td>1</td>
            <td>38,080원</td>
            <td>38,080원</td>
            <td>
              0원<br>	<!-- 상품쿠폰할인금액+장바구니쿠폰할인 + 상품더블쿠폰 할인금액 + 장바구니 더블쿠폰 할인금액 -->
            </td>
            <td>0P</td>
            <td>
              380P
            </td>
            <td>
              결제대기
            </td>
            <td></td>

          </tr>
          </tbody>
        </table>
      </div>


      <div class="myOrderPrice">
        <div class="orderPrice">
          <dl>
            <dt>총 주문 금액</dt>
            <dd><span class="num">38,080</span>원</dd>
          </dl>
          <dl>
            <dt>할인 및 차감금액
            </dt>
            <dd><span class="num">- 0</span>원</dd> <!-- 20210506 할인 및 차감금액에서 뷰포 삭제 -->
          </dl>


          <dl>
            <dt>배송비</dt>
            <dd>무료</dd>
          </dl>


          <dl>
            <dt>적립 뷰티포인트</dt>
            <dd>
              <span class="num">+380</span>P
              <br>(기본 : 380P
              , 추가 : 0P)
            </dd>
          </dl>
          <div class="totalPrice">
            <dl>
              <dt>최종 결제 금액</dt>
              <dd class="total"><span class="num">38,080</span>원</dd>
            </dl>
          </div>
        </div>
      </div>
      <div class="helpWrap">
        <ul class="bulListType">
          <li>
            적립금은 배송완료(또는 수취확인) 후 15일째 되는 날 적립됩니다.
          </li>
          <li>
            주문접수 상태의 주문은 주문일에서 3일간 보관되며, 이후 자동 취소처리 됩니다.
          </li>
          <li>
            결제완료 후 배송지 변경은 어렵습니다. 취소 후 변경 주소로 재 주문하여 주세요.
          </li>
          <li>
            상태에 따른 주문 취소 방법<br>
            [결제완료]: 마이페이지에서 취소신청이 가능합니다.<br>
            [상품준비중]: 고객상담실을 통해 문의 시, 출고 확정 전인 경우만 취소가 가능합니다.
          </li>
          <li>
            샘플마켓 제품은 고객센터(02-737-8945)문의를 통해 교환/반품이 가능합니다.
          </li>
        </ul>
      </div>






      <h3 class="subTitle2">
        결제정보
      </h3>
      <div class="tableType noLine">
        <table>
          <caption>결제정보</caption>
          <colgroup>
            <col style="width:175px;">
            <col style="width:30%;">
            <col style="width:175px;">
            <col>
          </colgroup>
          <tbody>
          <tr>

            <th scope="row">결제방법</th>
            <td colspan="3">카드결제</td>

          </tr>

          <tr>
            <th scope="row">결제금액</th>
            <td colspan="3">38,080원</td>
          </tr>
          <tr>
            <th scope="row">입금은행</th>
            <td>국민</td>
            <th scope="row">입금계좌번호</th>
            <td>56699073065694</td>
          </tr>
          <tr>
            <th scope="row">예금주</th>
            <td>(주)이니스프리</td>
            <th scope="row">송금자</th>
            <td>이현화</td>
          </tr>
          <tr>
            <th scope="row">입금기한</th>
            <td colspan="3"> 20230510</td>
          </tr>


          </tbody>
        </table>
      </div>

      <!-- 결제금액 0원일경우 결제정보 히든 END-->
      <!-- 내 배송지정보 -->
      <input type="hidden" id="pageFl" value="myOrderView">
      <form name="updateFrm" id="updateFrm" method="post">
        <input type="hidden" name="ordSeq" id="ordSeq" value="19880605">
        <input type="hidden" name="curOrdStatCd" id="curOrdStatCd" value="OA01">
        <!-- 편의점 배송 -->
        <input type="hidden" name="dlvType" id="dlvType" value="N">
        <input type="hidden" name="cvsCd" id="cvsCd" value="">
        <input type="hidden" name="cvsHeadCd" id="cvsHeadCd" value="">
        <input type="hidden" name="cvsShopCd" id="cvsShopCd" value="">
        <input type="hidden" name="cvsShopNm" id="cvsShopNm" value="">
        <input type="hidden" name="cvsShopTelNo" id="cvsShopTelNo" value="">

        <h3 class="subTitle2">내 배송지 정보</h3>


        <div class="subRight"><button type="button" class="btnType7s" id="dlvAddMngBtn">배송지 변경</button></div>


        <div class="tableType noLine">
          <table id="rcvTable">
            <caption>내 배송지 정보</caption>
            <colgroup>
              <col style="width:175px;">
              <col>
            </colgroup>
            <tbody>
            <tr>
              <th scope="row">받으실 분</th>
              <td>
                <input type="text" id="userName" class="inputTxt" name="rcvNm" value="이현화" readonly="readonly">
              </td>
            </tr>
            <tr>
              <th scope="row">주소</th>
              <td class="deliveryWriteWrap">
                <div class="deliveryInput">
                  <div class="row">
                    <input type="hidden" id="homeZip1" name="homezip1" value="031">
                    <input type="hidden" id="homeZip2" name="homezip2" value="64">
                    <input title="우편번호" type="text" readonly="" class="inputTxt ordzipTxt" style="width:13%;" value="03164">


                  </div>
                  <div class="row">
                    <input type="text" name="dlvAddr1st" class="inputTxt dlvAddr1stTxt" readonly="readonly" title="주소 입력" style="width:90%;" value="서울특별시 종로구 종로 69">
                  </div>
                  <div class="row">
                    <input type="text" name="dlvAddr2nd" class="inputTxt dlvAddr2ndTxt" title="상세주소 입력" style="width:90%;" value="ㄴㄴㄴ" readonly="readonly">
                  </div>
                  <div class="row">


                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">휴대폰번호</th>
              <td>
                <div class="selectArea" style="width:20%;">

                  <button type="button" class="selTit" onclick="selActive();" disabled="">010</button>
                  <!-- INNIFOP-2539 : [ARC] 마이페이지2차(1)_주문내역/개인정보수정/배송지관리 : 배송지 관리에서 넘어온 값 셋팅하기 위해 수정-->
                  <ul class="selList" id="mblTp">
                    <li><input type="radio" id="010" value="010" name="mblNo1" checked="checked"><label for="010">010</label></li>
                    <li><input type="radio" id="011" value="011" name="mblNo1"><label for="011">011</label></li>
                    <li><input type="radio" id="016" value="016" name="mblNo1"><label for="016">016</label></li>
                    <li><input type="radio" id="017" value="017" name="mblNo1"><label for="017">017</label></li>
                    <li><input type="radio" id="018" value="018" name="mblNo1"><label for="018">018</label></li>
                    <li><input type="radio" id="019" value="019" name="mblNo1"><label for="019">019</label></li>
                  </ul>
                </div>
                <span class="hyphen">-</span>
                <input type="text" name="mblNo2" id="mblNo2" maxlength="4" title="휴대전화번호 두번째" class="inputTxt" style="width:20%;vertical-align:middle;" value="6868" readonly="readonly">
                <span class="hyphen">-</span>
                <input type="text" name="mblNo3" id="mblNo3" maxlength="4" title="휴대전화번호 세번째" class="inputTxt" style="width:20%;vertical-align:middle;" value="9854" readonly="readonly">
              </td>
            </tr>
            <tr>
              <th scope="row">배송 시 요청사항</th>
              <td><input type="text" class="inputTxt" style="width:90%;" name="dlvReqCnt" value="" readonly="readonly"></td>
            </tr>
            </tbody>
          </table>
        </div>
      </form>

      <div class="btnWrap">
        <a href="/kr/ko/MypageOnlineOrderList.do?reqOrdStatType=000" class="btnType3l">목록</a>
      </div>




    </div><!--page-->
  </div><!--container-->
</div><!--mypage -->

<jsp:include page="../footer.jsp" />

</body>

</html>