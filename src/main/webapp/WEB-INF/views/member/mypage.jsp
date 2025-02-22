<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../include/header.jspf" %>
<link href="/resources/dist/css/member/mypage.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<body>
<!-- Page Content-->
<section class="py-5">
  <div class="container px-5 my-5">
    <div class="row gx-5">
      <div class="col-lg-3">

        <div>
          <!-- Sidebar-->
          <div class="ms-3">
            <div class="border-end bg-white">
              <div class="sidebar-heading border-bottom bg-light">Start Bootstrap</div>
              <div class="list-group list-group-flush">
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Dashboard</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Shortcuts</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Overview</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Events</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Profile</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Status</a>
              </div>
            </div>
          </div> <!--border-end bg-white-->
        </div> <!-- ms-3-->
        <!--sidebar 여기까지-->
      </div>


      <!-- col-lg-3의 자식-->
      <div class="col-lg-9">
        <article><!--본문 시작-->
          <!-- Post title-->
          <h1 class="fw-bolder mb-1">마이 페이지</h1>
          <!-- 일반회원 기본 노출 -->
          <form action="update" method="post">
            <!--마이페이지-->
            <div id="personInfo">
              <!--테이블 형식으로 보여줄거니까 table시작-->
              <table class="person-tb">
                <tbody>

                <tr>
                  <th>회원번호</th>
                  <td>
                    <input type="text"
                           name="uno"
                           id="uno"
                           value="${my.uno}"
                           class="form-control"
                           readonly="readonly">
                  </td>
                </tr>

                <tr>
                  <th>이름</th>
                  <td>
                    <input type="text"
                           name="name"
                           id="name"
                           value="${my.name}"
                           class="form-control">
                  </td>
                </tr>

                <tr>
                  <th>아이디</th>
                  <td>
                    <input type="text"
                           name="email"
                           id="email"
                           value="${my.email}"
                           class="form-control"
                           readonly="readonly">
                  </td>
                </tr>

                <tr>
                  <th>비밀번호</th>
                  <td>
                    <input type="password"
                           name="password"
                           id="password1"
                           class="form-control "
                           value="${my.password}"
                           onchange ="isSame()"
                           placeholder="비밀번호는 6~16자로 입력해 주세요.">
                  </td>
                </tr>

                <tr>
                  <th>비밀번호 확인</th>
                  <td>
                    <input type="password"
                           name="password2"
                           id="password2"
                           class="form-control "
                           value=""
                           onchange ="isSame()">
                    <span id="same"></span>
                  </td>
                </tr>

                <tr>
                  <th>주민등록번호</th>
                  <td>
                    <input type="text"
                           name="ssn"
                           id="ssn"
                           value="${my.ssn}"
                           readonly="readonly"
                           style="background-color: #e9ecef;border: 1px solid #ced4da;">

                  </td>
                </tr>

                <tr>
                  <th>휴대폰</th>
                  <td>
                    <input type="text" id="phone" name="phone" value="${my.phone}">
                  </td>
                </tr>

                <tr>
                  <th>은행</th>
                  <td>
                    <div>
                      <select name="bankName" class="bankName" data-type="${my.bankName}">
                        <option value="">은행명</option>
                        <option value="KEB하나">KEB하나</option>
                        <option value="SC제일">SC제일</option>
                        <option value="국민">국민</option>
                        <option value="신한">신한</option>
                        <option value="우리">우리</option>
                        <option value="농협">농협</option>
                        <option value="토스">토스</option>
                        <option value="카카오">카카오뱅크</option>
                      </select>
                      <input type="text"
                             name="bankAccountNumber"
                             id="bankAccountNumber"
                             value="${my.bankAccountNumber}"
                             placeholder="'-'를 빼고 입력해주세요."
                             style="width:70%" ;>
                    </div>
                  </td>
                </tr>

                <tr>
                  <th>신용등급</th>
                  <td>
                    <input type="text"
                           name="creditRating"
                           id="creditRating"
                           value="${my.creditRating}"
                           class="form-control"
                           readonly="readonly">
                  </td>
                </tr>

                <tr>
                  <th>추가이율</th>
                  <td>
                    <input type="text"
                           name="plusRate"
                           id="plusRate"
                           value="${my.plusRate}"
                           class="form-control"
                           readonly="readonly">
                  </td>
                </tr>

                <tr>
                  <th>무단이탈횟수</th>
                  <td>
                    <input type="text"
                           name="count"
                           id="count"
                           value="${my.count}"
                           class="form-control"
                           readonly="readonly">
                  </td>
                </tr>

                <tr>
                  <th>가입일</th>
                  <td>
                    <input type="text"
                           name="enrollDate"
                           id="enrollDate"
                           value="${my.enrollDate}"
                           class="form-control"
                           readonly="readonly">
                  </td>
                </tr>

                <!--주소-->
                        <tr>
                            <th>주소</th>
                            <td>
                                <!--<div class="text-start mb-5 passbox">-->
                                    <input type="text"
                                            name="addresscode"
                                            value="${my.addresscode}"
                                            class="postcodify_postcode5"
                                            placeholder="우편번호">
                                <!--</div>-->
                                <div>
                                <span class="input_area">
                                    <input type="text"
                                            name="address"
                                            value="${my.address}"
                                            class="postcodify_address"
                                            placeholder="주소">
                                </span>
                                    <button type="button"
                                            class="button-request"
                                            id="postcodify_search_button">
                                            <span>검색</span>
                                    </button>
                                </div>
                                <div>
                                   <input type="text"
                                          name="addressdetail"
                                          value="${my.addressdetail}"
                                          placeholder="상세주소 작성">
                                </div>
                            </td>
                        </tr>

                </tbody>
              </table>
              <div class="btnArea join-footer py-5">
                <button type="submit" class="btn btn-primary btn-lg px-4 me-sm-3">수정하기</button>
                <button="button" onclick="checkDelete()" class="btn btn-primary btn-lg px-4 me-sm-3" >탈퇴하기</button>
              </div>
            </div>
          </form>
        </article>
      </div>
    </div>
  </div>
