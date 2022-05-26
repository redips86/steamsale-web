<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="steamsale">
    <meta property="og:site_name" content="STEAMSALE">
	<meta property="og:title" content="스팀 세일" />
	<meta property="og:description" content="스팀 가격 추적 서비스" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="/assets/img/favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="/assets/css/footers/footer-v1.css">
</head> 

<body>    

<div class="wrapper">
	<div class="header">
        <div class="container">
            <!-- Logo -->
			<a class="logo" href="/">
                <img src="/assets/img/mylogo.png" alt="Logo">
            </a>
            <!-- End Logo -->
            
            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">
<!--                    <li class="hoverSelector">
                        <i class="fa fa-globe"></i>
                        <a>Languages</a>
                        <ul class="languages hoverSelectorBlock">
                            <li class="active">
                                <a href="#">English <i class="fa fa-check"></i></a> 
                            </li>
                            <li><a href="#">Spanish</a></li>
                            <li><a href="#">Russian</a></li>
                            <li><a href="#">German</a></li>
                        </ul>
                    </li>
                    <li class="topbar-devider"></li>   
                    <li><a href="page_faq.html">Help</a></li>  
                    <li class="topbar-devider"></li>   
                    <li><a href="page_login.html">Login</a></li> -->
                </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div><!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav">
                            <!-- Game -->
                            <li class="dropdown" id="lGame">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
									게임
                                </a>
                                <ul class="dropdown-menu">
                                    <li id="appsall"><a href="/apps/all">전체</a></li>
									<li id="appsgame"><a href="/apps/game">게임</a></li>
									<li id="appsdlc"><a href="/apps/dlc">DLC</a></li>
									<li id="appsdemo"><a href="/apps/demo">데모</a></li>
									<li id="appsmod"><a href="/apps/mod">모드</a></li>
                                </ul>
                            </li>
                            <!-- End Game -->

                            <!-- Package -->                        
                            <li class="dropdown" id="lPackage">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                  	  패키지
                                </a>
                                <ul class="dropdown-menu">
                                	<li id="subsall"><a href="/subs">전체</a></li>
                                </ul>
                            </li>
                            <!-- End Package -->
                            
                            <!-- Genre -->                        
                            <li class="dropdown" id="lGenre">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                  	  장르
                                </a>
                                <ul class="dropdown-menu">
                                	<li id="genre1"><a href="/genre/1">액션</a></li>
                                	<li id="genre2"><a href="/genre/2">전략</a></li>
                                	<li id="genre3"><a href="/genre/3">롤 플레잉</a></li>
                                	<li id="genre9"><a href="/genre/9">레이싱</a></li>
                                	<li id="genre18"><a href="/genre/18">스포츠</a></li>
                                	<li id="genre23"><a href="/genre/23">인디</a></li>
                                	<li id="genre28"><a href="/genre/28">시뮬레이션</a></li>
                                	<li id="genre37"><a href="/genre/37">무료</a></li>
                                	<li id="genre70"><a href="/genre/70">앞서 해보기</a></li>
                                </ul>
                            </li>
                            <!-- End Genre -->
                            
                            <!-- Sale -->                        
                            <li id="lSale">
                                <a href="/sale">
                                  	  세일
                                </a>
                            </li>
                            <!-- End Sale -->

                            <!-- Search Block -->
                            <li>
                                <i class="search fa fa-search search-btn"></i>
                                <div class="search-open">
                                    <div class="input-group animated fadeInDown">
                                        <input id="searchHeaderText" type="text" class="form-control" placeholder="게임ID 또는 이름">
                                        <span class="input-group-btn">
                                            <button id="searchHeaderBtn" class="btn-u" type="button">검색</button>
                                        </span>
                                    </div>
                                </div>    
                            </li>
                            <!-- End Search Block -->
                        </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
	