
//document.write("Hello World. Validate Form here.<br>");

// Get DOM elements.
var formLogin = document.getElementsByName("login_form");
var formLoginUser = document.getElementsByName("login_ID");
var formLoginPass = document.getElementsByName("login_pass");
var formLoginSubmit = document.getElementsByName("login_submit");

//document.write(formLogin[0]);
//document.write(formLoginUser[0]);
//document.write(formLoginPass[0]);
//document.write(formLoginSubmit[0]);

// Form validation event.
if (formLogin[0] != null) {
    formLogin[0].addEventListener("submit", function(submitEvent) {
        var loginUserBool = CheckLoginUser();
        var loginPassBool = CheckLoginPass();

        // If all checks are fine, continue. Otherwise something errored and prevent form submit.
        if (!(loginUserBool && loginPassBool)) {
            submitEvent.preventDefault();
        }
    });
}

// Validate input of login user field.
function CheckLoginUser() {
    if ((formLoginUser[0].value).trim() != "") {
        console.log("formLoginUser success.")
        formLoginUser[0].style.borderColor = "rgb(242, 241, 240)";
        return true;
    } else {
        formLoginUser[0].style.borderColor = "#f00";
        console.log("formLoginUser failure.")
        return false;
    }
}

// Validate input of login pass field.
function CheckLoginPass() {
    if ((formLoginPass[0].value).trim() != "") {
        formLoginPass[0].style.borderColor = "rgb(242, 241, 240)";
        console.log("formLoginPass success.")
        return true;
    } else {
        formLoginPass[0].style.borderColor = "#f00";
        console.log("formLoginPass failure.")
        return false;
    }
}
