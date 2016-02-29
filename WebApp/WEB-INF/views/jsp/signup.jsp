<%-- 
<%
	if (session.getAttribute("authenticated") == "authorized") {
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/welcome.jsp");
		rd.forward(request, response);
	}
%>
 --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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


<%-- CONTENTS --%>
<div id="contents">
	<%-- SIGN UP FORM --%>
	<div class="signup signupTwo">
		<h4>SIGN UP FOR THE PREFERRED PROGRAM</h4>
		<div class="requiredInfo">please complete the following
			registration form to become a preferred program member.</div>
		<br />
		<form:form id="registerForm" action="register.do"
			modelAttribute="newMember" method="POST">
			<fieldset>
				<br />

				<table>
					<tr>
						<td>select your home store</td>
						<td><form:select path="storeCountries">
								<option selected="selected" value="0">select country</option>
								<option value="CID001">United States</option>
								<option value="CID002">Canada</option>
							</form:select> &nbsp; <form:select id="storeStates" path="storeStates">
								<option selected="selected" value="0">select state /
									province</option>
								<c:forEach items="${state}" var="stateList">
									<option value="${stateList.key}">${stateList.value}</option>
								</c:forEach>
						</form:select> 
						<form:errors path="storeStates" cssClass="error_storeStates" />
						<br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo"> (your home
								store selection should be the store that you shop the most
								frequently. proper home store selection ensures you receive
								special promotions for the location nearest you. )<br /></td>

					</tr>

					<tr>
						<td></td>
						<td><form:select path="preferredStore" id="locations">
								<option selected="selected" value="0" ToolTip="">select
									your home store</option>

							</form:select>
							<form:errors path="preferredStore" cssClass="error_preferredStore" />
							<br /></td>
					</tr>

					<tr>
						<td colspan="2"><br /> <br /> <span class="asteriksInfo">Username
								(Email) And Password for your preferred account </span><br /></td>
					</tr>

					<!-- username & password -->
					<tr>
						<td>Username :</td>
						<td><form:input id="username" type="text" path="username"
								value="" />&nbsp; 
								<form:errors path="username" cssClass="error_username" /><br /></td>
					</tr>

					<tr>
						<td>Password</td>
						<td><form:input id="registerPassword" type="password"
								path="password" value="" />&nbsp; 
							<form:errors path="password" cssClass="error_password" /> <br /></td>
					</tr>

					<tr>
						<td>Confirm Password</td>
						<td><form:input id="registerConfirmPassword" type="password"
								path="confirmPassword" value="" /> &nbsp;<span
							class="error_confirmPassword"></span> <form:errors
								path="confirmPassword" cssClass="error_confirmPassword" /><br /></td>
					</tr>

					<tr>
						<td><br /> <br /></td>
					</tr>
					<!-- name -->
					<tr>
						<td>First Name :</td>
						<td><form:input id="firstName" type="text" path="firstName"
								value="" /> &nbsp;
								<form:errors path="firstName" cssClass="error_firstName" /> <br /></td>
					</tr>

					<tr>
						<td>Last Name :</td>
						<td><form:input path="lastName" id="lastName" type="text"
								value="" /> &nbsp;<span class="error_secondName"> </span> <form:errors
								path="lastName" cssClass="error_lastName" /> <br /></td>
					</tr>
					<!-- country & state -->
					<tr>
						<td>Country And State:</td>
						<td><form:select path="memberCountry" id="memberCountries">
								<form:option selected="selected" value="0">select country</form:option>
								<form:option value="CID001">United States</form:option>
								<form:option value="CID002">Canada</form:option>
							</form:select>
							 
							 <form:select id="memberStates" path="memberStates">
								<option selected="selected" value="0">select state /
									province</option>
								<c:forEach items="${state}" var="stateList">
									<option value="${stateList.key}">${stateList.value}</option>
								</c:forEach>
							</form:select> <form:errors path="memberCountry" cssClass="error_memberCountry" />
						&nbsp;	<form:errors path="memberStates" cssClass="error_memberStates" />
							<br /></td>
					</tr>
					<!-- Address -->
					<tr>
						<td>Address 1</td>
						<td><form:input type="text" path="addressOne" value="" /> &nbsp;
						<form:errors path="addressOne" cssClass="error_addressOne" /> <br /></td>
					</tr>

					<tr>
						<td>Address 2</td>
						<td><form:input type="text" path="addressTwo" value="" /> &nbsp;
						<form:errors path="addressTwo" cssClass="error_addressTwo" /> <br /></td>
					</tr>

					<tr>
						<td>City</td>
						<td><form:input type="text" path="memberCity" value="" /> 
						<form:errors path="memberCity" cssClass="error_memberCity" /> <br /></td>
					</tr>

					<tr>
						<td>Zip</td>
						<td><form:input id="memberZip" type="text" path="memberZip" />&nbsp;
							<form:errors path="memberZip" cssClass="error_memberZip" />
							&nbsp;<span class="error_memberZip"></span> <br /></td>
					</tr>

					<tr>
						<td><br /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><form:input id="email" type="email" path="email" />
							&nbsp;<span class="error_email"></span> <form:errors path="email"
								cssClass="error_email" /> <br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo">(your email
								address is your user name for login purposes)</span></td>

					</tr>


					<tr>
						<td>Confirm Email</td>
						<td><form:input id="confirmEmail" type="email"
								path="confirmEmail" autocomplete="off" /> &nbsp; <form:errors
								path="confirmEmail" cssClass="error_confirmEmail" /> <br /></td>
					</tr>

					<tr>
						<td>Phone Number</td>
						<td><form:input id="phoneNumber" type="text"
								path="phoneNumber" /> <form:errors path="phoneNumber"
								cssClass="error_phoneNumber" /> <br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo">(we only
								use phone number to look up your account in stores if you don't
								have your preferred card.)</span> <br /> <br /></td>

					</tr>


					<tr>
						<td>Gender</td>
						<td><form:radiobutton path="gender" id="genderMale"
								value="male" /><label for="genderMale">male</label> <form:radiobutton
								id="genderFemale" path="gender" value="female" /><label
							for="genderFemale">Female</label> <form:errors path="phoneNumber"
								cssClass="error_phoneNumber" /> <br /></td>
					</tr>


					<tr>
						<td>Marital Status</td>
						<td><form:radiobutton path="maritialStatus" value="single" /><label>Single</label>
							<form:radiobutton path="maritialStatus" value="married" /><label>Married</label><br />
						</td>
					</tr>


					<tr>
						<td>Birth date</td>
						<td><form:select path="birthMonth">
								<jsp:include page="/WEB-INF/views/jsp/fragments/monthList.jsp" />
							</form:select> &nbsp;&nbsp; <form:select path="birthDay">
								<jsp:include page="/WEB-INF/views/jsp/fragments/daysList.jsp" />
							</form:select></td>
					</tr>

					<tr>
						<td>HouseHold income</td>
						<td><form:radiobutton id="income1" value="income2540"
								path="householdIncome" /> <label for="income1">$25,000-$40,000</label>
							<form:radiobutton id="income2" value="income4055"
								path="householdIncome" /> <label for="income2">$40,001-$55,000</label>
							<form:radiobutton id="income3" value="income5570"
								path="householdIncome" /> <label for="income3">$55,001-$70,000</label>
							<form:radiobutton id="income4" value="income7085"
								path="householdIncome" /> <label for="income4">$70,001-$85,000</label>
							<br /> <form:radiobutton id="income5" value="income85100"
								path="householdIncome" /> <label for="income5">$85,001-$100,000</label>
							<form:radiobutton id="income6" value="income101"
								path="householdIncome" /> <label for="income6">$100,001+</label>
							<br /> <br /></td>
					</tr>



					<tr>
						<td colspan="2">email preferences : <form:checkbox
								id="chkCKdotcom" checked="checked" path="emailPreferences"
								value="CKdotcom" /> <label for="chkCKdotcom">calvinklein.com</label>
							<form:checkbox id="chkCKStore" checked="checked"
								path="emailPreferences" value="CKStore" /> <label
							for="chkCKStore">Calvin Klein stores</label> <form:checkbox
								id="chkRewards" checked="checked" path="emailPreferences"
								value="Rewards" /> <label for="chkRewards">Earned
								rewards</label> <br /> <span class="info"> by joining our
								preferred program, and providing personal data, you are
								certifying you are at least 18 years of age. do not provide any
								information if you're under the age of 18. </span> <br /> <br /></td>
					</tr>


					<tr>
						<td colspan="2"><input id="submitRegForm" type="submit"
							value="submit" path="submit" /> <!-- <a id="submitForm"><div class="registerSubmit" align="center">update profile</div></a> -->
							<br /></td>
				</table>


			</fieldset>

		</form:form>


	</div>

</div>






<%-- FOOTER --%>
<%@include file="/WEB-INF/views/jsp/fragments/footer.jsp"%>

</div>


</body>
</html>
