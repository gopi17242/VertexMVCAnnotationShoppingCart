<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Vertex E-Commerce solutions
    </title>

    <meta name="keywords" content="">
	
	<!-- <link rel="stylesheet" type="text/css" href="./resources/css/style.css"> -->
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="./resources/css/font-awesome.css" rel="stylesheet">
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="./resources/css/animate.min.css" rel="stylesheet">
    <link href="./resources/css/owl.carousel.css" rel="stylesheet">
    <link href="./resources/css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="./resources/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="./resources/css/custom.css" rel="stylesheet">

    <script src="./resources/js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">


<!-- <title>Account Info</title> -->

<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css"> --%>

<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
</head>




<body>

<jsp:include page="_header.jsp" />
<jsp:include page="_menu.jsp" />
<br/><br/><br/><br/>
<fmt:setLocale value="en_US" scope="session"/>

<div class="page-title">Product List</div>



<c:forEach items="${paginationProducts.list}" var="prodInfo">
<div class="product-preview-container">
<ul>


<%-- <c:if test="${prodInfo.code == 'S001'}">
<li><img class="product-image"
src="./resources/images/product1.jpg" /></li>
</c:if>

<c:if test="${prodInfo.code == 'S003'}">
<li><img class="product-image"
src="./resources/images/product3.jpg" /></li>
</c:if>

<c:if test="${prodInfo.code == 'S002'}">
<li><img class="product-image"
src="./resources/images/product2.jpg" /></li>
</c:if>
 --%>
 <li>
<img src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}" width="100"/>
</li>
<li>Code: ${prodInfo.code}</li>
<li>Name: ${prodInfo.name}</li>
<li>Price: &#8377;<fmt:formatNumber value="${prodInfo.price}"/></li>
<li><a
href="${pageContext.request.contextPath}/buyProduct?code=${prodInfo.code}">
Buy Now</a></li>
<!-- For Manager edit Product -->
<security:authorize access="hasRole('ROLE_MANAGER')">
<li><a style="color:red;"
href="${pageContext.request.contextPath}/product?code=${prodInfo.code}">
Edit Product</a></li>
</security:authorize>
</ul>
</div>

</c:forEach>
<br/>


<c:if test="${paginationProducts.totalPages > 1}">
<div class="page-navigator">
<c:forEach items="${paginationProducts.navigationPages}" var = "page">
<c:if test="${page != -1 }">
<a href="productList?page=${page}" class="nav-item">${page}</a>
</c:if>
<c:if test="${page == -1 }">
<span class="nav-item"> ... </span>
</c:if>
</c:forEach>

</div>
</c:if>
<br/><br/><br/><br/>
<jsp:include page="_footer.jsp" />

</body>
</html>