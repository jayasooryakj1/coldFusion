function emailValidation(){
    var firstname = document.getElementById("firstName").value;
    var email = document.getElementById("email").value;
    var button = document.getElementById("buttonDisable");
    if((firstname == "") || (email == "")){
        document.getElementById("inner").innerHTML="Enter all details"
    }
    else{
        document.getElementById("inner").innerHTML=""
        $.ajax({
            type:"POST",
            url:"components/qn24.cfc?method=verifyEmail",
            data: {email:email},
            success: function(disable){
                if(!disable){
                    button.disabled = false;
                }
                else{
                    button.disabled = true;
                }
            }
        });
    }
}