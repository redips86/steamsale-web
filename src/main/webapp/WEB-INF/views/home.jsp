<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
	<meta property="og:image" content="http://steamsale.co.kr/assets/img/bg/steam3.jpg" />
	<meta property="og:image:width" content="1920" />
	<meta property="og:image:height" content="1080" />
	<meta property="og:url" content="http://steamsale.co.kr" />
	
	<jsp:include page="common/header.jsp"></jsp:include>
	
    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/assets/plugins/animate.css">
    <link rel="stylesheet" href="/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">    
    <link rel="stylesheet" href="/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
    <link rel="stylesheet" href="/assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">    
    <link rel="stylesheet" href="/assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
    <!--[if lt IE 9]><link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/css/sky-forms-ie8.css"><![endif]-->

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="/assets/css/pages/page_search.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/assets/css/custom.css">
    
    <title>STEAMSALE | 스팀 할인 정보</title>
    
    <style type="text/css">
    	@media(max-width: 700px){
    		#searchBr:before {
			    content:"\a";
			    line-height: 1.5;
			    white-space: pre;
			}
    	}
    </style>
</head>
<body class="header-fixed">
    <!--=== Search Block ===-->
    <div class="search-block parallaxBg">
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <h1>스팀할인 정보를 <span id="searchBr" class="color-green">검색</span>해 보세요</h1>

                <div class="input-group">
                    <input type="text" id="searchText" class="form-control" placeholder="게임ID 또는 이름을 입력하세요" maxlength=50>
                    <span class="input-group-btn">
                        <button class="btn-u btn-u-lg" id="searchBtn" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>

                <!-- <form action="" class="sky-form page-search-form">
                    <div class="inline-group">                    
                        <label class="checkbox"><input type="checkbox" name="checkbox-inline" checked><i></i>Recent</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox-inline"><i></i>Related</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox-inline"><i></i>Popular</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox-inline"><i></i>Most Common</label>
                    </div>
                </form>     -->
            </div>
        </div>    
    </div><!--/container-->     
    <!--=== End Search Block ===-->

    <!--=== Cube-Portfolio ===-->
    <div class="cube-portfolio container margin-bottom-60" >
        <div class="row">
	        <div class="content-xs" style="padding-top:0px;">
	        	<div id="top-banner" class="cbp-l-filters-text">
	        		<!-- top banner -->
		        	<!-- <a href="http://www.11st.co.kr/browsing/MallPlanDetail.tmall?method=getMallPlanDetail&planDisplayNumber=924981" target="_blank">
			        	    <img src="/assets/img/banners/top.jpg" alt="" />
		        	</a> -->
		        	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- steamsale_top -->
					<ins class="adsbygoogle"
					     style="display:inline-block;width:728px;height:90px"
					     data-ad-client="ca-pub-4338490525578472"
					     data-ad-slot="5434350748"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
	        	</div>
	            <div id="filters-container" class="cbp-l-filters-text content-xs">
	            	<div data-filter="*" class="cbp-filter-item-active cbp-filter-item"> 전체 </div> |
	            <c:forEach var="Type" items="${Types}" >
	                <div data-filter=".${Type.value}" class="cbp-filter-item"> ${Type.key} </div> |
	           	</c:forEach>
	                <!-- <div data-filter=".graphic" class="cbp-filter-item"> Graphic </div> |
	                <div data-filter=".logos" class="cbp-filter-item"> Logo </div> -->
	            </div><!--/end Filters Container-->
	        </div>
			<div class="col-md-11">
		        <div id="grid-container" class="cbp-l-grid-agency">
		        	<c:forEach var="Sale" items="${Sales}" >
		            <div class="cbp-item ${Sale.typeCss} }" >
		                <div class="cbp-caption">
		                    <div class="cbp-caption-defaultWrap">
		                        <img src="${Sale.headerImage}" alt="" />
		                    </div>
		                    <div class="cbp-caption-activeWrap">
		                        <div class="cbp-l-caption-alignCenter">
		                            <div class="cbp-l-caption-body">
		                                <ul class="link-captions">
		                                    <li><a href="${Sale.linkUrl}"><i class="rounded-x fa fa-search"></i></a></li>
		                                </ul>
		                                <div class="cbp-l-grid-agency-title"><strong>${Sale.name}</strong></div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            </c:forEach>
		        </div><!--/end Grid Container-->
			</div>
			<!-- 180x260 banner-->
			<div class="col-md-1">
				<!-- <a href="http://soho.11st.co.kr/sohomall/SohoAction.tmall?ID=SOHO&ctgrNo=55549" target="_blank">
	      			<img src="/assets/img/banners/r_1.jpg" alt="11번가 광고" style="width:180px; height:130px;">
	      		</a>
	      		<a href="http://soho.11st.co.kr/sohomall/SohoAction.tmall?ID=SOHO&ctgrNo=55549" target="_blank">
		        	<img src="/assets/img/banners/r_2.jpg" alt="11번가 광고" style="width:180px; height:130px;">
		        </a>
		        <a href="http://soho.11st.co.kr/sohomall/SohoAction.tmall?ID=SOHO&ctgrNo=55549" target="_blank">
		        	<img src="/assets/img/banners/r_3.jpg" alt="11번가 광고" style="width:180px; height:130px;">
		        </a>
		        <a href="http://www.11st.co.kr/connect/Gateway.tmall?method=Xsite&tid=1001059882" target="_blank">
		        	<img src="/assets/img/banners/180x260.jpg" alt="11번가 광고" style="width:180px; height:260px;">
		        </a> -->
		        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- steamsale_right -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:300px;height:600px"
				     data-ad-client="ca-pub-4338490525578472"
				     data-ad-slot="8387817141"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
		        
			</div>
        </div><!--/end Row-->
        
        
    </div>    
    <!--=== End Cube-Portfdlio ===-->

    <!--=== Parallax Counter ===-->
    <div class="parallax-counter-v2 parallaxBg1">
        <div class="container">
            <ul class="row list-row">
                <li class="col-md-3 col-sm-6 col-xs-12 md-margin-bottom-30">
                    <div class="counters rounded">
                        <span class="counter">${Count.totalAppCnt}</span>   
                        <a href="/apps/all"><h4>전체 게임</h4></a>
                    </div>    
                </li>
                <li class="col-md-3 col-sm-6 col-xs-12 md-margin-bottom-30">
                    <div class="counters rounded">
                        <span class="counter">${Count.totalPackageCnt}</span> 
                        <a href="/subs"><h4>전체 패키지</h4></a>
                    </div>    
                </li>
                <li class="col-md-3 col-sm-6 col-xs-12 sm-margin-bottom-30">
                    <div class="counters rounded">
                        <span class="counter">${Count.saleAppCnt}</span>
                        <a href="/sale"><h4>세일중인 게임</h4></a>
                    </div>    
                </li>
                <li class="col-md-3 col-sm-6 col-xs-12">
                    <div class="counters rounded">
                        <span class="counter">${Count.salePackageCnt}</span>
                        <a href="/sale"><h4>세일중인 패키지</h4></a>
                    </div>    
                </li>
            </ul>            
        </div>
    </div>    
    <!--=== End Parallax Counter ===-->

