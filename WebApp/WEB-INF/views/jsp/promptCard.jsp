<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<%-- <script type="text/javascript"
	src="<c:url value="/resources/js/custom.js" />"></script> --%>


</head>

<body>
	<div id="wrapper">

		<!-- HEADER -->
		<%@include file="../jsp/fragments/header.jsp"%>


<div class="section">
	<span id="lblSupport" class="title"><h3>GET STARTED</h3></span>

	<table style="width: 100%">
		<col align="center" style="width: 50%">
		<tr>
			<td><br /> <br /> <br /> 
			<%@ include file="fragments/loginblock.jsp"%>
			
			</td>


			<td>
				<div class="joinme">
					<b>JOIN PREFERRED TODAY </b> <br />
					<br /> <br /> <span class="asteriksInfo">(United States
						and Canada residents only)</span> <br /> <b>i would like to become a
						preferred member.</b><br /> <br /> joining the preferred program
					only takes a few minutes.<br />
					<br />click below to join.<br /> <br /> <br />
					<br /> <a id="signupPageOneBtn" href="signup">
						<div class="minWidth" align="center">continue</div>
					</a> <br /> <br />

				</div>
			</td>

		</tr>
	</table>
</div>

<%@ include file="../jsp/fragments/footer.jsp"%>

</div>


</body>
</html>
