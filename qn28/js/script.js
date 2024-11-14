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