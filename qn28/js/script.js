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
    var rePassword= document.getElementById("rePassword").value;
    let whiteSpace = new Set([" ", "\t", "\n"]);
    for(let i = 0;i<userName.length; i++){
        if(whiteSpace.has(userName[i])){
            document.getElementById("error").innerHTML="User Name cannot have space in it"
            event.preventDefault();
        }
    }
    for(let i = 0;i<password.length; i++){
        if(whiteSpace.has(password[i])){
            document.getElementById("error").innerHTML="Password cannot have space in it"
            event.preventDefault();
        }
    }
    if((userName == "")||(password == "")){
        document.getElementById("error").innerHTML="Enter both user name and password"
        event.preventDefault();
    }
    else if((password != rePassword)){
        document.getElementById("error").innerHTML="Password mismatch"
        event.preventDefault();
    }
    else if((password.length<8)){
        document.getElementById("error").innerHTML="Password must be minimum 8 characters long"
        event.preventDefault();
    }
    else  if(!(document.getElementById("admin").checked||document.getElementById("editor").checked||document.getElementById("user").checked)){
        document.getElementById("error").innerHTML="Select role"
        event.preventDefault();
    }
}

function deletePage(dltObj){
    if(confirm("Delete page?")){
        $.ajax({
            type:"post",
            url:"components/qn28.cfc?method=dltFunction",
            data:{dlt:dltObj.value},
            success:function(result){
                if(result){
                    location.reload();
                }
            }
        })
    }
}

function logout(){
    if(confirm("Logout?")){
        $.ajax({
            type:"post",
            url:"components/qn28.cfc?method=logoutFunction",
            success:function(result){
                if(result){
                    location.reload();
                }
            }
        })
    }
}