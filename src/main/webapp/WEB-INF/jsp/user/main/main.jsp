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
                
                <section class="col" id="daily">
                    <h6>최근 나의댕냥일지</h6>
                    <div class="row gap-3 justify-content-center">
<%--                     	<c:forEach var="item" items="${dailyList}" varStatus="status">
	                        <a href="${ctx}/user/daily/${item.IDX}/view.do" class="col-6 border">
	                            <div class="row">
	                                <div class="col-7">
	                                    <div class="date sFont d-flex gap-4">
	                                        <span>작성일 2024-08-29</span>
	                                        <span>호두 (치즈,3살)</span>
	                                    </div>
	                                    <h6 class="title lFont">호늘의 호도는?뱃살이 귀엽다!</h6>
	                                    <p class="ctnt mFont">호두는 뱃살이 빵빵해서 너무 귀엽다.애교철철호두는 뱃살이 빵빵해서 너무 귀엽다.애교철철
	                                    </p>
	                                    <div class="memo sFont d-flex flex-column">
	                                        <span>MEMO</span>
	                                        <span>호두는 밥을 좀 적게 줘야할것같다...</span>
	                                    </div>
	                                </div>
	                                <div class="col-5">
	                                    <div class="imgBox"></div>
	                                </div>
	                            </div>
	                        </a>
                    	</c:forEach> --%>
                    </div>
                </section>
            </div>
        </div>
        <section id="adoption">
            <div class="container">
                <h5 class="mb-4 d-flex justify-content-center">
                    <img class="icon1" src="${pageContext.request.contextPath}/resources/img/icon1.png" alt="icon1" />
                    <strong>사지말고 입양해요</strong>
                    <img class="icon2" src="${pageContext.request.contextPath}/resources/img/icon2.png" alt="icon2" />
                </h5>
                <div class="row justify-content-center gap-2 py-2">
                    <a href="" class="col-3 border box">
                        <div class="row justify-content-center">
                            <div class="imgBox">
                                <img src="${pageContext.request.contextPath}/resources/img/adoptionImg.png" alt="adoptionImg" />
                            </div>
                        </div>
                        <ul class="pt-1 pb-2">
                            <li>
                                <span class="sFont"><font color="#777777">공고번호 대전 - 대덕- 20240829</font></span>
                            </li>
                            <li class="d-flex gap-1 align-items-center name">
                                <p>이름 : 바둑이</p>
                                <p class="Kind sFont">|&nbsp;강아지</p>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <p>성별 : 여아</p>
                            </li>
                            <li>
                                <p>추정나이 : 3살</p>
                            </li>
                            <li>
                                <p>몸무게 : 2kg</p>
                            </li>
                            <li>
                                <p>발견장소 : 어디어디</p>
                            </li>
                            <li>
                                <p>특징 : 애교가 많음</p>
                            </li>
                            <li>
                                <p>공고 : 2024-08-30 ~ 2024-09-20</p>
                            </li>
                            <li>
                                <p>관할 : 대전광역시 대덕구</p>
                            </li>
                            <li>
                                <p>보호센터 : 대덕구유기동물보호소</p>
                            </li>
                        </ul>
                    </a>
                    <a href="" class="col-3 border box">
                        <div class="row justify-content-center">
                            <div class="imgBox">
                                <img src="${pageContext.request.contextPath}/resources/img/adoptionImg.png" alt="adoptionImg" />
                            </div>
                        </div>
                        <ul class="pt-1 pb-2">
                            <li>
                                <span class="sFont"><font color="#777777">공고번호 대전 - 대덕- 20240829</font></span>
                            </li>
                            <li class="d-flex gap-1 align-items-center name">
                                <p>이름 : 바둑이</p>
                                <p class="Kind sFont">|&nbsp;강아지</p>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <p>성별 : 여아</p>
                            </li>
                            <li>
                                <p>추정나이 : 3살</p>
                            </li>
                            <li>
                                <p>몸무게 : 2kg</p>
                            </li>
                            <li>
                                <p>발견장소 : 어디어디</p>
                            </li>
                            <li>
                                <p>특징 : 애교가 많음</p>
                            </li>
                            <li>
                                <p>공고 : 2024-08-30 ~ 2024-09-20</p>
                            </li>
                            <li>
                                <p>관할 : 대전광역시 대덕구</p>
                            </li>
                            <li>
                                <p>보호센터 : 대덕구유기동물보호소</p>
                            </li>
                        </ul>
                    </a>
                    <a href="" class="col-3 border box">
                        <div class="row justify-content-center">
                            <div class="imgBox">
                                <img src="${pageContext.request.contextPath}/resources/img/adoptionImg.png" alt="adoptionImg" />
                            </div>
                        </div>
                        <ul class="pt-1 pb-2">
                            <li>
                                <span class="sFont"><font color="#777777">공고번호 대전 - 대덕- 20240829</font></span>
                            </li>
                            <li class="d-flex gap-1 align-items-center name">
                                <p>이름 : 바둑이</p>
                                <p class="Kind sFont">|&nbsp;강아지</p>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <p>성별 : 여아</p>
                            </li>
                            <li>
                                <p>추정나이 : 3살</p>
                            </li>
                            <li>
                                <p>몸무게 : 2kg</p>
                            </li>
                            <li>
                                <p>발견장소 : 어디어디</p>
                            </li>
                            <li>
                                <p>특징 : 애교가 많음</p>
                            </li>
                            <li>
                                <p>공고 : 2024-08-30 ~ 2024-09-20</p>
                            </li>
                            <li>
                                <p>관할 : 대전광역시 대덕구</p>
                            </li>
                            <li>
                                <p>보호센터 : 대덕구유기동물보호소</p>
                            </li>
                        </ul>
                    </a>
                    <a href="" class="col-3 border box">
                        <div class="row justify-content-center">
                            <div class="imgBox">
                                <img src="${pageContext.request.contextPath}/resources/img/adoptionImg.png" alt="adoptionImg" />
                            </div>
                        </div>
                        <ul class="pt-1 pb-2">
                            <li>
                                <span class="sFont"><font color="#777777">공고번호 대전 - 대덕- 20240829</font></span>
                            </li>
                            <li class="d-flex gap-1 align-items-center name">
                                <p>이름 : 바둑이</p>
                                <p class="Kind sFont">|&nbsp;강아지</p>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <p>성별 : 여아</p>
                            </li>
                            <li>
                                <p>추정나이 : 3살</p>
                            </li>
                            <li>
                                <p>몸무게 : 2kg</p>
                            </li>
                            <li>
                                <p>발견장소 : 어디어디</p>
                            </li>
                            <li>
                                <p>특징 : 애교가 많음</p>
                            </li>
                            <li>
                                <p>공고 : 2024-08-30 ~ 2024-09-20</p>
                            </li>
                            <li>
                                <p>관할 : 대전광역시 대덕구</p>
                            </li>
                            <li>
                                <p>보호센터 : 대덕구유기동물보호소</p>
                            </li>
                        </ul>
                    </a>
                    <button type="button" class="btn mainBtn">공고 더보기</button>
                </div>
            </div>
        </section>
        <section id="home_notice">
            <div class="container">
                <div class="row">
                    <div class="col-5">
                        <div class="row">
                            <div class="col-12 notice_title">자유게시판</div>
                        </div>
                        <ul>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-5">
                        <div class="row">
                            <div class="col-12 notice_title">질문/답변게시판</div>
                        </div>
                        <ul>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="no">1</div>
                                    <div class="title">이곳은 자유게시판입니다.자유롭게 이용하세요</div>
                                    <div class="date">2024-08-30</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-2 banner">
                        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/banner.png" alt="banner" /></a>
                    </div>
                </div>
            </div>
        </section>
    </main>


	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
</body>
</html>