<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">


<style>
/*
 * Specific styles of signin component
 */
/*
 * General styles
 */
body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-image: linear-gradient(rgb(104, 145, 162), rgb(71, 80, 73));
}

.card-container.card {
	max-width: 350px;
	padding: 40px 40px;
}

.btn {
	font-weight: 700;
	height: 36px;
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	cursor: default;
}

/*
 * Card component
 */
.card {
	background-color: #d5e0df;
	/* just in case there no content*/
	padding: 20px 25px 30px;
	margin: 0 auto 25px;
	margin-top: 50px;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
	width: 96px;
	height: 96px;
	margin: 0 auto 10px;
	display: block;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 0px;
}

/*
 * Form styles
 */
.profile-name-card {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	margin: 10px 0 0;
	min-height: 1em;
}

.reauth-email {
	display: block;
	color: #404040;
	line-height: 2;
	margin-bottom: 10px;
	font-size: 14px;
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin #inputEmail, .form-signin #inputPassword {
	direction: ltr;
	height: 44px;
	font-size: 16px;
}

.form-signin input[type=email], .form-signin input[type=password],
	.form-signin input[type=text], .form-signin button {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	z-index: 1;
	position: relative;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin .form-control:focus {
	border-color: rgb(104, 145, 162);
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgb(104, 145, 162);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgb(104, 145, 162);
}

.btn.btn-signin {
	/*background-color: #4d90fe; */
	background-color: rgb(104, 145, 162);
	/* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
	padding: 0px;
	font-weight: 700;
	font-size: 14px;
	height: 36px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: none;
	-o-transition: all 0.218s;
	-moz-transition: all 0.218s;
	-webkit-transition: all 0.218s;
	transition: all 0.218s;
}

.btn.btn-signin:hover, .btn.btn-signin:active, .btn.btn-signin:focus {
	background-color: rgb(79, 95, 83);
}

.forgot-password {
	color: rgb(104, 145, 162);
}
.forgot-password


:hover
,
.forgot-password


:active
,
.forgot-password


:focus
</style>



</head>
<body  class="ng-cloak">



	<%-- <jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />
 --%>


	<!-- <div class="page-title">Login (For Employee, Manager)</div> -->
	<div class="container">
		<div class="card card-container">
			<img id="profile-img" class="profile-img-card"
				src="./resources/images/vertex_logo.png" />
				
			<p id="profile-name" class="profile-name-card"></p>
			<!-- <h3>Enter username and password</h3> -->
			<br>
			<!-- /login?error=true -->
			<c:if test="${param.error == 'true'}">
				<div style="color: red; margin: 10px 0px;">

					Login Failed!!!<br /> Reason :
					${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

				</div>
			</c:if>

			<form class="form-signin" method="POST" action="j_spring_security_check">
			<input type="text" name="userName"  id="inputPassword" placeholder="Username"
							class="form-control" />
				<input type="password" id="inputPassword" name="password" placeholder="Password"
							class="form-control" /><!-- </td> -->
				<!-- 	</tr>
					<!-- <tr> -->
						<!-- <td>&nbsp;</td>
						<td>  -->
							<div id="remember" class="checkbox">
								<label> <input type="checkbox" value="remember-me">
									Remember me
								</label>
							</div>
						<!-- </td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td> --><button type="submit" 
							class="btn btn-lg btn-primary btn-block btn-signin" >Sign in</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<!--  <input type="reset"
value="Reset" class="btn btn-lg btn-primary btn-block btn-signin"/> --><!-- </td>
					</tr>
				</table> -->
			</form>
			<a href="#" class="forgot-password"> Forgot the password? </a> <span
				class="error-message">${error }</span>

		</div>
		<!-- /card-container -->

	</div>
	<!-- /container -->
<%-- 	<jsp:include page="_footer.jsp" /> --%>

</body>
</html>