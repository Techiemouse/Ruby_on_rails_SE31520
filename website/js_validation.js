
		//Function takes the value of the email field and uses Regular expression to check if it's valid
		function checkEmail(){

			var email = document.getElementById('testEmail');
			var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

			if (!filter.test(email.value)) {
				alert('Please provide a valid email address');
				email.focus;
				return false;
			}

			return true;
		}
		//Function takes the value of the postcode field and uses Regular expression to check if it's valid
		function checkPostCode(){
			var postcode = document.getElementById('postcode');
			//postcode = postcode.replace(/\s/g, "");
    		var regex = /^[A-Z]{1,2}[0-9]{1,2} ?[0-9][A-Z]{2}$/i;
    		if (!regex.test(postcode.value)) {
				alert('Please provide a valid postcode');
				postcode.focus;
				return false;
			}
			return true;

		}
		//Function checks if the fields have been completed one by one
		function checkEmpty(){
		var valid;
			$('.form-control').each(function(){
				var itemName = this.getAttribute('placeholder');
				if (this.value == ""){
					alert(itemName + " field is empty! ");
					valid = false;
					return valid;
				}
				valid = true;
					   
			})	

			return valid;		


		}		
		//Function takes the value of the phone number field and uses Regular expression to check if it's valid
		function checkPhone(){
			var phone = document.getElementById('phone');
			//postcode = postcode.replace(/\s/g, "");
    		var regex = /^[0-9 ]{1,15}$/;
    		if (!regex.test(phone.value)) {
				alert('Please provide a valid phone number');
				phone.focus;
				return false;
			}
			return true;



		}
		//Function calls all the validation functions 
		function checkForm(){

			if((checkEmpty()) && (checkPostCode()) && (checkEmail()) && (checkPhone())){
			
				return true;
			}
			
			return false;
			
			

		}

