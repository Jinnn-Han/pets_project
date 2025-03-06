<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
    <nav>
        <div class="container d-flex flex-wrap justify-content-end py-1">
            <ul class="nav topNav">
                <li class="nav-item">
                    <a href="#" class="nav-link link-body-emphasis px-2">로그인</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link link-body-emphasis px-2">회원가입</a>
                </li>
            </ul>
        </div>
    </nav>
    <header class="py-3 mb-4 border-bottom">
        <div class="container d-flex flex-wrap justify-content-center">
            <a href="${pageContext.request.contextPath}/home.do"
                class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto link-body-emphasis text-decoration-none">
                <span class="fs-4 logo">
                    <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="logo" />
                </span>
            </a>
            <div class="d-flex align-items-center">
                <ul class="nav gap-4">
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link link-body-emphasis px-2 dropdown-toggle" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">나의댕냥일지</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/daily/insert.do">일지작성</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/daily/list.do">일지기록</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link link-body-emphasis px-2 dropdown-toggle" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">자유게시판</a></li>
                            <li><a class="dropdown-item" href="#">질문/답변게시판</a></li>
                            <li>
                                <a class="dropdown-item" href="#">사지말고 입양해요</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link link-body-emphasis px-2">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link link-body-emphasis px-2">보호소찾기</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link link-body-emphasis px-2">한줄자랑</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link link-body-emphasis px-2">한줄뒷담</a>
                    </li>
                </ul>
            </div>
        </div>
    </header>
    
    <!-- search -->
	<div class="container d-flex justify-content-end search">
        <form class="col-2" role="search">
            <input type="search" class="form-control" placeholder="Search..." aria-label="Search" />
            <i class="fa-solid fa-magnifying-glass"></i>
        </form>
    </div>