<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.pdsu.education.Constant" %>
<%@ page import="com.pdsu.education.util.SystemPropertiesUtil" %>
<%@ page import="com.pdsu.education.util.PathUtil"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/style.css" rel='stylesheet' type='text/css' />
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/lines.css" rel='stylesheet' type='text/css' />
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/fonts/lib/font-awesome.css" rel="stylesheet"> 
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/custom.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">早教教育推广系统</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/${USER.image}"></a>
	        		<ul class="dropdown-menu">
						<li class="m_2"><a href="#"><i class="fa fa-user"></i> 个人信息</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-wrench"></i> 修改密码</a></li>
						<li class="m_2"><a href="<%=PathUtil.getFullPath("user/logout")%>"><i class="fa fa-usd"></i> 退出登录 </a></li>
	        		</ul>
	      		</li>
			</ul>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<%=PathUtil.getFullPath("admin/init-data")%>"><i class="fa fa-dashboard fa-fw glyphicon glyphicon-adjust"></i>系统信息</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-laptop glyphicon glyphicon-user"></i>用户管理<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("user/all-users")%>">管理用户</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent glyphicon glyphicon-book"></i>资讯管理<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("news/news-manage")%>">管理资讯</a>
                                </li>
                                <li>
                                    <a href="<%=PathUtil.getFullPath("news/news-create")%>">发布资讯</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-envelope glyphicon glyphicon-film"></i>视频管理<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("video/video-manage")%>">管理视频</a>
                                </li>
                                <li>
                                    <a href="<%=PathUtil.getFullPath("video/video-create")%>">添加视频</a>
                                </li>
                            </ul>
                        </li>
                         <li>
                            <a href="#"><i class="fa fa-check-square-o glyphicon glyphicon-modal-window"></i>系统设置<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("system/type-setting")%>">资讯设置</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
	    <div id="page-wrapper">
	        <div class="graphs">
		        <div class="row" style="margin-top: -20px; margin-left: -25px;margin-right: -25px;">
		            <div class="col-md-12">
		                <ul class="breadcrumb" style="background-color: #FFFFFF">
		                    <li>当前位置： 资讯管理/管理咨询</li>
		                </ul>
		            </div>
		        </div>
		        <div class="row">
		        	<div class="form-group filled">
		        	  <div class="col-md-1">
		              	  <label class="control-label">年龄段：</label>
		        	  </div>
		        	  <div class="col-md-2" style="margin-top: -9px;margin-left: -33px;">
			              <select class="form-control1 ng-invalid ng-invalid-required" ng-model="model.select" id="rangeSelect">
				              <c:forEach items="${all_ageRange}" var="n">
			                     <option  value="${n.id }">${n.name }</option>
			                  </c:forEach>
			              </select>
		        	  </div>
		        	  <div class="col-md-1">
		        	  </div>
		        	  <div class="col-md-2">
		              	  <label class="control-label">资讯类型：</label>
		        	  </div>
		        	  <div class="col-md-2" style="margin-top: -9px;margin-left: -112px;">
			              <select class="form-control1 ng-invalid ng-invalid-required" ng-model="model.select" id="multiselect">
			                <c:forEach items="${selectType}" var="selectType">
			                    <option  value="${selectType.id }">${selectType.name }</option>
			                </c:forEach>
			              </select>
		        	  </div>
		            </div>
		        </div>
		        <div class="row" style="height: 444px;">
		           <table class="table" style="margin-top: -24px;">
				      <thead>
				        <tr>
				          <th>ID</th>
				          <th>标题</th>
				          <th>发布时间</th>
				          <th></th>
				        </tr>
				      </thead>
				      <tbody>
				          <c:forEach items="${new_list}" var="n">
			                  <tr class="active">
				                  <th scope="row">${n.id }</th>
					          	  <td><a href="<%=PathUtil.getFullPath("news/get-news")%>?id=${n.id }">${n.title}</a></td>
					              <td>${n.updateTime}</td>
					              <td><a href="#"><i class="glyphicon glyphicon-pencil" style="margin-left: 20px;"></i></a><a href="#"><i class="glyphicon glyphicon-remove" style="margin-left: 20px;"></i></a></td>
				              </tr>
			              </c:forEach>
				      </tbody>
				    </table>
			    </div>
			    <div class="row" style="margin-top: 8px;height: 57px;">
			        <div class="col-md-4"></div>
			        <div class="col-md-4">
				        <ul class="pagination pagination-lg">
							<li class="disabled"><a href="#"><i class="fa glyphicon glyphicon-menu-left"></i></a></li>
							<c:forEach var="i" begin="1" end="${pagination.pageCount}">
							    <c:if test="${i == pagination.currentPage}">
							      <li class="active"><a href="#">${i }</a></li>
							    </c:if>
							    <c:if test="${i != pagination.currentPage}">
							      <li><a href="#">${i }</a></li>
							    </c:if>
							</c:forEach>
							<li><a href="#"><i class="fa glyphicon glyphicon-menu-right"></i></a></li>
					   </ul>
			        </div>
			        <div class="col-md-4"></div>
			    </div>
		    </div>
       </div>
    </div>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/metisMenu.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/custom.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/d3.v3.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/rickshaw.js"></script>
    <script type="text/javascript">
	    jQuery(document).ready(function($) {
	    	$('#rangeSelect').change(function(){
				var id = $(this).children('option:selected').val();
				$.ajax({
		             type: "GET",
		             url: "/EarlyEducation/page/system/type-setting-change/" + id,
		             dataType:"json",  
		             async:false,  
		             cache:false,
		             success: function(data){
		            	 $('#multiselect').empty(); 
		                 for(var i in data.noSelectType) {
	                         $('#multiselect').append("<option value='"+data.noSelectType[i].id+"'>"+data.noSelectType[i].name+"</option>")
		                 }
		            }
		         }); 
			});
	    	$('#multiselect').multiselect();
	    });
    </script>
</body>
</html>