<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<br/><br/><br/><br/><br/>
<fmt:setLocale value="en_US" scope="session"/>

<div class="page-title">Confirmation</div>



<div class="customer-info-container">
<h3>Customer Information:</h3>
<ul>
<li>Name: ${myCart.customerInfo.name}</li>
<li>Email: ${myCart.customerInfo.email}</li>
<li>Phone: ${myCart.customerInfo.phone}</li>
<li>Address: ${myCart.customerInfo.address}</li>
</ul>
<h3>Cart Summary:</h3>
<ul>
<li>Quantity: ${myCart.quantityTotal}</li>
<li>Total: &#8377;
<span class="total">
<fmt:formatNumber value="${myCart.amountTotal}" /><!--  type="currency" -->
</span></li>
</ul>
</div>

<form method="POST"
action="${pageContext.request.contextPath}/shoppingCartConfirmation">

<!-- Edit Cart -->
<a class="navi-item"
href="${pageContext.request.contextPath}/shoppingCart">Edit Cart</a>

<!-- Edit Customer Info -->
<a class="navi-item"
href="${pageContext.request.contextPath}/shoppingCartCustomer">Edit
Customer Info</a>

<!-- Send/Save -->
<input type="submit" value="Send" class="button-send-sc" />
</form>

<div class="container">

<c:forEach items="${myCart.cartLines}" var="cartLineInfo">
<div class="product-preview-container">
<ul>
<li><img class="product-image"
src="./resources/images/product1.jpg" />
<%-- <li><img class="product-image"
src="${pageContext.request.contextPath}/productImage?code=${cartLineInfo.productInfo.code}" /></li> --%>
<li>Code: ${cartLineInfo.productInfo.code} <input
type="hidden" name="code" value="${cartLineInfo.productInfo.code}" />
</li>
<li>Name: ${cartLineInfo.productInfo.name}</li>
<li>Price: <span class="price">
<fmt:formatNumber value="${cartLineInfo.productInfo.price}" />  <!-- type="currency" -->
</span>
</li>
<li>Quantity: ${cartLineInfo.quantity}</li>
<li>Subtotal: &#8377;
<span class="subtotal">
<fmt:formatNumber value="${cartLineInfo.amount}"/>   <!-- type="currency" -->
</span>
</li>
</ul>
</div>
</c:forEach>

</div>
<br/><br/><br/><br/><br/><br/><br/><br/>
<jsp:include page="_footer.jsp" />

</body>
</html>