<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<div class="btnMove pagination">
    <c:if test="${currentPage > 1}">
        <a href="?pageIndex=${currentPage - 1}">이전</a>
    </c:if>

    <c:forEach var="i" begin="1" end="${totalPages}">
        <a href="?pageIndex=${i}" class="${currentPage == i ? 'active' : ''}">${i}</a>
    </c:forEach>

    <c:if test="${currentPage < totalPages}">
        <a href="?pageIndex=${currentPage + 1}">다음</a>
    </c:if>
</div>