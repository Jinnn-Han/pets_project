<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="ko">
<html class="no-js" lang="ko">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="ko">
  <head>
	<%@ include file="../include/head.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body" id="edit">
      <div class="main_container">
        <!-- menu -->
		
		<!-- menu -->
        <!-- top navigation -->
		
        <!-- /top navigation -->

        <!-- page content -->
        <br><br>
        <div class="right_col" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_content">

					<form:form action="./updateAccess.do?cmd=manager&page=${model.page}&search=${model.search}"
					modelAttribute="memberDomain" method="post" name="form" id="form" class="form-horizontal form-label-left">
					
                      <span class="section">상세페이지</span>
                      <!-- hidden -->
 				  	  <input type="hidden"  id="pageItemCount" NAME="pageItemCount" value='${pageItemCount}'/>
					  <input type="hidden"  id="page" NAME="page" value='${page}' />
 					  <input type="hidden"  id="id" name="ID" value="${model.ID}">
 					  <input type="hidden"  id="CMD" name="CMD" value="${model.CMD}">
					  <input type="hidden" NAME="csrf" value="${CSRF_TOKEN}" />

					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">사용자 ID <span class="required">*</span>   </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           ${model.ID}
    				    </div>
                      </div>
                      
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">패스워드<span class="required">*</span>   </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<input class="form-control col-md-7 col-xs-12" required="required" type="password"  id="pw" name="PW" value="${model.PW}">
    				    </div>
                      </div>

					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">패스워드<span class="required">*</span>   </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<input class="form-control col-md-7 col-xs-12" required="required" type="password"  id="pwc" name="PW2" value="${model.PW}">
    				    </div>
                       </div>

					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">이름<span class="required">*</span>   </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<input class="form-control col-md-7 col-xs-12" required="required" type="text"  id="name" name="NAME" value="${model.NAME}">
    				    </div>
                       </div>

					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">이메일<span class="required">*</span>   </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<input class="form-control col-md-7 col-xs-12" required="required" type="text"  id="email" name="EMAIL" value="${model.EMAIL}">
    				    </div>
                       </div>
                       <c:choose>
								<c:when test="${ssion_level == '1' }">
									   <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12">권한<span class="required">*</span>   </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                        	<select class="form-control input-sm width241" id="LEVEL" name="LEVEL">
												<c:forEach var="item" items="${model.CONFIGLEVELLIST}" varStatus="status">
													<c:choose>
													<c:when test="${model.LEVEL == item.TITLE }">
														<option value="${item.TITLE}" selected="selected">${item.NAME}</option>
													</c:when>
													<c:otherwise>
														<option value="${item.TITLE}">${item.NAME}</option>
													</c:otherwise>
													</c:choose>
												</c:forEach>
											</select>
				    				    </div>
				                       </div>
								</c:when>
								<c:otherwise>
									   <input type="hidden"  id="LEVEL" name="LEVEL" value="${model.LEVEL}">
								</c:otherwise>
						</c:choose>
                        <div class="ln_solid"></div>
                        <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                        
							<c:if test="${ssion_menuclick == 'admin'}">
							<div class="pull-left">
							<button class="btn btn-default" type="submit" onclick=
							"location.href='./list.do?search=${model.search}&page=${model.page}&parent=${model.parent}&cmd=manager'">이전</button>
							</div>
							</c:if>
							<div class="pull-right">
							<button class="btn btn-default btn-send">수정</button>
							</div>
                        </div>
                      </div>
					</form:form>
		 		  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
        <!-- footer content -->
       
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/checkAccount.js"></script>
  </body>
</html>	
