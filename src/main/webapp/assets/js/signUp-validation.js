let inputName = document.querySelector('.name');
let inputLastName = document.querySelector('.lastName');
let inputDay = document.querySelector('.birthDay');
let inputMonth = document.querySelector('.birthMonth');
let inputYear = document.querySelector('.birthYear');
let inputEmail = document.querySelector('.email');
let inputPassword = document.querySelector('#password')
let inputConfirmPassword = document.querySelector('#confirm-password');
let signUpButton = document.querySelector('#signUpButton');

let visualizedPassword = document.querySelector('#visualized-password');
let visualizedConfirmPassword = document.querySelector('#visualized-confirmPassword');
let password = document.querySelector('#password');
let confirmPassword = document.querySelector('#confirm-password');


let nameValited;
let lastNameValited;
let dayValited;
let monthValited;
let yearValited;
let emailValited;
let passwordValited;
let confirmPasswordValited;

inputName.addEventListener('blur', () => {
	if(inputName.value != '') {
		let validName = document.querySelector('.name-label');
		validName.style.color = 'green';
		nameValited = true;
	}
	else{
		let validName = document.querySelector('.name-label');
		validName.style.color = 'red';
		nameValited = false;
	}
})

inputLastName.addEventListener('blur', () => {
	if(inputLastName.value != '') {
		let validLastName = document.querySelector('.lastName-label');
		validLastName.style.color = 'green';
		lastNameValited = true;
	}
	else{
		let validLastName = document.querySelector('.lastName-label');
		validLastName.style.color = 'red';
		lastNameValited = false;
	}
})

inputDay.addEventListener('blur', () => {
	let day = Number(inputDay.value);
		
	if (day >= 1 && day <= 31) {
		if (day >= 1 && day < 10) {
			day = "0" + day;
		}
		
		let validDay = document.querySelector('.day-label');
		validDay.style.color = 'green';
		dayValited = true;
	}
	else {
		let validDay = document.querySelector('.day-label');
		validDay.style.color = 'red';
		dayValited = false;
	}
})

inputMonth.addEventListener('blur', () => {
	let month = Number(inputMonth.value);
		
	if (month >= 1 && month <= 12) {
		if (month >= 1 && month < 10) {
			month = "0" + month;
		}
		
		let validMonth = document.querySelector('.month-label');
		validMonth.style.color = 'green';
		monthValited = true;
	}
	else {
		let validDay = document.querySelector('.month-label');
		validDay.style.color = 'red';
		monthValited = false;
	}
})

inputYear.addEventListener('blur', () => {
	let year = Number(inputYear.value);
	let date = new Date();
	let currentYear = date.getFullYear();
		
	if (year >= 1923 && year <= (currentYear - 13)) {
		let validYear = document.querySelector('.year-label');
		validYear.style.color = 'green';
		yearValited = true;
	}
	else {
		let validYear = document.querySelector('.year-label');
		validYear.style.color = 'red';
		yearValited = false;
	}
})

inputEmail.addEventListener('blur', () => {
	let regex = /\w+\@\w+\./;
		
	if (regex.test(inputEmail.value)) {
		let validEmail = document.querySelector('.email-label');
		validEmail.style.color = 'green';
		emailValited = true;
	}
	else {
		let validEmail = document.querySelector('.email-label');
		validEmail.style.color = 'red';
		emailValited = false;
	}
})

inputPassword.addEventListener('blur', () => {
	let lengthPassword = inputPassword.value;
	let valitedLength;
	let upperCharacter = /[A-Z]/;
	let valitedUpper;
	let numberPassword = /[0-9]/;
	let valitedNumber;
	let especialCharacter = /[@#_$%&*]/;
	let valitedSpecial;
	
	if(lengthPassword.length >= 6 && lengthPassword.length <= 12) {
		let validLengthPassword = document.querySelector('.length-character');
		validLengthPassword.style.color = 'green';
		valitedLength = true;
	}
	else {
		let validLengthPassword = document.querySelector('.length-character');
		validLengthPassword.style.color = 'red';
		valitedLength = false;
	}
	
	
	if(upperCharacter.test(inputPassword.value)){
		let validUpperCharacter = document.querySelector('.upper-case');
		validUpperCharacter.style.color = 'green';
		valitedUpper = true;
	}
	else{
		let validUpperCharacter = document.querySelector('.upper-case');
		validUpperCharacter.style.color = 'red';
		valitedUpper = false;
	}
	
	if(numberPassword.test(inputPassword.value)){
		let validNumberPassword = document.querySelector('.numberPassword');
		validNumberPassword.style.color = 'green';
		valitedNumber = true;
	}
	else{
		let validNumberPassword = document.querySelector('.numberPassword');
		validNumberPassword.style.color = 'red';
		valitedNumber = false;
	}
	
	
	if(especialCharacter.test(inputPassword.value)){
		let validSpecialCharacter = document.querySelector('.especial-character');
		validSpecialCharacter.style.color = 'green';
		valitedSpecial = true;
	}
	else{
		let validSpecialCharacter = document.querySelector('.especial-character');
		validSpecialCharacter.style.color = 'red';
		valitedSpecial = false;
	}
	
	if(valitedLength && valitedUpper && valitedNumber && valitedSpecial){
		passwordValited = true;
	}
	else{
		passwordValited = false;
	}
	
})

inputConfirmPassword.addEventListener('blur', () => {
	if(inputConfirmPassword.value == inputPassword.value){
		let validConfirmPassword = document.querySelector('.confirmPassword-label');
		validConfirmPassword.style.color = 'green';
		confirmPasswordValited = true;
	}
	else{
		let validConfirmPassword = document.querySelector('.confirmPassword-label');
		validConfirmPassword.style.color = 'red';
		confirmPasswordValited = false;
	}
})

signUpButton.addEventListener('click', () => {
	if (nameValited && lastNameValited && dayValited && monthValited && yearValited && emailValited && passwordValited &&confirmPasswordValited) {
	signUpButton.setAttribute('type', "submit");
	
	console.log(formValited);
	}
	else{
		console.log("Todos os campos devem ser preenchidos");
	}
})

visualizedPassword.addEventListener('click',() => {
	
	let eye = document.querySelector('#icon-pass');
	
	if(eye.getAttribute('class') == 'fa-solid fa-eye'){
		eye.setAttribute('class', 'fa-solid fa-eye-slash');
		password.setAttribute('type', 'text');
	}
	else if(eye.getAttribute('class') == 'fa-solid fa-eye-slash'){
		eye.setAttribute('class', 'fa-solid fa-eye');
		password.setAttribute('type', 'password');
	}
})

visualizedConfirmPassword.addEventListener('click',() => {
	
	let eye = document.querySelector('#icon-confirmPass');
	
	if(eye.getAttribute('class') == 'fa-solid fa-eye'){
		eye.setAttribute('class', 'fa-solid fa-eye-slash');
		confirmPassword.setAttribute('type', 'text');
	}
	else if(eye.getAttribute('class') == 'fa-solid fa-eye-slash'){
		eye.setAttribute('class', 'fa-solid fa-eye');
		confirmPassword.setAttribute('type', 'password');
	}
})
