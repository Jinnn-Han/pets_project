<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>



<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<%@ include file="../include/head.jsp" %>
	<style>
		.modal.show .modal-dialog{
			max-width:100%;
		}
		.modal-content{
			top: 50%;
	    	transform: translateY(-50%);
    	}
    	.btn-primary{
    		background:var(--point-color);
    	}
	</style>
</head>
<body>
	 
	<%@ include file="../include/header.jsp" %>
	<div class="wrap sub_page login">
		<div class="container">
			<section id="login" class="col-4">
				<form action="${pageContext.request.contextPath}/member/login.do" method="post" name="form" id="form">
			    <div class="container_inner text-center">
			        <h3>로그인</h3> 
			        <div class="login_box">
			            <p>아이디와 비밀번호를 입력해주세요.</p>
			            <div class="row">
			                <input type="text" class="form-control" id="MEMBER_ID" name="MEMBER_ID" placeholder="아이디">
			            </div>
			            <div class="row mt-2">
			                <input type="password" class="form-control" id="PASSWORD" name="PASSWORD" placeholder="비밀번호">
			            </div>
			            <div class="row justify-content-center my-4">
			                <button type="button" class="btn mainBtn" onClick="login();">로그인</button>
			            </div>
			        </div>
			        <div class="elements">
						<a href="#" data-bs-toggle="modal" data-bs-target="#findId">아이디 찾기</a>
						<a href="#" data-bs-toggle="modal" data-bs-target="#findPw">비밀번호 찾기</a>
			            <a href="${pageContext.request.contextPath}/user/member/insert.do">회원가입</a>
			        </div>
			    </div>
			    </form>
			</section>
		</div>
	</div>

	<%@ include file="../include/footer.jsp" %>


	<!-- 비밀번호 찾기 -->
	<div class="modal fade bs-example-modal-sm" id="findPw" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
	  	<div class="modal-dialog modal_sm_size">
	    	<div class="modal-content">
	      		<div class="modal-header">
	        		<h1 class="modal-title fs-5" id="exampleModalLabel">비밀번호 찾기</h1>
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
				<form action="${pageContext.request.contextPath}/member/findPw.do" method="post" name="FormfindPw" id="FormfindPw">
	    		<div class="modal_body_box px-4">
	        		<div class="login_int_box mgb_10 row align-items-center">
						<label class="col">아이디</label>
						<div class="col-9"><input type="text" class="form-control" id="MEMBER_ID" name="MEMBER_ID" placeholder="아이디를 입력하세요." /></div>
					</div>
	        		<div class="login_int_box mgb_10 row align-items-center">
						<label class="col">이메일</label>
						<div class="col-9"><input type="email" class="form-control" id="EMAIL" name="EMAIL" placeholder="가입시 설정하신 이메일 입력해 주세요." /></div>
					</div>
	      		</div>
	      		</form>
	      		<div class="modal-footer">
	        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        		<button type="button" class="btn btn-primary" onClick="javascript:findAccount('FormfindPw')">확인</button>
	      		</div>
	    	</div>
	  	</div>
	</div>

	<!-- 아이디 찾기  -->
	<div class="modal fade bs-example-modal-sm" id="findId" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
	  	<div class="modal-dialog modal_sm_size">
	    	<div class="modal-content">
	      		<div class="modal-header">
	        		<h1 class="modal-title fs-5" id="exampleModalLabel">아이디 찾기</h1>
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
				<form action="${pageContext.request.contextPath}/member/findId.do" method="post" name="FormfindId" id="FormfindId">
	    		<div class="modal_body_box px-4">
	        		<div class="login_int_box mgb_10 row align-items-center">
						<label class="col">이름</label>
						<div class="col-9"><input type="text" class="form-control" id="NAME" name="NAME" placeholder="이름을 입력하세요." /></div>
					</div>
	        		<div class="login_int_box mgb_10 row align-items-center">
						<label class="col">이메일</label>
						<div class="col-9"><input type="email" class="form-control" id="EMAIL" name="EMAIL" placeholder="가입시 설정하신 이메일 입력해 주세요." /></div>
					</div>
	      		</div>
	      		</form>
	      		<div class="modal-footer">
	        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        		<button type="button" class="btn btn-primary" onClick="javascript:findAccount('FormfindId')">확인</button>
	      		</div>
	    	</div>
	  	</div>
	</div>

</body>
</html>

