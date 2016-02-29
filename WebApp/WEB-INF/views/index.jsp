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
		<%@include file="./jsp/fragments/header.jsp"%>


		<div class="changingContent">
			<div class="section">
				<!-- Special OFFER -->
				<div id="specialOffer">
					<table width="100%">
						<tr>
							<td class="spltitle"><span id="lblTitle1" class="spltitle">
									SPECIAL OFFER</span></td>
							<td align="right" class="title"></td>
						</tr>

						<tr>
							<td colspan="2"><span id="lblCont1" class="splcontent">receive
									20% off your next in-store purchase when you register for the
									Calvin Klein Preferred Program.</span> <br /> <br /></td>
						</tr>
						<tr>
							<td class="title"><span id="lblTitle2" class="title">PREFERRED
									PROGRAM</span></td>
							<td align="right" class="title"></td>
						</tr>

						<tr>
							<td class="contents" colspan="2"><br /> <span id="lblCont2"
								class="contents">the Calvin Klein Preferred Program is
									designed to reward our best customers for their frequent
									purchases.</span> <br /> <span id="lblCont3" class="contents">as
									a Calvin Klein preferred customer, you accumulate points with
									each purchase. <br>
							</span> <br /> <span id="lblCont4" class="contents">for every
									$200 spent (taxes not included) you will receive at $20 Calvin
									Klein reward via email.<br> the more you spend, the more
									you earn.
							</span> <br /> <span id="lblCont5" class="contents">preferred
									rewards may be used towards your subsequent purchases at
									Calvinklein.com or certain Calvin Klein stores. <br> <br>additional
									benefits: <br>1. exclusive sales email offers <br>2.
									birthday gift <br> 3. plus, complete your profile and earn
									100 points towards your next preferred reward (for example,
									spend $100 at your local Calvin Klein company store today,
									complete your profile below and you’ll receive your $20
									reward! <br>
							</span> <br /> <span id="lblCont6" class="contents">certain
									restrictions apply, see full <a href="<c:url value="terms" />" id="lblCont6link"
									class="bullets" Font-Bold="true" Font-Underline="true">terms
										and conditions</a>.
							</span></td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td></td>
						</tr>
					</table>

				</div>

				<!-- Existing Login  -->
				<div id="existingLogin">
					<span id="Label2" class="subtitle">existing members</span>
					&nbsp;&nbsp; <a id="lbtnlogin" href="<c:url value="/signin" />">log in</a><br /> <br />
					<span id="lblCont7" class="extLgnContents">if you are an
						existing member and have already registered online for the Calvin
						Klein Preferred Program, you can login to view your points balance
						or update member enrollment information online. </span> <br /> <span
						id="lblCont8" class="extLgnContents">login to </span> <b><span
						id="lblCont9" class="extLgnContents">add the purchase</span> </b> <span
						id="lblCont10" class="extLgnContents">to your account. </span>
				</div>


				<!-- getStarted -->
				<div id="getStarted">
					<table class="border">
						<tr>
							<td>
								<table width="100%">
									<tr>
										<td><span id="Label1" class="subtitle">get started</span>
											<br /> <br /></td>
									</tr>
									<tr>
										<td><span id="lblContents4" class="contents">did
												you know that by completing your profile, you’ll also earn
												points towards your next reward? registering or completing
												your profile takes just a few minutes. please click below to
												proceed:</span></td>
									</tr>
									<tr align="center">
										<td><a id="getStartedBtn" href="<c:url value="/signinSignup" />"><div
													class="minWidth">Get Started</div></a></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>

			</div>
		</div>


		<!-- This is footer  -->

		<%@include file="./jsp/fragments/footer.jsp"%>


	</div>


</body>
</html>