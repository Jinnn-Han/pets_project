<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<style>
${model.CSS}
body.swal2-height-auto{
	height:100% !important;
}
.wrap{
	padding-bottom:0 !important;
}
</style>

<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
	<head>
	<%@ include file="../include/head.jsp" %>
	${model.HEAD}
</head>
<body>

	  <%@ include file="../include/header.jsp" %>
	<div class="wrap sub_page login">
	    <div class="sub_header">
            <div class="container_inner">
            </div>
        </div>
        
        <section id="join">
            <div class="container_inner text-center">
                <h3>회원가입</h3>
                <div class="row mt-5">
                <form action="${pageContext.request.contextPath}/user/member/insert.do" id="form" name="form" method="post" autocomplete="off" modelAttribute="memberDomain" >
                    <div class="col">
                        <div class="row text-start guide_txt mb-5">
                            <p>*(별표) 표시가 된 항목은 반드시 입력해야하는 필수 항목입니다.</p>
                            <p>필수항목 이외의 항목은 추후 마이페이지에서 입력 및 수정 하실 수 있습니다.</p>
                        </div>
                        <div class="container-fluid p-0">
                            <!-- 아이디 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="ID">아이디*</label>
                                        </div>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="ID" id="ID">
                                            <button type="button" class="btn btn-file" onClick="dupCheck('${pageContext.request.contextPath}/user/member/checkDupId.do')">체크하기</button>
                                            <span>개인의 경우 이름, 기업의 경우 기업명을 입력해주세요.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 아이디 -->
                            <!-- 비밀번호 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="PW">비밀번호*</label>
                                        </div>
                                        <div class="input-group">
                                            <input type="password" class="form-control" name="PW" id="PW">
                                            <span>반드시 대문자를 포함한 영문+숫자로 구성해주시기를 바랍니다.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 비밀번호 -->
                            <!-- 비밀번호 확인 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="pwc">비밀번호 확인*</label>
                                        </div>
                                        <div class="input-group">
                                            <input type="password" class="form-control" name="PWC" id="PWC">
                                            <span>확인을 위해 비밀번호를 다시 입력해주세요.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 비밀번호 확인 -->
                            <!-- 이름 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="name">이름*</label>
                                        </div>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="NAME" id="NAME">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 이름 -->
                            <!-- 휴대전화 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="phone">휴대전화*</label>
                                        </div>
                                        <div class="input-group">
                                            <input type="number" class="form-control" name="PHONE" id="PHONE"> 
                                            <span>반드시 본인 명의의 휴대전화 번호를 입력해주세요.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 휴대전화 -->
                            <!-- 이메일 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="email">이메일</label>
                                        </div>
                                        <div class="input-group">
                                            <input type="email" name="EMAIL" id="EMAIL" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 이메일 -->
                            <!-- 주소 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="address">주소</label>
                                        </div>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="ADDRESS" id="ADDRESS">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 주소 -->
                            <!-- 소속 -->
                            <div class="join_insert">
                                <div class="row">
                                    <div class="col d-flex align-items-center">
                                        <div class="label">
                                            <label for="crurch">소속(교회명)*</label>
                                        </div>
                                        <div class="input-group">
                                            <select value="${model.CRURCH}" class="form-select" name="CRURCH" id="CRURCH">
                                            	<option>선택</option>
                                            </select>
                                            <span>관련사항이 없으면 ‘없음’을 입력해주세요.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 소속 -->
                        </div>
                        <div class="row mt-5 justify-content-center gap-2">
	                        <button type="button" onClick="location.href='${context}';" class="btn btn-secondary btn-cancel">취소</button>
			                <button type="button" onClick="insert()" class="btn-send btn btn-danger btn-join">회원가입</button>
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </section>
        
        
<%-- 		<div class="container inner">
			<section id="join">
	
		        <form action="${pageContext.request.contextPath}/user/member/insert.do"  id="form" name="form"    method="post" autocomplete="off" modelAttribute="memberDomain" >
		        	<div class="join_write_box mt-4">
						<input type="hidden" NAME="csrf" value="${CSRF_TOKEN}" />
			            <div class="join_t_dl">
			                <label for="ID" class="jt_icon01"><i class="fa-solid fa-user"></i>아이디</label>
			                <div class="add_bt_d">
			                    <input type="text" name="ID" id="ID" class="int_type" placeholder="아이디를 입력하세요">
			                    <input type="button" class="check-duplication bg_bt" onclick="dupCheck('${pageContext.request.contextPath}/user/member/checkDupId.do')" value="중복확인">
			                    <button type="button" class="btn btn-secondary" onclick="dupCheck('${pageContext.request.contextPath}/user/member/checkDupId.do')" >중복확인</button>
			                </div>
			            </div>
	
			            <div class="join_t_dl">
			                <label for="email" class="jt_icon02"><i class="fa-solid fa-envelope"></i>이메일</label>
			                <div>
			                    <input type="email" name="EMAIL" id="email" class="int_type" placeholder="이메일을 입력하세요">
			                </div>
			            </div>
	
			            <div class="join_t_dl">
			                <label for="name" class="jt_icon03"><i class="fa-solid fa-address-card"></i>이름</label>
			                <div>
			                    <input type="text" name="NAME" id="name" maxlength="30" class="int_type" placeholder="이름을 입력하세요">
			                </div>
			            </div>
	
			            <div class="join_t_dl">
			                <label for="pw" class="jt_icon04"><i class="fa-solid fa-ellipsis"></i>비밀번호</label>
			                <div>
			                    <input type="password" name="PW" id="pw" maxlength="30" class="int_type" placeholder="비밀번호를 입력하세요">
			                </div>
			            </div>
	
			            <div class="join_t_dl mgb_0">
			                <label for="pwc" class="jt_icon04"><i class="fa-solid fa-ellipsis"></i>비밀번호 확인</label>
			                <div>
			                    <input type="password" name="PWC" id="pwc" maxlength="30" class="int_type" placeholder="입력하신 비밀번호를 재입력해주세요">
			                </div>
			            </div>
					</div>
					<!-- <button class="btn-send" style="display:none"></button> -->
		            <div class="al_center mt-5">
		            	<button type="button" onClick="location.href='${context}';" class="btn btn-secondary btn-cancel">취소</button>
		                <button type="button" onClick="insert()" class="btn-send btn btn-danger btn-join">회원가입</button>
		            </div>
		        </form>
		<!-- contents_wrap -->
			</section>
		</div> --%>
	</div>
	<%@ include file="../include/footer.jsp" %>