</section>



<!-- 비밀번호 일치여부 -->
<script>
 function isSame() {
 console.log('d');
    var password1 = document.getElementById('password1');
    var password2 = document.getElementById('password2');
    if (password1.value.length < 7 || password1.value.length > 16) {
         alert('비밀번호는 영문 ,특수문자를 사용하여 8글자 이상, 16글자 이하만 수정가능합니다.');
        document.getElementById('password1').value=document.getElementById('password2').value='';
        document.getElementById('same').innerHTML='';
    }
    if(document.getElementById('password1').value!='' && document.getElementById('password2').value!='') {
        if(document.getElementById('password1').value==document.getElementById('password2').value) {
            document.getElementById('same').innerHTML='비밀번호가 일치합니다.';
            document.getElementById('same').style.color='blue';
        }
        else {
            document.getElementById('same').innerHTML='비밀번호가 일치하지 않습니다.';
            document.getElementById('same').style.color='red';
        }
    }
}
</script>

<!--은행명 자동선택-->
<script>
    $(document).ready(function () {
      bankName_val = $('select.bankName').attr('data-type');
      $('select.bankName option[value=' + bankName_val + ']').attr('selected', 'selected');
    });
</script>


<!-- 주소 API 스크립트 -->
<!-- jQuery와 Postcodify를 로딩한다 -->
<script
="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>


<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script> $(function () {
  $("#postcodify_search_button").postcodifyPopUp();
}); </script>

<!--회원 삭제-->
<script>
    function checkDelete(){

        if(confirm('정말 회원탈퇴 하시겠습니까?') == true) {
          location.href='http://localhost:8080/member/remove';
        }
        else{
            return;
          }
    }
</script>

 <%@ include file="../include/footer.jspf" %>


