<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<script type="text/javascript">
function clickPageMove(url)
{
	location.href = url;
}
</script>

<!DOCTYPE html>
<html lang="en">
  <head>
	<%@ include file="../include/head.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <!-- menu -->
		
		<!-- menu -->
        <!-- top navigation -->
		
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>아이템 관리</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  
                </div>
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_content">

                    <form class="form-horizontal form-label-left" novalidate>

                      <span class="section">상세페이지</span>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">사용자 ID </label>
                        <label class="control-label">${model.ID}</label>
                      </div>
					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">이름<span class="required">*</span>   </label>
    				    <label class="control-label">${model.NAME}</label>
                       </div>

					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">전화번호<span class="required">*</span>   </label>
    				    <label class="control-label">${model.PHONE}</label>
                       </div>
					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">이메일<span class="required">*</span>   </label>
    				    <label class="control-label">${model.EMAIL}</label>
                       </div>                       
					   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">권한<span class="required">*</span>   </label>
                        <label class="control-label">
                        <c:forEach var="item" items="${model.CONFIGLEVELLIST}" varStatus="status">
							<c:choose>
							<c:when test="${model.LEVEL == item.TITLE }">
								${item.NAME}
							</c:when>
							<c:otherwise>
							</c:otherwise>
							</c:choose>
						</c:forEach>
    				    </label>
                       </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                        <div class="pull-left">
                          <button class="btn btn-primary" type="button" onClick="location.href='./list.do?search=${model.search}&page=${model.page}&idx=${model.IDX}'">이전</button>
                         </div>
                         <div class="pull-right">
                          <button class="btn btn-success" type="button" onClick="location.href='./update.do?search=${model.search}&page=${model.page}&id=${model.ID}'">수정</button>
                         </div>
                        </div>
                      </div>
                    </form>
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
    
  </body>
</html>	
