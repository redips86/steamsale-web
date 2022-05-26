<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>

	<meta property="og:image" content="${App.headerImage}" />
	<meta property="og:image:width" content="460" />
	<meta property="og:image:height" content="215" />
	<meta property="og:url" content="http://steamsale.co.kr/app/${App.appId}" />
	
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/assets/plugins/animate.css">
    <link rel="stylesheet" href="/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
    <link rel="stylesheet" href="/assets/plugins/brand-buttons/brand-buttons.css">
    <link rel="stylesheet" href="/assets/plugins/brand-buttons/brand-buttons-inversed.css">

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="/assets/css/pages/profile.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/assets/css/custom.css">

	<style type="text/css">
	#chartdiv {
		width	: 100%;
		height	: 500px;
	}
	img.center {
	    display: block;
	    margin-left: auto;
	    margin-right: auto;
	}
	.myIframe {
		position: relative;
		height: 190px;
		overflow: auto; 
		-webkit-overflow-scrolling:touch;
	} 
	.myIframe iframe {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
	</style>
	
    <title>STEAMSALE | ${App.name}</title>
	
</head>
<body>
	<input type="hidden" id="appId" value='${App.appId}'/>
    <!--=== Profile ===-->
    <div class="container content profile">
    	<div class="row">
            <!--Left Sidebar-->
            <div class="col-md-3 md-margin-bottom-40">
                <img class="img-responsive profile-img margin-bottom-20 center" src="${App.headerImage}" alt="">
                    <button class="btn btn-block btn-bitbucket-inversed rounded" onclick="window.open('http://store.steampowered.com/app/${App.appId}');">
	                      <i class="fa fa-steam"></i> Steam에서 보기
	                </button>
                
                <hr style="margin: 10px 0;">
                
                <div class="shadow-wrapper">
                    <div class="tag-box tag-box-v1 box-shadow shadow-effect-2">
                        <h2>${App.name}</h2>
                        <c:choose>
                        	<c:when test="${App.description ne null}"><p><em>${App.description}</em></p></c:when>
                        	<c:otherwise><p><em>${App.aboutTheGame}</em></p></c:otherwise>
                        </c:choose>
                        <hr style="margin: 10px 0;">
                        <p>플랫폼 : ${App.platformHtml}</p>
                        <p>개발자 : ${App.developers}</p>
                        <p>배급사 : ${App.publishers}</p>
                        <p>출시 날짜 : ${App.releaseDate}</p>
                    </div>
                </div>

<!--                 <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
                    <li class="list-group-item active">
                        <a href="page_profile.html"><i class="fa fa-steam-square"></i> 메인</a>
                    </li>
                    <li class="list-group-item">
                        <a href="page_profile_me.html"><i class="fa fa-user"></i> 정보</a>
                    </li>
                    <li class="list-group-item">
                        <a href="page_profile_users.html"><i class="fa fa-group"></i> 공략</a>
                    </li>                                        
                    <li class="list-group-item">
                        <a href="page_profile_projects.html"><i class="fa fa-cubes"></i> 한글화</a>
                    </li>
                    <li class="list-group-item">
                        <a href="page_profile_comments.html"><i class="fa fa-comments"></i> 게시판</a>
                    </li>                                        
                </ul>    -->

				<c:if test="${App.metaScore ne 0 || Review.total ne 0}">
                <div class="panel-heading-v2 overflow-h">
                    <h2 class="heading-xs pull-left"><i class="fa fa-bar-chart-o"></i> 평가</h2>
                </div>
                </c:if>
                <c:if test="${App.metaScore ne 0}">
                <h3 class="heading-xs"><img src="/assets/img/mc_logo.png" style="height:30px;"><span class="pull-right"></span></h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="${App.metaScore}" aria-valuemin="0" aria-valuemax="100" style="width: ${App.metaScore}%">
                    	${App.metaScore} / 100
                    </div>
                </div>
                </c:if>
                
                <c:if test="${Review.total ne 0}">
                <h3 class="heading-xs sm-margin-bottom-20" style="margin-bottom: 1px;">
                <img src="/assets/img/steam_review.png" style="height:30px;">
                <span class="pull-right">
                	<span class="text-primary"><strong><i class="fa fa-thumbs-o-up"></i>${Review.positive} </strong></span>
                	<span class="text-danger"><i class="fa fa-thumbs-o-down"></i>${Review.negative}</span>
                </span>
               	
                </h3>
                
                <div class="progress">
                	<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="${Review.percent}" aria-valuemin="0" aria-valuemax="100" style="width: ${Review.percent}%">
                    	${Review.percent}%
                    </div>
                </div>
				</c:if>
            </div>
            <!--End Left Sidebar-->

            <!-- Profile Content -->            
            <div class="col-md-9">
                <div class="profile-body">
                	<!--Service Block v3-->
                    <div class="row margin-bottom-10">
                        <div class="col-sm-6 sm-margin-bottom-20">
                        
                            <div class="service-block-v3 rounded-2x service-block-u">
	                            <c:choose>
			                        <c:when test="${Price.priceCurrStr ne null}">
			                            <i class="fa fa-calculator"></i>
									</c:when> 
			                        <c:otherwise> 
			                        	<i class="icon-present"></i>
			                        </c:otherwise>
		                     	</c:choose>
                                <span class="service-heading">현재 가격</span>
                                <span class="counter fa fa-krw">${Price.priceCurrStr}</span>
                                
                                <div class="clearfix margin-bottom-10"></div>
                                
                                <div class="row">
                                    <div class="col-xs-6 service-in">
                                        <small>최저가</small>
                                        <h4 class="counter fa fa-krw">${Price.priceMinStr}</h4>
                                    </div>
                                    <div class="col-xs-6 text-right service-in">
                                        <small>최고가</small>
                                        <h4 class="counter fa fa-krw">${Price.priceMaxStr}</h4>
                                    </div>
                                </div>       
                            </div>
                         
     <!--                        <div class="service-block-v3 rounded-2x service-block-brown">
                            	
                            	<h2 class="heading-md">무료 게임</h2>
                            
                            	<div class="clearfix margin-bottom-45"></div>
                        	</div> -->
                           
                        </div>
                        
                        <div class="col-sm-6">
                            <div class="service-block-v3 rounded-2x service-block-blue">
                                <i class="icon-users"></i>
                                <span class="service-heading">현재 플레이어</span>
                                <span class="counter">${Player.playerCountCurrStr}</span>
                                
                                <div class="clearfix margin-bottom-10"></div>
                                
                                <div class="row">
                                    <div class="col-xs-6 service-in">
                                        <small>평균</small>
                                        <h4 class="counter">${Player.playerCountAvgStr}</h4>
                                    </div>
                                    <div class="col-xs-6 text-right service-in">
                                        <small>최대</small>
                                        <h4 class="counter">${Player.playerCountMaxStr}</h4>
                                    </div>
                                </div>
          
                            </div>
                        </div>
                	</div>
                	
                    <!--Service Block v3-->
                    <div class="row margin-bottom-10" >
                        <div class="col-sm-12 sm-margin-bottom-20">
                        	<div class="panel-heading overflow-h">
                            	<h2 class="panel-title heading-sm pull-left">
                            		<i class="fa fa-line-chart"></i>가격
                            	</h2>
                            </div>
                            <div class="service-block-v3 service-block-light" id="chartdiv"></div>
                        </div>
                    </div><!--/end row-->
                    <!--End Service Block v3-->

                    <hr>
                    
                    <div class="myIframe">
                    	<iframe src="http://store.steampowered.com/widget/${App.appId}" frameborder="0"></iframe>
                    </div>

                </div>
            </div>
            <!-- End Profile Content -->            
        </div>
    </div><!--/container-->    
    <!--=== End Profile ===-->

    <jsp:include page="../common/footer.jsp"></jsp:include>
    
    <!-- JS Implementing Plugins -->
	<script type="text/javascript" src="/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="/assets/plugins/counter/waypoints.min.js"></script>
	<script type="text/javascript" src="/assets/plugins/counter/jquery.counterup.min.js"></script> 
	<script type="text/javascript" src="/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="/assets/js/custom.js"></script>
	<!-- JS Page Level -->           
	<script type="text/javascript" src="/assets/js/app.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/datepicker.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function() {
	        App.init();
	        App.initCounter();
	        App.initScrollBar();
	        Datepicker.initDatepicker();
	        });
	</script>
    
    <!-- Custom JS -->           	
	<script src="http://www.amcharts.com/lib/3/amcharts.js"></script>
	<script src="http://www.amcharts.com/lib/3/serial.js"></script>
	<script src="http://www.amcharts.com/lib/3/themes/light.js"></script>
	<script type="text/javascript" src="/assets/js/redips/content/app.js"></script>
    
</body>
</html> 

	