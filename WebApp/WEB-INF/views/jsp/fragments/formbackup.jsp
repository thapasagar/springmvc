<%-- 
<%
	if (session.getAttribute("authenticated") == "authorized") {
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/welcome.jsp");
		rd.forward(request, response);
	}
%>
 --%>
<%-- HEADER --%>
<jsp:include page="/WEB-INF/views/jsp/fragments/header.jsp" /> 

<%-- CONTENTS --%>
<div id="contents">
	<%-- SIGN UP FORM --%>
	<div class="signup signupTwo">
		<h4>SIGN UP FOR THE PREFERRED PROGRAM</h4>
		<div class="requiredInfo">please complete the following
			registration form to become a preferred program member.</div>
		<br />
		<form id="registerForm" modelAttribute="registerForm" action="/newUser/register.do" method="POST">
			<fieldset>
				<br />

				<table>
					<tr>
						<td>select your home store</td>
						<td><select id="storeCountries" name="storeCountries">
								<option selected="selected" value="0">select country</option>
								<option value="CID001">United States</option>
								<option value="CID002">Canada</option>

						</select> &nbsp; <select id="storeStates" name="storeStates">
								<option selected="selected" value="0">select state /
									province</option>
						</select> <br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo"> (your home
								store selection should be the store that you shop the most
								frequently. proper home store selection ensures you receive
								special promotions for the location nearest you. )<br /></td>

					</tr>

					<tr>
						<td></td>
						<td><select name="preferredStore" id="locations">
								<option selected="selected" value="0" ToolTip="">select
									your home store</option>

						</select><br /></td>
					</tr>

					<tr>
						<td colspan="2"><br /> <br /> <span class="asteriksInfo">Username
								(Email) And Password for your preferred account </span><br /></td>
					</tr>

					<!-- username & password -->
					<tr>
						<td>Username :</td>
						<td><input id="username" type="text" name="username" value="">&nbsp;<span
							class="error_username"></span><br /></td>
					</tr>

					<tr>
						<td>Password</td>
						<td><input id="registerPassword" type="password"
							name="password" value="">&nbsp;<span
							class="error_password"></span><br /></td>
					</tr>

					<tr>
						<td>Confirm Password</td>
						<td><input id="registerConfirmPassword" type="password"
							name="confirmPassword" value=""> &nbsp;<span
							class="error_confirmPassword"></span><br /></td>
					</tr>

					<tr>
						<td><br />
						<br /></td>
					</tr>
					<!-- name -->
					<tr>
						<td>First Name :</td>
						<td><input id="firstName" type="text" name="firstName"
							value=""> &nbsp;<span class="error_firstName"></span><br /></td>
					</tr>

					<tr>
						<td>Last Name :</td>
						<td><input id="lastName" type="text" name="lastName"
							value=""> &nbsp;<span class="error_secondName"></span><br /></td>
					</tr>
					<!-- country & state -->
					<tr>
						<td>Country And State:</td>
						<td><select id="memberCountries" name="memberCountry">
								<option selected="selected" value="0">select country</option>
								<option value="CID001">United States</option>
								<option value="CID002">Canada</option>
						</select> <select id="memberStates" name="memberStates">
								<option selected="selected" value="0">select state /
									province</option>
						</select><br /></td>
					</tr>
					<!-- Address -->
					<tr>
						<td>Address 1</td>
						<td><input type="text" name="addressOne" value=""><br /></td>
					</tr>

					<tr>
						<td>Address 2</td>
						<td><input type="text" name="addressTwo" value=""><br /></td>
					</tr>

					<tr>
						<td>City</td>
						<td><input type="text" name="memberCity" value=""><br /></td>
					</tr>

					<tr>
						<td>Zip</td>
						<td><input type="text" name="memberZip"><br /></td>
					</tr>

					<tr>
						<td><br /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input id="email" type="email" name="email" /> &nbsp;<span
							class="error_email"></span><br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo">(your email
								address is your user name for login purposes)</span></td>

					</tr>


					<tr>
						<td>Confirm Email</td>
						<td><input id="confirmEmail" type="email" name="confirmEmail">
							&nbsp;<span class="error_confirmEmail"></span><br /></td>
					</tr>

					<tr>
						<td>Phone Number</td>
						<td><input id="phoneNumber" type="text" name="phoneNumber">
							&nbsp;<span class="error_phoneNumber"></span><br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo">(we only
								use phone number to look up your account in stores if you don't
								have your preferred card.)</span> <br /> <br /></td>

					</tr>


					<tr>
						<td>Gender</td>
						<td><input type="radio" name="gender" id="genderMale"
							value="male"><label for="genderMale">male</label> <input
							id="genderFemale" type="radio" name="gender" value="female"><label
							for="genderFemale">Female</label> <br /></td>
					</tr>


					<tr>
						<td>Marital Status</td>
						<td><input type="radio" name="maritialStatus" value="single"><label>Single</label>
							<input type="radio" name="maritialStatus" value="married"><label>Married</label><br />
						</td>
					</tr>


					<tr>
						<td>Birth date</td>
						<td>
						<select>
						<jsp:include page="/WEB-INF/views/jsp/fragments/monthList.jsp" />
						</select>	
							&nbsp;&nbsp; 
						<select>
						<jsp:include page="/WEB-INF/views/jsp/fragments/daysList.jsp" /></td>
					</tr>

					<tr>
						<td>HouseHold income</td>
						<td><input id="income1" type="radio" value="income2540"
							name="householdIncome"> <label for="income1">$25,000-$40,000</label>
							<input id="income2" type="radio" value="income4055"
							name="householdIncome"> <label for="income2">$40,001-$55,000</label>
							<input id="income3" type="radio" value="income5570"
							name="householdIncome"> <label for="income3">$55,001-$70,000</label>
							<input id="income4" type="radio" value="income7085"
							name="householdIncome"> <label for="income4">$70,001-$85,000</label>
							<br /> <input id="income5" type="radio" value="income85100"
							name="householdIncome"> <label for="income5">$85,001-$100,000</label>
							<input id="income6" type="radio" value="income101"
							name="householdIncome"> <label for="income6">$100,001+</label>
							<br /> <br /></td>
					</tr>



					<tr>
						<td colspan="2">email preferences : <input id="chkCKdotcom"
							type="checkbox" checked="checked" name="emailPreferences"
							value="CKdotcom"> <label for="chkCKdotcom">calvinklein.com</label>
							<input id="chkCKStore" type="checkbox" checked="checked"
							name="emailPreferences" value="CKStore"> <label
							for="chkCKStore">Calvin Klein stores</label> <input
							id="chkRewards" type="checkbox" checked="checked"
							name="emailPreferences" value="Rewards"> <label
							for="chkRewards">Earned rewards</label> <br /> <span
							class="info"> by joining our preferred program, and
								providing personal data, you are certifying you are at least 18
								years of age. do not provide any information if you're under the
								age of 18. </span> <br /> <br /></td>
					</tr>

						
					<tr>
						<td colspan="2">
							<input type="submit" value="submit" />
						<!-- <a id="submitForm"><div class="registerSubmit" align="center">update profile</div></a> --><br /></td>
				</table>


			</fieldset>

		</form>


	</div>

