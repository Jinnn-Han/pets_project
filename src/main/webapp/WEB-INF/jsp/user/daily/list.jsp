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
                
                <section id="dailyList" class="col">
                    <div class="row" style="line-height: 7px">
                        <h4>일지기록</h4>
                        <span class="sFont">내 반려동물에 대한 하루 일지를 기록해보세요.</span>
                    </div>
                   <div class="row mt-5 contents">
                       <div class="col">
                           <div class="row">
                               <div class="col">
                                   <p class="sFont">전체글 <span style="color: var(--point-color)">9</span> 건</p>
                               </div>
                           </div>
                           <c:forEach var="item" items="${dailyList}" varStatus="status">
	                           <div class="row list">
	                               <a href="">
	                                   <div class="col">
	                                       <div class="row">
	                                           <div class="col d-flex flex-column justify-content-between">
	                                               <div class="d-flex flex-column gap-3">
	                                                   <h6>${item.TITLE}</h6>
	                                                   <p class="mFont">${item.CONTENT}</p>
	                                               </div>
	                                               <span class="sFont">${item.PET_NAME} (3살) 몸무게 ${item.WEIGHT}kg 
	                                               		병원유무 
	                                               		<c:choose>
	                                               			<c:when test="${item.HOS_VISIT == 1}">O</c:when>
	                                               			<c:otherwise>X</c:otherwise>
	                                               		</c:choose>
	                                               		  ${item.CREATE_TM}</span>
	                                           </div>
	                                           <div class="col-4 border p-0">
	                                               <div class="imgBox">
	                                                   <img src="${pageContext.request.contextPath}/resources/img/profileImg.jpg" alt="photo" />
	                                               </div>
	                                           </div>
	                                       </div>
	                                   </div>
	                               </a>
	                           </div>
                           </c:forEach>
                           <div class="row my-5">
                               <div class="btnMove d-flex justify-content-center gap-3">
                                   <!-- <button type="button"><i class="fa-solid fa-angles-left"></i></button>
                                   <button type="button"><i class="fa-solid fa-angle-left"></i></button> -->
                                   <button type="button">1</button>
                                   <!-- <button type="button"><i class="fa-solid fa-angle-right"></i></button>
                                   <button type="button"><i class="fa-solid fa-angles-right"></i></button> -->
                               </div>
                           </div>
                       </div>
                   </div>
				</section>
            </div>
        </div>
    </main>


	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
</body>
</html>