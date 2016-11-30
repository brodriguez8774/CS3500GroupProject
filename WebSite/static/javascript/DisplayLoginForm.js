
//document.write("Hello World! DisplayLoginForm Here.")

// Get DOM elements.
var loginLink = document.getElementsByName("login-link");
var loginFormWrapper = document.getElementsByName("login-form-wrapper");
var loginBackground = document.getElementsByName("login-background");

//document.write(loginLink[0]);
//document.write(loginFormWrapper[0]);
//document.write(loginBackground[0]);

// Display login form if login button is clicked.
loginLink[0].addEventListener("click", function(){
    loginFormWrapper[0].style.display = "flex";
});

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
