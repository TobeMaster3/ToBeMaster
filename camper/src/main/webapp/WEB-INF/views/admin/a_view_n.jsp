<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.camper.model.NboardTO"%>
<% 

	NboardTO to = (NboardTO)request.getAttribute( "to" );
	String nseq = to.getNseq();
	String title = to.getTitle();
	String nick = to.getNick();
	String content = to.getContent();
	String wdate = to.getWdate();
	
%>
    
    
<!DOCTYPE html>
<html dir="ltr" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>CAMPER</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="../../image/png" sizes="16x16" href="../../iamges/favicon.png">
    <!-- Custom CSS -->
   <link href="../../css_a/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="../../admin/main.do">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!-- Dark Logo icon camper?????? ?????? ????????? ????????????-->
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="../../plugins_a/images/camper.png" alt="homepage" />
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ms-auto d-flex align-items-center">

                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li>
                           <a class="profile-pic" href="#">
                                <img src="../../plugins_a/images/users/1.jpg" alt="user-img" width="36" class="img-circle">
                                <span class="text-white font-medium">Admin</span>
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ------------------ ?????? ?????? ???????????? ----------------  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
        <ul id="sidebarnav">
        <!-- ???????????? -->
        <li class="sidebar-item pt-2">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/main.do" aria-expanded="false">
            <i class="fas fa-chart-area" aria-hidden="true"></i>
            <span class="hide-menu">???????????????</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/member.do" aria-expanded="false">
            <i class="fas fa-id-badge" aria-hidden="true"></i>
            <span class="hide-menu">????????????</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/leaveuser.do" aria-expanded="false">
            <i class="fas fa-male" aria-hidden="true"></i>
            <span class="hide-menu">????????????</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/comm.do" aria-expanded="false">
      		<i class="fa fa-globe" aria-hidden="true"></i>
         	<span class="hide-menu">????????????</span>
         	</a>
       	</li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/notice.do" aria-expanded="false">
            <i class="fa fa-info" aria-hidden="true"></i>
            <span class="hide-menu">????????????</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/ask.do" aria-expanded="false">
            <i class="fa fa-comment-dots" aria-hidden="true"></i>
            <span class="hide-menu">1:1??????</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/site.do" aria-expanded="false">
            <i class="fa fa-font" aria-hidden="true"></i>
            <span class="hide-menu">???????????????</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/admin.do" aria-expanded="false">
            <i class="fas fa-cog" aria-hidden="true"></i>
            <span class="hide-menu">???????????????</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/terms.do" aria-expanded="false">
            <i class="fas fa-clipboard-list" aria-hidden="true"></i>
            <span class="hide-menu">????????????</span>
            </a>
        </li>
        </ul>
		</nav>
        <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">????????????</h4>
                    </div>
                     <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">????????????</a></li>
                            </ol>
                            <a href="http://localhost:8080/search/theme.do" target="_blank"
                                class="btn btn-danger d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">
                                ???????????? ????????????
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">

                        
<!-- ?????? ????????? -->
<div class="con_txt">
	<div class="contents_sub">
<!-- ????????? -->
	<div class="board_view">
		<table>
		<tr>
			<th width="10%">??????&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<td width="60%"><%=title%></td>
			<th width="10%">?????????&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<td width="20%"><%=wdate%></td>
		</tr>
		<tr>
			<th>?????????&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<td><%=nick%></td>
		</tr>
		<tr>
			<td colspan="4" height="200" valign="top" style="padding: 20px; line-height: 160%"><%=content%></td>
		</tr>
		</table>
	</div>
<br><br><br>    
    <script type="text/javascript">
	window.onload = function() {
	document.getElementById( 'dbtn' ).onclick = function() {
		
	document.dfrm.submit();
		};
	};
	</script>

<!-- ?????? ?????? -->
	<div style="margin:10px 0 0;">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	        <tbody>
            <tr>
     	       <td align="right">
               <form action="/admin/delete_nOk.do" method="post" name="dfrm">
               <input type="hidden" name="nseq" value="<%=nseq %>" />
               <input type="button" value="??????" class="btn_list btn_txt02" style="cursor: pointer;" onclick="location.href='/admin/notice.do'" />
               <input type="button" value="??????" class="btn_list btn_txt02" style="cursor: pointer;" id="dbtn" onclick="location.href='/admin/delete_nOk.do'" />
               <input type="button" value="??????" class="btn_list btn_txt02" style="cursor: pointer;" onclick="location.href='/admin/modify_n.do?nseq=<%=nseq %>'" />
               <input type="button" value="??????" class="btn_write btn_txt01" style="cursor: pointer;" onclick="location.href=''" />
            </tr>
            </tbody>
         </table>
	</div>
<!-- ?????? ???-->

    <!-- ============================================================== -->
    <script src="../../plugins_a/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="../../js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../../js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../js/custom.js"></script>
</body>

</html>