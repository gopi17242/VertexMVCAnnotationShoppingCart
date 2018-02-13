<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

<div class="page-title">My Cart</div>

<c:if test="${empty cartForm or empty cartForm.cartLines}">
<h2>There is no items in Cart</h2>
<a href="${pageContext.request.contextPath}/productList">Show
Product List</a>
</c:if>

<c:if test="${not empty cartForm and not empty cartForm.cartLines }">
<form:form method="POST" modelAttribute="cartForm"
action="${pageContext.request.contextPath}/shoppingCart">

<c:forEach items="${cartForm.cartLines}" var="cartLineInfo"
varStatus="varStatus">
<div class="product-preview-container">
<ul>
 <li><img class="product-image"
src="${pageContext.request.contextPath}/productImage?code=${cartLineInfo.productInfo.code}" />
</li> 

<!-- <li><img class="product-image"
src="./resources/images/product1.jpg" />

</li> -->
<li>Code: ${cartLineInfo.productInfo.code} <form:hidden
path="cartLines[${varStatus.index}].productInfo.code" />

</li>
<li>Name: ${cartLineInfo.productInfo.name}</li>
<li>Price: &#8377;<span class="price">

<fmt:formatNumber value="${cartLineInfo.productInfo.price}" /> <!-- type="currency" -->

</span></li>
<li>Quantity: <form:input
path="cartLines[${varStatus.index}].quantity" /></li>
<li>Subtotal: &#8377;
<span class="subtotal">

<fmt:formatNumber value="${cartLineInfo.amount}" /> <!--  type="currency" -->

</span>
</li>
<li><a
href="${pageContext.request.contextPath}/shoppingCartRemoveProduct?code=${cartLineInfo.productInfo.code}">
Delete </a></li>
</ul>
</div>
</c:forEach>
<div style="clear: both"></div>
<input class="button-update-sc" type="submit" value="Update Quantity" />
<a class="navi-item"
href="${pageContext.request.contextPath}/shoppingCartCustomer">Enter
Customer Info</a>
<a class="navi-item"
href="${pageContext.request.contextPath}/productList">Continue
Buy</a>
</form:form>


</c:if>

<br/><br/><br/><br/><br/><br/>
<jsp:include page="_footer.jsp" />

</body>
</html>