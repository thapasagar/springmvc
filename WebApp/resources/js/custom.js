$(document).ready(function() {
	
	
	$("#storeStates").on('change', function(){
		var selection = $(this).val(); 
		$.ajax({
             type: "GET",
             url: "getStoreList",
             data: {"storeKey": selection },
             success: function(xhr){
            	 var response = jQuery.parseJSON(xhr);
            	$('#locations').find('option').remove();
 				$('#locations').append(
 						"<option selected='selected' value='0' ToolTip=''>select your home store</option>");
 				$.each(response, function(key,value){
					// getting data on [{},{}] format so need two iteration
					 $.each(value, function(key, value){
						 console.log(key, value);
						 $("#locations").append(
									"<option value='" + key + "'>" + value + "</option>");
					 });
				});
             }
         });
	});
	
	
	/*
	
	*//**
	 * Populate the Store option field based
	 * on State selection
	 *//*
	$('body').on('change', '#storeStates', (function(){
		var selection = $(this).val(); 
		console.log(selection);
		$.ajax({
			type: "GET",
			data: {
				state : selection
			},
			url: "getStoreList", 
			success : function(xhr) {
				console.log(xhr); 
				var response = jQuery.parseJSON(xhr);
				$('#locations').find('option').remove();
				$('#locations').append(
						"<option selected='selected' value='0' ToolTip=''>select your home store</option>");
				$.each(response, function(key,value){
					// getting data on [{},{}] format so need two iteration
					 $.each(value, function(key, value){
						 console.log(key, value);
						 $("#locations").append(
									"<option value='" + key + "'>" + value + "</option>");
					 });
					
					
				});
			}
		})
		
		
	})
	);
	*/
	/**
	 * REMOVE THE ERROR
	 */
	$("#registerForm input:text").keyup(function(){
		var id = $(this).attr('id');
		console.log(id);
		$("#registerForm").find("[class=error_" + id + "]").hide();
	});
	
	
	
	/**
	 * VALIDATE IF USERNAME EXISTS
	 */
	$("#username").on('blur keyup', function(e){
		$("#registerForm").find("[class^='error_']").hide();
		if(e.type == 'keyup' && e.keyCode == '13' || e.type == 'blur'){
			$.ajax({
				type:'GET',
				minLength: 3,
				data : {
					username : $(this).val(),
					anchorId : "usernameRequest" // declared a new parameter
													// and assigned a value = ID
				},
				url : "checkUserExistence",
				success : function(data){
					if(data == "exist"){
						$(".error_username").show().html("Username already exist");
					} 
				}
			})
		}
	})
	
	/**
	 * CALL CONFIRM PASSWORD ON THE FLY
	 */
	$("#registerConfirmPassword").keyup(function(){
		var password = $("#registerPassword").val();
		var confirmPassword = $("#registerConfirmPassword").val();
		
		var error = validateConfirmPassword(password, confirmPassword);
		if(error == ""){
			$(".error_confirmPassword").hide();
		}
	});
	
	
	/**
	 * CALL CONFIRM EMAIL ON THE FLY
	 */
	$("#confirmEmail").keyup(function(){
		var email = $("#email").val();
		var confirmEmail = $("#confirmEmail").val();
		
		var error = validateConfirmEmail(email, confirmEmail);
		if(error == ""){
			$(".error_confirmEmail").hide();
		}
	});
	
	
	/**
	 * PHONE NUMBER AND ZIP CHECK ON THE FLY
	 */
	$("#phoneNumber, #memberZip").keyup(function(){
		var value = $(this).val();
		var id = $(this).attr('id');
		console.log(id);
		var error = validateNaN(value, id);
		
		if(error == ""){
			$(".error_" + id).hide();
		}
	});
	

	/**
	 * REGISTER FORM SUBMISSION 
	 */
/*	$("#submitRegForm").on('click', function (e){
		    // get all the inputs into an array.
		    var $inputs = $('#registerForm :input');

		    // get array of just the values.
		    var values = {};
		    $inputs.each(function() {
		        values[this.name] = $(this).val();
		        console.log( values[this.name]);
		    });
		    
		    //validate form elements
		    if(validate(values)){
		    	$("#registerForm").submit();
		    } else {
		    	e.preventDefault();
		    }
		    
		    console.log(values);
	});*/
		
	
	/**
	 * REGISTRATION FROM VALIDATION
	 */
	
	function validate(formValues){
		var reason = "";
		
		reason += validateUsername(formValues.username);
		reason += validatePassword(formValues.password);
		reason += validateConfirmPassword(formValues.password, formValues.confirmPassword);
		reason += validateEmailAddresss(formValues.email);
		reason += validateConfirmEmail(formValues.email, formValues.confirmEmail);
		reason += validatePhoneNumber(formValues.phoneNumber);
		reason += validateFirstName(formValues.firstName);
		reason += validateLastName(formValues.secondName);
		
		if(reason != ""){
			return false;
		}
		
		return true;
	}
	
	/**
	 * FUNCTION TO VALIDATE USERNAME
	 */
	function validateUsername(field){
		var error = "";
		if( typeof(field !== "undefined")){
			if(field.length == 0){
				error = "Please Enter Username \n";
				$(".error_username").html(error);
			}
		}
		return error;
	}
	
	/**
	 * FUNCTION TO VALIDATE PASSWORD
	 */
	function validatePassword(field){
		var error = "";
		if( typeof(field !== "undefined")){
			if(field.length == 0){
				error = "Please Enter Password \n";
				$(".error_password").html(error);
			}
		}
		return error;
	}
	
	/**
	 * FUNCTION TO VALIDATE CONFIRM PASSWORD
	 */
	function validateConfirmPassword(password, confirmPassword){
		var error = "";

		if(password != confirmPassword ){
			error = "Password Doesn't Match";
			$(".error_confirmPassword").show().html(error);
		}
		
		return error;
	}
	
	/**
	 * FUNCTION TO VALIDATE FIRSTNAME
	 */
	function validateFirstName(field){
		var error = "";
		if( typeof(field !== "undefined")){
			if(field.length == 0){
				error = "Please Enter First Name \n";
				$(".error_firstName").html(error);
			}
		}
		return error;
	}
	
	/**
	 * FUNCTION TO VALIDATE LASTNAME
	 */
	function validateLastName(field){
		var error = "";
		if( typeof(field !== "undefined")){
			if(field.length == 0){
				error = "Please Enter Last Name \n";
				$(".error_secondName").html(error);
			}
		}
		return error;
	}
	
	/**
	 * FUNCTION TO VALIDATE EMAIL IS TYPED
	 */
	function validateEmailAddresss(field){
		var error = "";
		if( typeof(field !== "undefined")){
			if(field.length == 0){
				error = "Please Enter Email \n";
				$(".error_email").html(error);
			}
		}
		return error;
	}
	
	/**
	 * FUNCTION TO VALIDATE CONFIRM EMAIL
	 */
	function validateConfirmEmail(email, confirmEmail){
		var error = "";

		if(email != confirmEmail){
			error = "Email Doesn't Match";
			$(".error_confirmEmail").show().html(error);
		}
		
		return error;
	}
	
	/**
	 * FUNCTION TO VALIDATE THAT PHONE NUMBER IS ONLY NUMBER
	 */
	function validatePhoneNumber(field){
		var error = "";
		if( typeof(field !== "undefined")){
			if(!field.match("^[0-9]+$")){
				error = "Invalid Type \n";
				$(".error_phoneNumber").html(error);
			}
		}
		return error;
	}
	
	
	/**
	 * Regex validation for the Number
	 */
	function validateNaN(field, id){
		var error = "";
		if( typeof(field !== "undefined")){
			if(!field.match("^[0-9]+$")){
				error = "Invalid Type \n";
				$(".error_" + id).html(error);
			}
		}
		return error;
	}
	
	
});
	