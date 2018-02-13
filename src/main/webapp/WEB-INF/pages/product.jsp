<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<div class="page-title">Product</div>

<c:if test="${not empty errorMessage }">
<div class="error-message">
${errorMessage}
</div>
</c:if>

<form:form modelAttribute="productForm" method="POST" enctype="multipart/form-data">
 <table style="text-align:left;">
<tr>
<td>Code *</td>
<td style="color:red;">
<c:if test="${not empty productForm.code}">
<form:hidden path="code"/>
${productForm.code}
</c:if>
<c:if test="${empty productForm.code}">
<form:input path="code" />
<form:hidden path="newProduct" />
</c:if>
</td>
<td><form:errors path="code" class="error-message" /></td>
</tr>

<tr>
<td>Name *</td>
<td><form:input path="name" /></td>
<td><form:errors path="name" class="error-message" /></td>
</tr>

<tr>
<td>Price *</td>
<td><form:input path="price" /></td>
<td><form:errors path="price" class="error-message" /></td>
</tr>
<tr>
<td>Image</td>
<td>
<%-- <img src="${pageContext.request.contextPath}/productImage?code=${productForm.code}" width="100"/></td> --%>
<img src="${pageContext.request.contextPath}/productImage?code=${productForm.code}" width="100"/></td>
<td> </td>
</tr>
<tr>
<td>Upload Image</td>
<td><form:input type="file" path="fileData"/></td>
<td> </td>
</tr>


<tr>
<td>&nbsp;</td>
<td><input type="submit" value="Submit" /> <input type="reset"
value="Reset" /></td>
</tr>
</table>
</form:form>
 
 
 
 <br/><br/><br/><br/><br/><br/><br/><br/>
<jsp:include page="_footer.jsp" />
 
</body>
</html>