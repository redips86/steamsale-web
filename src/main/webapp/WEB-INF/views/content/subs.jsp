<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
	<meta property="og:image" content="http://steamsale.co.kr/assets/img/bg/steam3.jpg" />
	<meta property="og:image:width" content="1920" />
	<meta property="og:image:height" content="1080" />
	<meta property="og:url" content="http://steamsale.co.kr/subs/${PagingInfo.currIdx}" />
	
	<jsp:include page="../common/header.jsp"></jsp:include>

	<!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/assets/plugins/animate.css">
    <link rel="stylesheet" href="/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="/assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="/assets/css/pages/page_search_inner_tables.css">
    <link rel="stylesheet" href="/assets/css/pages/pricing/pricing_v3.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/assets/css/custom.css">
	
    <title>STEAMSALE | 패키지 리스트</title>

</head>
<body>
	
    
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">패키지</h1>
        </div>
    </div>
    
    <div class="container content-sm" style="padding-top:5px;padding-bottom:5px;">
    <div class="text-center">
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
    <!-- Begin Table Search Panel v2 -->
    <div class="table-search-v2 panel panel-dark margin-bottom-20">
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead>
                    <c:choose>
                    	<c:when test="${!empty Searches}">
	                   <!--  <tr> 
	                        <th class="text-center"></th>
	                        <th class="text-center"><i class="fa fa-picture-o fa-2x"></i></th>
	                        <th class="hidden-sm text-center"><i class="fa fa-gamepad fa-2x"></th>
	                        <th class="text-center"><i class="fa fa-money fa-2x"></th>
	                        <th class="text-center"><i class="fa fa-tag fa-2x"></th>
	                        <th class="text-center"><i class="fa fa-thumbs-o-up fa-2x"></th>
	                    </tr> -->
	                	</c:when>
		                <c:otherwise>
		                <tr style="height:200px;">   
	                    	<th class="text-center" style="vertical-align: middle;"><h3>결과가 존재하지 않습니다</h3></th>
	                    </tr>
                   		</c:otherwise>
                    </c:choose>
                   
                </thead>
                <tbody>
                	<c:forEach var="Search" items="${Searches}" varStatus="status">
                    <tr>
                    	<td class="center" style="text-align:center;">
                        	<span><a href="/sub/${Search.id}">${Search.id}</a></span>
                        </td>
                        <td>
                            <a href="/sub/${Search.id}"><img src="${Search.image_184x69}" alt="" style="width:184px; height:69px;"></a>
                        </td>
                        <td>
                        	<h3><a href="/sub/${Search.id}">${Search.name}</a></h3>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>    
    </div>
    <!-- End Table Search Panel v2 -->
    <c:if test="${!empty Searches}">
    <div class="text-center">
        <ul class="pagination">
        	<c:if test="${PagingInfo.currIdx > 5}">
        	<li><a href="/subs/1"><<</a></li>
        	</c:if>
        	<c:if test="${PagingInfo.currIdx ne PagingInfo.beforeIdx}">
            <li><a href="/subs/${PagingInfo.beforeIdx}"><</a></li>
            </c:if>
            <fmt:formatNumber var="expiry" value="${((PagingInfo.currIdx - 1) / 5) - (((PagingInfo.currIdx - 1 )/ 5) % 1)}" maxFractionDigits="0" pattern="#"/>
            <fmt:formatNumber var="finish" value="${(PagingInfo.totalCount / 50) + (1- ((PagingInfo.totalCount / 50) % 1)) % 1}" maxFractionDigits="0" pattern="#"/>
            
            <c:forEach var="b" varStatus="status" begin="1" end="5">
            
            <c:if test="${finish + 1 > (expiry * 5) + status.index }">
            <c:choose>
	            <c:when test="${((expiry * 5) + status.index) eq PagingInfo.currIdx}"><li class="active"></c:when>
				<c:otherwise><li></c:otherwise>
            </c:choose>
	            <a href="/subs/${(expiry * 5) + status.index}">${(expiry * 5) + status.index}</a>
            </li>
            </c:if>
            </c:forEach>
            <c:if test="${PagingInfo.currIdx ne PagingInfo.nextIdx}">
            <li><a href="/subs/${PagingInfo.nextIdx}">></a></li>
            </c:if>
            <c:if test="${(expiry * 5) + 5 < finish}">
            <li><a href="/subs/${finish}">>></a></li>
            </c:if>
        </ul>                                                            
    </div>
    </c:if>
    <div class="text-center">
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
    </div>
    

    <jsp:include page="../common/footer.jsp"></jsp:include>
    
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="/assets/plugins/smoothScroll.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="/assets/js/custom.js"></script>
	<!-- JS Page Level -->           
	<script type="text/javascript" src="/assets/js/app.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function() {
	        App.init();
	        $('.nav.navbar-nav li').removeClass("active");
	        $('#lPackage').addClass("active");
	        $('#subsall').addClass("active");
	        
		});
	    
	</script>
    
</body>
</html> 

	