<!--     === Container Part ===
    <div class="container content-md">
        <ul class="row block-grid-v2">        
            <li class="col-md-4 col-sm-6 md-margin-bottom-30">
                <div class="easy-block-v1">
                    <img class="img-responsive" src="assets/img/mockup/img1.jpg" alt="">
                    <div class="easy-block-v1-badge rgba-purple">Unify Template</div>
                </div>
                <div class="block-grid-v2-info rounded-bottom">
                    <h3><a href="#">One Page Template</a></h3>
                    <p>Excepturi sint occaecati cupiditate non provident, at vero eos et accusamus et iusto odio..</p>
                    <ul class="list-inline star-vote">
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star-half-o"></i></li>
                    </ul>
                </div>
            </li>
            <li class="col-md-4 col-sm-6 md-margin-bottom-30">
                <div class="easy-block-v1">
                    <img class="img-responsive" src="assets/img/mockup/img2.jpg" alt="">
                    <div class="easy-block-v1-badge rgba-blue">Graphic Design</div>                    
                </div>
                <div class="block-grid-v2-info rounded-bottom">
                    <h3><a href="#">Mockup Design</a></h3>
                    <p>Excepturi sint occaecati cupiditate non provident, at vero eos et accusamus et iusto odio..</p>
                    <ul class="list-inline star-vote">
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star-half-o"></i></li>
                        <li><i class="color-green fa fa-star-o"></i></li>
                    </ul>
                </div>
            </li>
            <li class="col-md-4 col-sm-12">
                <div class="easy-block-v1">
                    <img class="img-responsive" src="assets/img/mockup/img4.jpg" alt="">
                    <div class="easy-block-v1-badge rgba-red">Web Development</div>
                </div>
                <div class="block-grid-v2-info rounded-bottom">
                    <h3><a href="#">HTML5/CSS3 + PHP</a></h3>
                    <p>Excepturi sint occaecati cupiditate non provident, at vero eos et accusamus et iusto odio..</p>
                    <ul class="list-inline star-vote">
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star"></i></li>
                        <li><i class="color-green fa fa-star-o"></i></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>/container
    === Container Part ===
 -->
