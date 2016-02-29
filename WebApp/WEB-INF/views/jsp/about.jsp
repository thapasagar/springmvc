<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calvin Klein - ${title}</title>

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

		<!-- HEADER -->
		<%@include file="../jsp/fragments/header.jsp"%>
<div class="changingContent">
	<div class="section">HELLO FROM OTHER SIDE</div>
</div>


<!-- FOOTER -->
<%@include file="../jsp/fragments/footer.jsp"%>

</div>


</body>
</html>