<script language="JavaScript">
//	 data-toggle="modal" data-target="#myLogin_Modal"
	var modalFindId = $('#findId');
	var modalFindPw = $('#findPw');

	function login() {

		var id = $('#ID').val();
		var pw = $('#PW').val();

		if (id == '') {
			alertWith('아이디를 입력 하여 주세요');
			return;
		}
		if (pw == '') {
			alertWith('비밀번호를 입력 하여 주세요');
			return;
		}
		if(checkbox == true)
		{
			setSaveCookie('');
			setSaveCookie(id);
		}
		var formData = $("#form").serialize();
		var URL = './login.do'
		$.ajax({
			type : "POST",
			url : URL,
			cache : false,
			data : formData,
			success: function(result) {
				//var s = result.indexOf("true");

				if(result.indexOf("false:-1") > -1) {
					Swal.fire({
						text: "Passwords do not match.",
						icon: 'info',
						confirmButtonColor: '#3085d6',
					});
				} else if(result.indexOf("false:-2") > -1) {
					Swal.fire({
						text: "ID does not exist.",
						icon: 'info',
						confirmButtonColor: '#3085d6',
					});
				} else if(result.indexOf("true10") > -1){
					idchk = true;
					location.href = '${pageContext.request.contextPath}/index.do';
					return;
				} else if(result.indexOf("true1") > -1){
					idchk = true;
					location.href = '${pageContext.request.contextPath}/index.do';
					return;
				} else {
					location.href = '${pageContext.request.contextPath}/index.do';
					return;
				}

			}
		});
	}

	var checkbox = false;
	function clickboxclicked(chkbox)
	{

		var cValue = $('#ID').val();

		if( chkbox.checked == true )
		{
			checkbox = true;
		}
		else
		{
			checkbox = false;
			setSaveCookie('');
		}

	}
    function setSaveCookie(cValue)
    {
    	var cName = "COOKUSERID";
    	var cDay = 7;
        var expire = new Date();
        expire.setDate(expire.getDate() + cDay);
        cookies = cName + '=' + escape(cValue) + ';'; // 한글 깨짐을 막기위해 escape(cValue)를 합니다.
        if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
        document.cookie = cookies;
        //alertWith(cookies);
    }

    // 쿠키 가져오기
    function getCookie(cName) {
        cName = cName + '=';
        var cookieData = document.cookie;
        var start = cookieData.indexOf(cName);
        var cValue = '';
        if(start != -1){
            start += cName.length;
            var end = cookieData.indexOf(';', start);
            if(end == -1)end = cookieData.length;
            cValue = cookieData.substring(start, end);
        }
        var undata = unescape(cValue);
  //      console.log(undata);
        return undata;
    }

    $( document ).ready(function() {
    	var cookid = getCookie("COOKUSERID");
    	 $('#id').val(cookid);
    	 if(cookid != '')
    	 {
    		 $("input:checkbox[id='id_save']").prop("checked", true);
    		 checkbox = true;
    	 }

    	 var certified = '${requestScope.certified}';
    	 if (certified) {
    		 alertWith('인증이 완료되었습니다.\n로그인 해주세요.');
    	 }
    });



	function findAccount(type) {

		var formData = $("#"+type).serialize();
		console.log('data : ' + formData);
		console.log('type : ' + type);
		var URL = './getFindId.do';
		if(type == 'FormfindPw')
		{
			var URL = './getFindPw.do';
		}

		$.ajax({
			type : "POST",
			url : URL,
			cache : false,
			data : formData,
			success: function(result) {
				//var s = result.indexOf("true");

				if(result.indexOf("false:-1") > -1) {
					Swal.fire({
						text: "입력된 정보가 일치 하지 않습니다.",
						icon: 'info',
						confirmButtonColor: '#3085d6',
					});
				} else if(result.indexOf("false:-2") > -1) {
					Swal.fire({
						text: "ID does not exist.",
						icon: 'info',
						confirmButtonColor: '#3085d6',
					});
				} else{
					if(type == 'FormfindId')
					{
						Swal.fire({
							text: "아이디 : " +  result,
							icon: 'info',
							confirmButtonColor: '#3085d6',
						});
					}else
					{
						Swal.fire({
							text: "비밀번호는 : " +  result,
							icon: 'info',
							confirmButtonColor: '#3085d6',
						});
					}

					return;
				}

			}
		});
	}
</script>