<!--     === Container Part ===
    <div class="bg-grey">
        <div class="container content-md">
            <ul class="row list-row margin-bottom-30">
                <li class="col-md-4 md-margin-bottom-30">
                    <div class="content-boxes-v3 block-grid-v1 rounded">
                        <img class="pull-left rounded-x block-grid-v1-img" src="assets/img/testimonials/img6.jpg" alt="">
                        <div class="content-boxes-in-v3">
                            <h3><a href="#">Forbes 1000</a></h3>
                            <ul class="star-vote">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star-half-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                            </ul>
                            <ul class="list-inline margin-bottom-5">
                                <li>By <a class="color-green" href="#">Edward Rooster</a></li>
                                <li><i class="fa fa-clock-o"></i> Oct 07, 2014</li>
                            </ul>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium...</p>
                            <ul class="list-inline block-grid-v1-add-info">
                                <li><a href="#"><i class="fa fa-eye"></i> 34039</a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i> 451</a></li>
                                <li><a href="#"><i class="fa fa-download"></i> 10842</a></li>
                                <li><a href="#"><i class="fa fa-heart"></i> 863</a></li>
                            </ul>    
                        </div>
                    </div>
                </li>
                <li class="col-md-4 md-margin-bottom-30">
                    <div class="content-boxes-v3 block-grid-v1 rounded">
                        <i class="icon-custom icon-sm rounded-x icon-bg-red fa fa-line-chart"></i>
                        <div class="content-boxes-in-v3">
                            <h3><a href="#">Business &amp; Finance</a></h3>
                            <ul class="star-vote">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star-half-o"></i></li>
                            </ul>
                            <ul class="list-inline margin-bottom-5">
                                <li>By <a class="color-green" href="#">The Economist</a></li>
                                <li><i class="fa fa-clock-o"></i> Oct 02, 2014</li>
                            </ul>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium...</p>
                            <ul class="list-inline block-grid-v1-add-info">
                                <li><a href="#"><i class="fa fa-eye"></i> 4258</a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i> 382</a></li>
                                <li><a href="#"><i class="fa fa-download"></i> 2938</a></li>
                                <li><a href="#"><i class="fa fa-heart"></i> 230</a></li>
                            </ul>    
                        </div>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="content-boxes-v3 block-grid-v1 rounded">
                        <img class="rounded-x pull-left block-grid-v1-img" src="assets/img/testimonials/img7.jpg" alt="">
                        <div class="content-boxes-in-v3">
                            <h3><a href="#">Web Programming</a></h3>
                            <ul class="star-vote">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star-half-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                            </ul>
                            <ul class="list-inline margin-bottom-5">
                                <li>By <a class="color-green" href="#">Edward Rooster</a></li>
                                <li><i class="fa fa-clock-o"></i> Jan 02, 2013</li>
                            </ul>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium...</p>
                            <ul class="list-inline block-grid-v1-add-info">
                                <li><a href="#"><i class="fa fa-eye"></i> 34039</a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i> 451</a></li>
                                <li><a href="#"><i class="fa fa-download"></i> 10842</a></li>
                                <li><a href="#"><i class="fa fa-heart"></i> 863</a></li>
                            </ul>    
                        </div>
                    </div>
                </li>
            </ul>

            <ul class="row list-row">
                <li class="col-md-4 md-margin-bottom-30">
                    <div class="content-boxes-v3 block-grid-v1 rounded">
                        <i class="icon-custom icon-sm rounded-x icon-bg-blue fa fa-twitter"></i>
                        <div class="content-boxes-in-v3">
                            <h3><a href="#">Social Network</a></h3>
                            <ul class="star-vote">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                            </ul>
                            <ul class="list-inline margin-bottom-5">
                                <li>By <a class="color-green" href="#">Twitter Inc.</a></li>
                                <li><i class="fa fa-clock-o"></i> Jan 02, 2013</li>
                            </ul>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium...</p>
                            <ul class="list-inline block-grid-v1-add-info">
                                <li><a href="#"><i class="fa fa-eye"></i> 25232</a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i> 543</a></li>
                                <li><a href="#"><i class="fa fa-download"></i> 6782</a></li>
                                <li><a href="#"><i class="fa fa-heart"></i> 943</a></li>
                            </ul>    
                        </div>
                    </div>
                </li>
                <li class="col-md-4 md-margin-bottom-30">
                    <div class="content-boxes-v3 block-grid-v1 rounded">
                        <img class="rounded-x pull-left block-grid-v1-img" src="assets/img/testimonials/img2.jpg" alt="">
                        <div class="content-boxes-in-v3">
                            <h3><a href="#">Education/Travel</a></h3>
                            <ul class="star-vote">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star-half-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                            </ul>
                            <ul class="list-inline margin-bottom-5">
                                <li>By <a class="color-green" href="#">Stanford University</a></li>
                                <li><i class="fa fa-clock-o"></i> Jan 02, 2013</li>
                            </ul>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium...</p>
                            <ul class="list-inline block-grid-v1-add-info">
                                <li><a href="#"><i class="fa fa-eye"></i> 7653</a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i> 342</a></li>
                                <li><a href="#"><i class="fa fa-download"></i> 3621</a></li>
                                <li><a href="#"><i class="fa fa-heart"></i> 583</a></li>
                            </ul>    
                        </div>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="content-boxes-v3 block-grid-v1 rounded">
                        <i class="icon-custom icon-sm rounded-x icon-bg-purple fa fa-music"></i>
                        <div class="content-boxes-in-v3">
                            <h3><a href="#">Music/Films</a></h3>
                            <ul class="star-vote">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star-half-o"></i></li>
                            </ul>
                            <ul class="list-inline margin-bottom-5">
                                <li>By <a class="color-green" href="#">Sony Corporation</a></li>
                                <li><i class="fa fa-clock-o"></i> Jan 02, 2013</li>
                            </ul>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium...</p>
                            <ul class="list-inline block-grid-v1-add-info">
                                <li><a href="#"><i class="fa fa-eye"></i> 62637</a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i> 741</a></li>
                                <li><a href="#"><i class="fa fa-download"></i> 21314</a></li>
                                <li><a href="#"><i class="fa fa-heart"></i> 1041</a></li>
                            </ul>    
                        </div>
                    </div>
                </li>
            </ul>
        </div>        
    </div>

    === Container Part ===
    <div class="testimonials-v3">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <ul class="list-unstyled owl-ts-v1">
                        <li class="item">
                            <img class="rounded-x img-bordered" src="assets/img/team/img3-sm.jpg" alt="">
                            <div class="testimonials-v3-title">
                                <p>David Case</p>
                                <span>Web Developer, Google</span>
                            </div>
                            <p>I just wanted to tell you how much I like to use Unify - <strong>it's so sleek and elegant!</strong> <br>
                            The customisation options you implemented are countless, and I feel sorry I can't use them all. Good job, and keep going!<p>
                        </li>
                        <li class="item">
                            <img class="rounded-x img-bordered" src="assets/img/team/img2-sm.jpg" alt="">
                            <div class="testimonials-v3-title">
                                <p>Tina Krueger</p>
                                <span>UI Designer, Apple</span>
                            </div>                                
                            <p>Keep up the great work. Your template is by far the best on the market in terms of features, quality and value or money.At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium..</p>
                        </li>
                        <li class="item">
                            <img class="rounded-x img-bordered" src="assets/img/team/img1-sm.jpg" alt="">
                            <div class="testimonials-v3-title">
                                <p>John Clarck</p>
                                <span>Marketing &amp; Cunsulting, IBM</span>
                            </div>
                            <p>So far I really like the theme. I am looking forward to exploring more of your themes. Thank you! At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium...</p>
                        </li>
                    </ul>
                </div>                    
            </div>
        </div>
    </div>                 
    === Container Part === -->

    <jsp:include page="common/footer.jsp"></jsp:include>
    <!-- JS Implementing Plugins -->
	<script type="text/javascript" src="/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="/assets/plugins/jquery.parallax.js"></script>
	<script type="text/javascript" src="/assets/plugins/counter/waypoints.min.js"></script>
	<script type="text/javascript" src="/assets/plugins/counter/jquery.counterup.min.js"></script>
    <script type="text/javascript" src="/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="/assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.js"></script>

	<!-- JS Customization -->
	<script type="text/javascript" src="/assets/js/custom.js"></script>

	<!-- JS Page Level -->
    <script type="text/javascript" src="/assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/cube-portfolio/cube-portfolio-3.js"></script>           
	<script type="text/javascript" src="/assets/js/app.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function() {
	        App.init();
	        App.initCounter();
	        App.initParallaxBg();
	        OwlCarousel.initOwlCarousel();
	        
	        function add() { 
	        	if($('#searchText').val() == "")
	        		 $('#searchText').addClass("red-placeholder");
	        	else	
	        		location.href= '/search/' + $('#searchText').val() + '/1'; 
	        	
	        }  
	        $('#searchBtn').bind( 'click', add );
	        $('#searchText').keyup(function(e) { if (e.keyCode == 13) add(); });
	    });
	</script>
	
</body>
</html> 

	