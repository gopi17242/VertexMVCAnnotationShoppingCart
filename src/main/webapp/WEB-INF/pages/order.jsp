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

<div class="page-title">Order Info</div>

<div class="customer-info-container">
<h3>Customer Information:</h3>
<ul>
<li>Name: ${orderInfo.customerName}</li>
<li>Email: ${orderInfo.customerEmail}</li>
<li>Phone: ${orderInfo.customerPhone}</li>
<li>Address: ${orderInfo.customerAddress}</li>
</ul>
<h3>Order Summary:</h3>
<ul>
<li>Total: &#8377;
<span class="total">
<fmt:formatNumber value="${orderInfo.amount}" />  <!-- type="currency" -->
</span></li>
</ul>
</div>

<br/>

<table border="1" style="width:100%">
<tr>
<th>Product Code</th>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
<th>Amount</th>
</tr>
<c:forEach items="${orderInfo.details}" var="orderDetailInfo">
<tr>
<td>${orderDetailInfo.productCode}</td>
<td>${orderDetailInfo.productName}</td>
<td>${orderDetailInfo.quanity}</td>
<td> &#8377;
<fmt:formatNumber value="${orderDetailInfo.price}" />  <!--  type="currency" -->
</td>
<td> &#8377;
<fmt:formatNumber value="${orderDetailInfo.amount}" />  <!--  type="currency" -->
</td> 
</tr>
</c:forEach>
</table>
<c:if test="${paginationResult.totalPages > 1}">
<div class="page-navigator">
<c:forEach items="${paginationResult.navigationPages}" var = "page">
<c:if test="${page != -1 }">
<a href="orderList?page=${page}" class="nav-item">${page}</a>
</c:if>
<c:if test="${page == -1 }">
<span class="nav-item"> ... </span>
</c:if>
</c:forEach>

</div>
</c:if>



<br/><br/><br/><br/><br/><br/><br/><br/>
<jsp:include page="_footer.jsp" />

</body>
</html>