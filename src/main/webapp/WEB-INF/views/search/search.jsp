<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
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
	
    <title>STEAMSALE | 검색 정보</title>

	
	<style type="text/css">
	.highlight {
	    background-color:yellow;
	    font-weight:bold;
	}
	</style>
</head>
<body>
	<input type="hidden" id="appId" value='${App.appId}'/>
	<!--=== Search Block Version 2 ===-->
    <div class="search-block">
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <h2>다시 검색하기</h2>
                <div class="input-group">
                    <input type="text" id="searchText" value="${query}" class="form-control" placeholder="게임 ID 또는 이름을 입력하세요">
                    <span class="input-group-btn">
                        <button class="btn-u" type="button" id="searchBtn"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </div>
        </div>    
    </div><!--/container-->     
    <!--=== End Search Block Version 2 ===-->
    
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
        <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-search"></i> '${query}' 검색 결과</h3>
        </div>
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
	                    	<th class="text-center" style="vertical-align: middle;"><h3>검색 결과가 존재하지 않습니다</h3></th>
	                    </tr>
                   		</c:otherwise>
                    </c:choose>
                   
                </thead>
                <tbody>
                	<c:forEach var="Search" items="${Searches}" varStatus="status">
                    <tr>
                    	<td class="center" style="text-align:center">
                    	<c:choose>
                    		<c:when test="${Search.type == 'sub'}"><span><a href="/sub/${Search.id}">${Search.id}</a></span></c:when>
                        	<c:otherwise><span><a href="/app/${Search.id}">${Search.id}</a></span></c:otherwise>
                        </c:choose>
                        </td>
                        <td>
                            <a href="/app/${Search.id}"><img src="${Search.image_184x69}" alt="" style="width:184px; height:69px;"></a>
                        </td>
                        <td class="td-width">
                        <c:choose>
                        	<c:when test="${Search.type == 'sub'}"><h3><a href="/sub/${Search.id}">${Search.name}</a></h3></c:when>
                        	<c:otherwise><h3><a href="/app/${Search.id}">${Search.name}</a></h3></c:otherwise>
                            
                        </c:choose>
                            <ul class="list-inline down-ul">
                            	<c:forEach var="Genre" items="${Search.appGenre}" varStatus="genreStatus">
		                        <li>
		                        <span class="label rounded ${Genre.css}">
		                        	<%-- <i class="fa fa-tags"></i>${Genre.description} --%>
		                        	<i class="fa fa-tags"></i><a href="/genre/${Genre.genreId}/1" style="color: #fff;"> ${Genre.description}</a>
		                        </span>
		                        </li>
		                        </c:forEach>
                    		</ul>
                        </td>
                        <td style="text-align:center">
                        	<button class="btn btn-block btn-sm
                       	 	<c:choose>
                       	  		<c:when test="${Search.discountPercent > 75}">btn-danger</c:when>
                       	  		<c:when test="${Search.discountPercent > 30}">btn-warning</c:when>
                       	  		<c:when test="${Search.discountPercent > 0}">btn-info</c:when>
								<c:otherwise>btn-u-default</c:otherwise>
                       		</c:choose>
                        	"></i> -${Search.discountPercentStr}%</button>
                        </td>
                        <td style="text-align:center">
                        <c:choose>
                        <c:when test="${Search.finalPrice eq 0 && Search.initialPrice eq 0}">
                        	<h3>무료</h3>
                        </c:when>
                        <c:otherwise>
                        	<h3>${Search.finalPrice}$</h3>
                            <c:if test="${Search.initialPrice != Search.finalPrice }"><del>${Search.initialPrice}$</del></c:if>
                        </c:otherwise>
						</c:choose>
                        </td>
                        <td style="text-align:center">
                            <span class="text-primary"><i class="fa fa-thumbs-o-up"></i> ${Search.positive}</span>
                            <span class="text-danger"><i class="fa fa-thumbs-o-down"></i> ${Search.negative}</span>
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
        	<li><a href="/search/${query}/1"><<</a></li>
        	</c:if>
        	<c:if test="${PagingInfo.currIdx ne PagingInfo.beforeIdx}">
            <li><a href="/search/${query}/${PagingInfo.beforeIdx}"><</a></li>
            </c:if>
            <fmt:formatNumber var="expiry" value="${((PagingInfo.currIdx - 1) / 5) - (((PagingInfo.currIdx - 1 )/ 5) % 1)}" maxFractionDigits="0" pattern="#"/>
            <fmt:formatNumber var="finish" value="${(PagingInfo.totalCount / 5) + (1- ((PagingInfo.totalCount / 5) % 1)) % 1}" maxFractionDigits="0" pattern="#"/>
            
            <c:forEach var="b" varStatus="status" begin="1" end="5">
            
            <c:if test="${finish + 1 > (expiry * 5) + status.index }">
            <c:choose>
	            <c:when test="${((expiry * 5) + status.index) eq PagingInfo.currIdx}"><li class="active"></c:when>
				<c:otherwise><li></c:otherwise>
            </c:choose>
	            <a href="/search/${query}/${(expiry * 5) + status.index}">${(expiry * 5) + status.index}</a>
            </li>
            </c:if>
            </c:forEach>
            <c:if test="${PagingInfo.currIdx ne PagingInfo.nextIdx}">
            <li><a href="/search/${query}/${PagingInfo.nextIdx}">></a></li>
            </c:if>
            <c:if test="${(expiry * 5) + 5 < finish}">
            <li><a href="/search/${query}/${finish}">>></a></li>
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
	        
	        function add() { 
	        	if($('#searchText').val() == "")
	        		 $('#searchText').addClass("red-placeholder");
	        	else	
	        		location.href= '/search/' + $('#searchText').val() + '/1'; 
	        }    
	        $('#searchBtn').bind( 'click', add );
	        $('#searchText').keyup(function(e) { if (e.keyCode == 13) add(); });
		});
	    
	    jQuery.fn.highlight = function (pat) {
	        function innerHighlight(node, pat) {
	            var skip = 0;
	            if (node.nodeType == 3) {
	                var pos = node.data.toUpperCase().indexOf(pat);
	                if (pos >= 0) {
	                    var spannode = document.createElement('a');
	                    spannode.className = 'highlight';
	                    var middlebit = node.splitText(pos);
	                    var endbit = middlebit.splitText(pat.length);
	                    var middleclone = middlebit.cloneNode(true);
	                    spannode.appendChild(middleclone);
	                    middlebit.parentNode.replaceChild(spannode, middlebit);
	                    skip = 1;
	                }
	            } else if (node.nodeType == 1 && node.childNodes && !/(script|style)/i.test(node.tagName)) {
	                for (var i = 0; i < node.childNodes.length; ++i) {
	                    i += innerHighlight(node.childNodes[i], pat);
	                }
	            }
	            return skip;
	        }
	        return this.length && pat && pat.length ? this.each(function () {
	            innerHighlight(this, pat.toUpperCase());
	        }) : this;
	    };
	    
	    
	    /* end plugin */
	    var $area = $("tbody");

	    $area.highlight("${query}");
	</script>
    
</body>
</html> 

	