</div>

<%-- FOOTER --%>
<%@include file="/WEB-INF/views/jsp/fragments/footer.jsp"%>

















<%-- <%
	if (session.getAttribute("authenticated") == "authorized") {
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/welcome.jsp");
		rd.forward(request, response);
	}
%>
 --%>
<%-- CONTENTS --%>
<div id="contents">
	<%-- SIGN UP FORM --%>
	<div class="signup signupTwo">
		<h4>SIGN UP FOR THE PREFERRED PROGRAM</h4>
		<div class="requiredInfo">please complete the following
			registration form to become a preferred program member.</div>
		<br />
		<form:form id="registerForm" action="register.do" method="POST">
		<fieldset>
				<br />

				<table>
					<tr>
						<td>select your home store</td>
						<td><form:select path="storeCountries"  >
								<form:option value="0" label="Select" />
								<form:option value="CID001" label="United States" />
								<form:option value="CID002" label="Canada" />

						</form:select> 
						&nbsp; <form:select id="storeStates" path="storeStates">
								<form:option selected="selected" value="0">select state /
									province</form:option>
						</form:select> <br /></td>
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
								<form:option selected="selected" value="0" ToolTip="">select
									your home store</form:option>

						</form:select><br /></td>
					</tr>

					<tr>
						<td colspan="2"><br /> <br /> <span class="asteriksInfo">Username
								(Email) And Password for your preferred account </span><br /></td>
					</tr>

					<!-- username & password -->
					<tr>
						<td>Username :</td>
						<td><form:input id="username" type="text" path="username" value="" />&nbsp;<span
							class="error_username"></span><br /></td>
					</tr>

					<tr>
						<td>Password</td>
						<td><form:input id="registerPassword" type="password"
							path="password" value="" />&nbsp;<span
							class="error_password"></span><br /></td>
					</tr>

					<tr>
						<td>Confirm Password</td>
						<td><form:input id="registerConfirmPassword" type="password"
							path="confirmPassword" value="" /> &nbsp;<span
							class="error_confirmPassword"></span><br /></td>
					</tr>

					<tr>
						<td><br />
						<br /></td>
					</tr>
					<!-- name -->
					<tr>
						<td>First Name :</td>
						<td><form:input id="firstName" type="text" path="firstName"
							value="" /> &nbsp;<span class="error_firstName"></span><br /></td>
					</tr>

					<tr>
						<td>Last Name :</td>
						<td><form:input path="lastName" id="lastName" type="text" 
							value="" /> &nbsp;<span class="error_secondName" ><br /></td>
					</tr>
					<!-- country & state -->
					<tr>
						<td>Country And State:</td>
						<td><form:select path="memberCountry" id="memberCountries">
								<form:option selected="selected" value="0">select country</form:option>
								<form:option value="CID001">United States</form:option>
								<form:option value="CID002">Canada</form:option>
						</form:select> <form:select id="memberStates" path="memberStates">
								<form:option selected="selected" value="0">select state /
									province</form:option>
						</form:select><br /></td>
					</tr>
					<!-- Address -->
					<tr>
						<td>Address 1</td>
						<td><form:input type="text" path="addressOne" value="" /><br /></td>
					</tr>

					<tr>
						<td>Address 2</td>
						<td><form:input type="text" path="addressTwo" value="" /><br /></td>
					</tr>

					<tr>
						<td>City</td>
						<td><form:input type="text" path="memberCity" value="" /><br /></td>
					</tr>

					<tr>
						<td>Zip</td>
						<td><form:input type="text" path="memberZip" /><br /></td>
					</tr>

					<tr>
						<td><br /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><form:input id="email" type="email" path="email" /> &nbsp;<span
							class="error_email"></span><br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo">(your email
								address is your user name for login purposes)</span></td>

					</tr>


					<tr>
						<td>Confirm Email</td>
						<td><form:input id="confirmEmail" type="email" path="confirmEmail" />
							&nbsp;<span class="error_confirmEmail"></span><br /></td>
					</tr>

					<tr>
						<td>Phone Number</td>
						<td><form:input id="phoneNumber" type="text" path="phoneNumber" />
							&nbsp;<span class="error_phoneNumber" ><br /></td>
					</tr>

					<tr>
						<td colspan="2"><span class="asteriksInfo">(we only
								use phone number to look up your account in stores if you don't
								have your preferred card.)</span> <br /> <br /></td>

					</tr>


					<tr>
						<td>Gender</td>
						<td>
						<form:input type="radio" path="gender" id="genderMale" value="male" /><label for="genderMale">male</label> 
							<form:input id="genderFemale" type="radio" path="gender" value="female" /><label
							for="genderFemale">Female</label> <br /></td>
					</tr>


					<tr>
						<td>Marital Status</td>
						<td><form:input type="radio" path="maritialStatus" value="single" /><label>Single</label>
							<form:input type="radio" path="maritialStatus" value="married" /><label>Married</label><br />
						</td>
					</tr>


					<tr>
						<td>Birth date</td>
						<td>
						<form:select path="birthMonth">
						<jsp:include page="/WEB-INF/views/jsp/fragments/monthList.jsp" />
						</form:select>	
							&nbsp;&nbsp; 
						<form:select path="birthDay">
						<jsp:include page="/WEB-INF/views/jsp/fragments/daysList.jsp" />
						</form:select>
						</td>
					</tr>

					<tr>
						<td>HouseHold income</td>
						<td><form:input id="income1" type="radio" value="income2540"
							path="householdIncome" /> <label for="income1">$25,000-$40,000</label>
							<form:input id="income2" type="radio" value="income4055"
							path="householdIncome" /> <label for="income2">$40,001-$55,000</label>
							<form:input id="income3" type="radio" value="income5570"
							path="householdIncome" /> <label for="income3">$55,001-$70,000</label>
							<form:input id="income4" type="radio" value="income7085"
							path="householdIncome" /> <label for="income4">$70,001-$85,000</label>
							<br /> <input id="income5" type="radio" value="income85100"
							path="householdIncome" /> <label for="income5" >$85,001-$100,000</label>
							<form:input id="income6" type="radio" value="income101"
							path="householdIncome" /> <label for="income6">$100,001+</label>
							<br /> <br /></td>
					</tr>



					<tr>
						<td colspan="2">email preferences : 
						<form:input id="chkCKdotcom" type="checkbox" checked="checked" path="emailPreferences"
							value="CKdotcom" /> <label for="chkCKdotcom">calvinklein.com</label>
						<form:input id="chkCKStore" type="checkbox" checked="checked"
							path="emailPreferences" value="CKStore" /> <label
							for="chkCKStore">Calvin Klein stores</label> 
						<form:input id="chkRewards" type="checkbox" checked="checked"
							path="emailPreferences" value="Rewards" /> <label
							for="chkRewards">Earned rewards</label> <br /> <span
							class="info"> by joining our preferred program, and
								providing personal data, you are certifying you are at least 18
								years of age. do not provide any information if you're under the
								age of 18. </span> <br /> <br /></td>
					</tr>

						
					<tr>
						<td colspan="2">
							<form:input type="submit" value="submit" path="submit"/>
						<!-- <a id="submitForm"><div class="registerSubmit" align="center">update profile</div></a> --><br /></td>
				</table>


			</fieldset>

		</form:form>


	</div>

</div>















<form id="registerForm" action="register.do" method="POST" modelAttribute="newMember">
	<fieldset>
		<tr> 
			<td>select your home store</td>
			<td>
				<form:select path="storeCountry" items="${optionCountry}" cssClass="registrationForm"/>
				<form:select path="storeState" items="${optionCountry}" id="storeState" cssClass="registrationForm"/>
			</td>
		</tr>
	</fieldset>
	
</form>