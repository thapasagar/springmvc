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
					<td><select name="locations" id="locations">
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
					<td><input id="username" type="text" name="username" value=""
						required>&nbsp;<span class="error_username"></span><br />
					</td>
				</tr>

				<tr>
					<td>Password</td>
					<td><input id="registerPassword" type="password"
						name="password" value="" required><br /></td>
				</tr>

				<tr>
					<td>Confirm Password</td>
					<td><input id="registerConfirmPassword" type="password"
						name="confirmPassword" value="" required><br /></td>
				</tr>

				<tr>
					<td><br />
					<br /></td>
				</tr>
				<!-- name -->
				<tr>
					<td>First Name :</td>
					<td><input id="firstName" type="text" name="firstName"
						value="" required><br /></td>
				</tr>

				<tr>
					<td>Last Name :</td>
					<td><input id="lastName" type="text" name="lastName" value=""
						required><br /></td>
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
					<td><input type="email" name="email" required><br />
					</td>
				</tr>

				<tr>
					<td colspan="2"><span class="asteriksInfo">(your email
							address is your user name for login purposes)</span></td>

				</tr>


				<tr>
					<td>Confirm Email</td>
					<td><input type="email" name="confirmEmail" required><br />
					</td>
				</tr>

				<tr>
					<td>Phone Number</td>
					<td><input type="text" name="phoneNumber"><br /></td>
				</tr>

				<tr>
					<td colspan="2"><span class="asteriksInfo">(we only use
							phone number to look up your account in stores if you don't have
							your preferred card.)</span> <br /> <br /></td>

				</tr>


				<tr>
					<td>Gender</td>
					<td><input type="radio" name="gender" id="genderMale"
						value="male"><label for="genderMale">male</label> <input
						type="radio" name="gender" value="female"><label
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
					<td><select id="birthMonth" name="birthMonth">
							<jsp:include page="../fragments/monthList.jsp" /></select> &nbsp;&nbsp; <select
						id="birthDay" name="birthDay">
							<jsp:include page="../fragments/daysList.jsp" />
					</select></td>
				</tr>

				<tr>
					<td>HouseHold income</td>
					<td><input id="income1" type="radio" value="income2540"
						name="householdIncome"> <label for="income1">$25,000-$40,000</label>
						<input id="income2" type="radio" value="income4055" name="HI">
						<label for="income2">$40,001-$55,000</label> <input id="income3"
						type="radio" value="income5570" name="householdIncome"> <label
						for="income3">$55,001-$70,000</label> <input id="income4"
						type="radio" value="income7085" name="householdIncome"> <label
						for="income4">$70,001-$85,000</label> <br /> <input id="income5"
						type="radio" value="income85100" name="householdIncome"> <label
						for="income5">$85,001-$100,000</label> <input id="income6"
						type="radio" value="income101" name="householdIncome"> <label
						for="income6">$100,001+</label> <br /> <br /></td>
				</tr>



				<tr>
					<td colspan="2">email preferences : <input id="chkCKdotcom"
						type="checkbox" checked="checked" value="chkCKdotcom"
						name="emailPreferences"> <label for="chkCKdotcom">calvinklein.com</label>
						<input id="chkCKStore" type="checkbox" checked="checked"
						value="chkCKStore" name="emailPreferences"> <label
						for="chkCKStore">Calvin Klein stores</label> <input
						id="chkRewards" type="checkbox" checked="checked"
						value="chkRewards" name="emailPreferences"> <label
						for="chkRewards">Earned rewards</label> <br /> <span class="info">
							by joining our preferred program, and providing personal data,
							you are certifying you are at least 18 years of age. do not
							provide any information if you're under the age of 18. </span> <br /> <br /></td>
				</tr>


				<tr>
					<td colspan="2"><input type="submit" value="update profile"><br /></td>
			</table>


		</fieldset>

	</form:form>


</div>

