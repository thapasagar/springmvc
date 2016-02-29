
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calvin Klein - Preferred Program</title>

<!-- <link href="./styles/global.css" rel="stylesheet" type="text/css"
	media="all" /> -->
	
<link href="<c:url value="/resources/css/custom.css" />"
	rel="stylesheet" type="text/css" media="all" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/custom.js" />"></script>


</head>
<body>
	<div id="wrapper">
		<div class="rel" id="content">
			<header>
				<div id="topHeader">
					<div class="leftHeader">
							<img src="<c:url value="/resources/imgs/logo.gif" />"
						alt="Logo" />
					</div>

					<div class="rightHeader">
						<a id="signout" href="logout">SignOut</a><%--  | <a href="${pageContext.request.contextPath}/jsp/signup.jsp">Home</a> --%>
					</div>
				</div>
				<div id="subheader">
						<a href="<c:url value="/" />">Home</a>
				&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; <a
					href="about">About</a>
				</div>
<div class="line"></div>
			</header>
			
			<div id="contents">

			<div id="welcomeContent">
				<img src="<c:url value="/resources/imgs/welcome.jpg" />" alt="welcome">
			</div>

		</div>
	</div>

	<%@include file="../jsp/fragments/footer.jsp"%>
	
		</div>


</body>
</html>
