/*Modal confirmação de inscrição*/
let responseSignUp = document.querySelector('.responseSignUp')

if(responseSignUp.innerHTML != '') {
	$(document).ready(function() {
    $('#exampleModal').modal('show');
  })
}

/*Modal política de privacidade*/
let privacityPolicy = document.querySelector('.policy-privacity');

privacityPolicy.addEventListener('click', () => {
	$(document).ready(function() {
    $('#privacy-policy').modal('show');
  })
})