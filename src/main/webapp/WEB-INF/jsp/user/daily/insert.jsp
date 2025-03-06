<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- head -->
	<%@ include file="../include/head.jsp" %>
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
                    <div class="row insert mt-5">
        	            <div class="col">
                        	<div class="row choose">
                    	        <div class="col">
                                    <label for="">반려동물</label>
                                    <select name="" id="" class="form-select">
                                        <option value="">호두 (3살)</option>
                                        <option value="">가지 (3살)</option>
                                        <option value="">두루 (3살)</option>
                                        <option value="">치기 (1살)</option>
                                        <option value="">태리 (2살)</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="">몸무게</label>
                                    <input type="text" class="form-control" />kg
                                </div>
                                <div class="col">
                                    <label for="hospital" class="form-check-label">병원유무</label>
                                    <input type="checkbox" class="form-check-input m-0" id="hospital" />
                                </div>
                            </div>
                            <div class="row postTitle my-3">
                                <input type="text" class="form-control" placeholder="제목을 입력해주세요." />
                            </div>
                            <div class="row postContent">
                                <textarea name="" id="" class="form-control" placeholder="내용을 입력해주세요" ></textarea>
                            </div>
                            <div class="row memo">
                                <label for="">한줄메모</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center my-5 gap-3">
                        <button type="button" class="btn subBtn" onclick="location.href='${pageContext.request.contextPath}/daily/list.do'">취소</button>
                        <button type="button" class="btn mainBtn">저장하기</button>
                    </div>
                </section>
            </div>
        </div>
    </main>


	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
</body>
</html>