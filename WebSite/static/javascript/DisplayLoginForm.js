
//document.write("Hello World! DisplayLoginForm Here.")

// Get DOM elements.
var loginLink = document.getElementsByName("login-link");
var loginFormWrapper = document.getElementsByName("login-form-wrapper");
var loginBackground = document.getElementsByName("login-background");
var formLoginUser = document.getElementsByName("login_ID");

//document.write(loginLink[0]);
//document.write(loginFormWrapper[0]);
//document.write(loginBackground[0]);
//document.write(formLoginUser[0]);

// Display login form if login button is clicked.
if (loginLink[0] != null) {
    loginLink[0].addEventListener("click", function(){
        loginFormWrapper[0].style.display = "flex";
        formLoginUser[0].focus();
    });
}

// Check if click occurs outside of login form. If so, hide once again.
document.addEventListener("click", function(e) {
    if (loginFormWrapper[0].style.display == "flex") {
        //console.log("Form is visible.");
        if (e.target == loginFormWrapper[0]) {
            //console.log("Clicked outside of form.");
            loginFormWrapper[0].style.display = "none";
        } else {
            //console.log("Form clicked.");
        }
    }
});
