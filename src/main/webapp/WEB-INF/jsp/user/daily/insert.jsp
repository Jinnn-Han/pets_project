<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- head -->
	<%@ include file="../include/head.jsp" %>
	
	<script>
	$(document).ready(function () {
	    $("button[data-role=btnSubmit]").click(function () {
	        if ($("#TITLE").val() === '') {
	            alert('제목을 입력하셔야 합니다.');
	            return false;
	        }
	        if ($("#CONTENT").val() === '') {
	            alert('내용을 입력하셔야 합니다.');
	            return false;
	        }
	        $("#form").submit();
	    });

	    $("button[data-role=btnCancel]").click(function () {
	        location.href = '${ctx}/user/daily/list.do';
	    });
	});
	</script>
	
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>

    <!-- main -->
    <main>
        <div class="container">
            <div class="row gap-4">
            
                <%@ include file="../include/plofile.jsp" %>
                
				<section id="dailyInsert" class="col">
					<div class="row" style="line-height: 7px">
                    	<h4>일지작성</h4>
                    	<span class="sFont">내 반려동물에 대한 하루 일지를 기록해보세요.</span>
                    </div>
                    <form id="form" name="form" method="post" action="${ctx}/user/daily/insert.do" enctype="multipart/form-data" >
                    <div class="row insert mt-5">
        	            <div class="col">
                        	<div class="row choose">
                    	        <div class="col">
                                    <label for="">반려동물</label>
                                    <select name="PET_NAME" id="PET_NAME" class="form-select">
                                        <option value="">선택</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="">몸무게</label>
                                    <input type="text" class="form-control" id="WEIGHT" name="WEIGHT" />kg
                                </div>
                                <div class="col">
                                	<c:set var="hosVisitValue" value="1"/>
                                    <label for="hospital" class="form-check-label">병원유무</label>
                                    <input type="checkbox" class="form-check-input m-0" id="HOS_VISIT" name="HOS_VISIT" value="1" 
    								<c:if test="${hosVisitValue == '1'}">checked</c:if> />
                                </div>
                            </div>
                            <div class="row postTitle my-3">
                                <input type="text" class="form-control" id="TITLE" name="TITLE" placeholder="제목을 입력해주세요." />
                            </div>
                            <div class="row postContent">
                                <textarea class="form-control" id="CONTENT" name="CONTENT" cols="30" rows="5" placeholder="내용을 입력해주세요" ></textarea>
                            </div>
                            <div class="row memo">
                                <label for="">한줄메모</label>
                                <input type="text" class="form-control" id="MEMO" name="MEMO" />
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center my-5 gap-3">
                        <button type="button" class="btn subBtn" data-role="btnCancel">취소</button>
                        <button type="button" class="btn mainBtn" data-role="btnSubmit">저장하기</button>
                    </div>
                    </form>
                </section>
            </div>
        </div>
    </main>


	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
</body>
</html>