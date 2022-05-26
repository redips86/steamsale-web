<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
	<meta property="og:image" content="http://steamsale.co.kr/assets/img/bg/steam3.jpg" />
	<meta property="og:image:width" content="1920" />
	<meta property="og:image:height" content="1080" />
	<meta property="og:url" content="http://steamsale.co.kr/sale/${Title}<c:if test="${Title ne null}">/${PagingInfo.currIdx}</c:if>" />
	
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
	
    <title>STEAMSALE | 세일 정보</title>
	
	
</head>
<body>
	
	<div class="breadcrumbs">
        <div class="container">
            <ul class="pull-right breadcrumb">
                <li><a href="/">메인</a></li>
                <c:choose>
	                <c:when test="${Title eq null}">
	                	<li class="active"><a href="/sale" style="color: #72c02c;">세일 [${PagingInfo.totalCount}개]</a></li>
	                </c:when>
	               	<c:otherwise>
		               	<li><a href="/sale">세일</a></li> 
		               	<c:forEach var="Sale" items="${Sales}">
		                <li class="active" ><a href="/sale/${Title}/1" style="color: #72c02c;">${Sale.key} [${PagingInfo.totalCount}개]</a></li>
		                </c:forEach>
	                </c:otherwise>
                </c:choose>
            </ul>
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
    <!-- Begin Table Search Panel v2 -->
	</div>
    <div class="table-search-v2 panel panel-dark margin-bottom-20">
        
        <c:choose>
	        <c:when test="${Title eq null}">
		        <c:forEach var="Sale" items="${Sales}">
		        <div class="panel-heading" style="text-align:center;">
		            <h3 class="panel-title"> <a href="/sale/${Sales[Sale.key][0].titleUrl}/1">${Sale.key}</a></h3>
		        </div>
		        <div class="table-responsive">
		        <table class="table table-bordered table-striped">
		                <thead>
		                
		                </thead>
		                <tbody>
		                	<c:forEach var="item" items="${Sales[Sale.key]}" begin="0" end="30">
		                    <tr>
		                    	<td class="center" style="text-align:center; width:64px;">
		                        	<span><a href="${item.linkUrl}">${item.id}</a></span>
		                        </td>
		                        <td>
		                            <a href="${item.linkUrl}"><img class="lazy" data-original="${item.headerImage}" alt="" style="width:184px; height:69px;"></a>
		                        </td>
		                        <td style="width:55%;">
		                            <h3><a href="${item.linkUrl}">${item.name}</a></h3>
		                          <%--   <ul class="list-inline down-ul">
		                            	<c:forEach var="Genre" items="${Search.appGenre}" varStatus="genreStatus">
				                        <li>
				                        <span class="label rounded ${Genre.css}">
				                        	<i class="fa fa-tags"></i><a href="/game" style="color: #fff;"> ${Genre.description}</a>
				                        </span>
				                        </li>
				                        </c:forEach>
		                    		</ul> --%>
		                        </td>
		                        <td style="text-align:center; width:77px;">
		                        	<button class="btn btn-block btn-sm
		                       	 	<c:choose>
		                       	  		<c:when test="${item.discountPercent > 75}">btn-danger</c:when>
		                       	  		<c:when test="${item.discountPercent > 30}">btn-warning</c:when>
		                       	  		<c:when test="${item.discountPercent > 0}">btn-info</c:when>
										<c:otherwise>btn-u-default</c:otherwise>
		                       		</c:choose>
		                        	"></i> -${item.discountPercentStr}%</button>
		                        </td>
		                        <td style="text-align:center; width:77px;">
		                        	<h3>${item.finalPrice}$</h3>
		                            <c:if test="${item.initialPrice != item.finalPrice }"><del>${item.initialPrice}$</del></c:if>
		                        </td>
		                        <td style="text-align:center; width:77px;">
		                            <span class="text-primary"><i class="fa fa-thumbs-o-up"></i> ${item.positive}</span>
		                            <span class="text-danger"><i class="fa fa-thumbs-o-down"></i> ${item.negative}</span>
		                        </td>
		                    </tr>
		                    </c:forEach>
		                    <c:if test="${fn:length(Sales[Sale.key]) > 30 && Title eq null}" >
		                    <tr style="text-align:center;">
		                    	<td colspan="6"><a href="/sale/${Sales[Sale.key][0].titleUrl}/1"><button type="button" class="btn-u btn-u-default btn-block text-center">더 보기..</button></a></td>
		                    </tr>
		                    </c:if>
		                </tbody>
		            </table>
		        </div>    
		        </c:forEach>
	        
	        </c:when>
	        <c:otherwise>
	        	 <c:forEach var="Sale" items="${Sales}">
		        <div class="panel-heading" style="text-align:center;">
		            <h3 class="panel-title"> <a href="/sale/${Sales[Sale.key][0].titleUrl}/1">${Sale.key}</a></h3>
		        </div>
		        <div class="table-responsive">
		        <table class="table table-bordered table-striped">
		                <thead>
		                
		                </thead>
		                <tbody>
		                	<c:forEach var="item" items="${Sales[Sale.key]}">
		                    <tr>
		                    	<td class="center" style="text-align:center; width:64px;">
		                        	<span><a href="${item.linkUrl}">${item.id}</a></span>
		                        </td>
		                        <td>
		                            <img class="lazy" data-original="${item.headerImage}" alt="" style="width:184px; height:69px;">
		                        </td>
		                        <td style="width:55%;">
		                            <h3><a href="${item.linkUrl}">${item.name}</a></h3>
		                        </td>
		                        <td style="text-align:center; width:77px;">
		                        	<button class="btn btn-block btn-sm
		                       	 	<c:choose>
		                       	  		<c:when test="${item.discountPercent > 75}">btn-danger</c:when>
		                       	  		<c:when test="${item.discountPercent > 30}">btn-warning</c:when>
		                       	  		<c:when test="${item.discountPercent > 0}">btn-info</c:when>
										<c:otherwise>btn-u-default</c:otherwise>
		                       		</c:choose>
		                        	">-${item.discountPercentStr}%</button>
		                        </td>
		                        <td style="text-align:center; width:77px;">
		                        	<h3>${item.finalPrice}$</h3>
		                            <del>${item.initialPrice}$</del>
		                        </td>
		                        <td style="text-align:center; width:77px;">
		                            <span class="text-primary"><i class="fa fa-thumbs-o-up"></i> ${item.positive}</span>
		                            <span class="text-danger"><i class="fa fa-thumbs-o-down"></i> ${item.negative}</span>
		                        </td>
		                    </tr>
		                    </c:forEach>
		                </tbody>
		            </table>
		        </div>    
		        </c:forEach>
	        </c:otherwise>
        </c:choose>
    </div>
    
    <c:if test="${Title ne null }">
    <!-- End Table Search Panel v2 -->
    <div class="text-center">
        <ul class="pagination">
        	<c:if test="${PagingInfo.currIdx > 5}">
        	<li><a href="/sale/${Title}/1"><<</a></li>
        	</c:if>
        	<c:if test="${PagingInfo.currIdx ne PagingInfo.beforeIdx}">
            <li><a href="/sale/${Title}/${PagingInfo.beforeIdx}"><</a></li>
            </c:if>
            <fmt:formatNumber var="expiry" value="${((PagingInfo.currIdx - 1) / 5) - (((PagingInfo.currIdx - 1 )/ 5) % 1)}" maxFractionDigits="0" pattern="#"/>
            <fmt:formatNumber var="finish" value="${(PagingInfo.totalCount / 100) + (1- ((PagingInfo.totalCount / 100) % 1)) % 1}" maxFractionDigits="0" pattern="#"/>
            
            <c:forEach var="b" varStatus="status" begin="1" end="5">
            
            <c:if test="${finish + 1 > (expiry * 5) + status.index }">
            <c:choose>
	            <c:when test="${((expiry * 5) + status.index) eq PagingInfo.currIdx}"><li class="active"></c:when>
				<c:otherwise><li></c:otherwise>
            </c:choose>
	            <a href="/sale/${Title}/${(expiry * 5) + status.index}">${(expiry * 5) + status.index}</a>
            </li>
            </c:if>
            </c:forEach>
            <c:if test="${PagingInfo.currIdx ne PagingInfo.nextIdx}">
            <li><a href="/sale/${Title}/${PagingInfo.nextIdx}">></a></li>
            </c:if>
            <c:if test="${(expiry * 5) + 5 < finish}">
            <li><a href="/sale/${Title}/${finish}">>></a></li>
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
	<script type="text/javascript" src="/assets/js/jquery.lazyload.min.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function() {
	        App.init();
	        $('.nav.navbar-nav li').removeClass("active");
	        $('#lSale').addClass("active");
	        
		    $("img.lazy").lazyload({
		    	threshold : 50,
		    	effect : 'fadeIn'
		    });
		});

	</script>
    
</body>
</html> 

	