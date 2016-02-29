<div class="logindetails">
		<h4>ACCOUNT LOGIN</h4>
		<div class="requiredInfo">to update your account information
			online or view your points balance, please log in below.</div>
		<br />
		<form:form id="loginForm" modelAttribute="user" action="login.do"
			method="POST">
			<fieldset>
				<table>
					<tr>
						<td colspan="2"><span class="asteriksInfo"> indicates
								mandatory field</span> <br /> <br /></td>
					</tr>
					<tr>
						<td>UserName / Email:</td>
						<td><form:input type="text" path="username" value="" /></td>
						<td><form:errors path="username" cssClass="error_username" /><br />
							<br /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><form:input type="password" path="password" value="" /></td>
						<td><form:errors path="password" cssClass="error_password" /><br />
							<br /></td>
					</tr>
					<tr>
						<td><span class="error_response"> ${error} </span> <br /></td>
						<td><input type="submit" value="login" class="submitBtn">
							<br /></td>
					</tr>
					<tr>
						<td><br /> <br /></td>
					</tr>
					<tr>
						<td><span class="asteriksInfo"> forgot user name or
								password? click here </span> <br /></td>

					</tr>
				</table>


				<br /> <br /> <br />
			</fieldset>

		</form:form>


	</div>