</body>
</html>
<script language="JavaScript">
	${model.JS}

	function insert()
	{
		if(checkId == 'false')
		{
			Swal.fire({
				text: "아이디 중복 체크 해주세요",
				icon: 'info',
				confirmButtonColor: '#3085d6',
			});
			return false;
		}
		$('#form').submit();
	}

	var checkId = 'false';
	function dupCheck(URL)
	{
		if( $("#ID").val().length < 4)
		{
			Swal.fire({
				text: "아이디 4자 이상 사용가능 합니다.",
				icon: 'info',
				confirmButtonColor: '#3085d6',
			});
			return;
		}
		var formData = $("#form").serialize();

		$.ajax({
			type : "POST",
			url : URL,
			cache : false,
			data : formData,
			success: function(result) {
				//var s = result.indexOf("true");

				if(result.indexOf("true") > -1) {
					checkId = true;
					 $("#ID").attr("readonly",true);
					Swal.fire({
						text: "아이디 사용 가능 합니다.",
						icon: 'info',
						confirmButtonColor: '#3085d6',
					});
				} else if(result.indexOf("false") > -1) {
					Swal.fire({
						text: "이미 사용중인 아이디 입니다.",
						icon: 'info',
						confirmButtonColor: '#3085d6',
					});
				}
			}
		});
	}
	jQuery(function () {
		var email = '${requestScope.EMAIL}';
		if (email) {
			email = decodeURIComponent(email);
			alertWith(email+'로 인증 메일을 보냈습니다.\n인증을 하시면 회원가입이 완료됩니다.');
		}



		var btnSend = $('.btn-send');
		btnSend.click(function () {
			return verifyAccountInfo();
		});
	});
</script>
