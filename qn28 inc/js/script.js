function validate(event){
    var userName = document.getElementById("userName").value;
    var password = document.getElementById("password").value;
    if((userName == "")||(password == "")){
        document.getElementById("error").innerHTML="Enter both user name and password"
        event.preventDefault();
    }
}

function validateSignUp(event){
    var userName = document.getElementById("userName").value;
    var password = document.getElementById("password").value;
    if((userName == "")||(password == "")){
        document.getElementById("error").innerHTML="Enter both user name and password"
        event.preventDefault();
    }
    else  if(!(document.getElementById("admin").checked||document.getElementById("editor").checked||document.getElementById("user").checked)){
        document.getElementById("error").innerHTML="Select role"
        event.preventDefault();
    }
}