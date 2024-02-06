const closeButton = document.getElementById('closeButton');
const signUpBtn = document.getElementById("signUp");
const signInBtn = document.getElementById("signIn");
const container = document.querySelector(".container");

function togglePasswordVisibility() {
    const passwordInput = document.getElementById('passwordInput');
    const togglePasswordBtn = document.getElementById('togglePasswordBtn');

    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        togglePasswordBtn.innerHTML = '&#x1F440;';
    } else {
        passwordInput.type = 'password';
        togglePasswordBtn.innerHTML = '&#x1F441;';
    }
}

closeButton.addEventListener('click', function() {
    container.style.display = 'none';
});

signUpBtn.addEventListener("click", () => {
    container.classList.add("right-panel-active");
});
signInBtn.addEventListener("click", () => {
    container.classList.remove("right-panel-active");
});