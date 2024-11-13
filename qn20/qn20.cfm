<!DOCTYPE html>
<html lang="en">
    <head>    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn20</title>
    </head>
    <body>
        <div class="border m-4 p-3 text-center">
            <form action="" method="POST">
                <div>
                    <cfset local.captchaText = "asdfgh">
                    <cfimage action="captcha" text="#local.captchaText#"  difficulty="high"><br><br>
                    <input type="text" placeholder="Enter Captcha" name="captchaInput"><br><br>
                    <input type="text" placeholder="Enter Email" name="email"><br><br>
                    <input type="submit" value="Submit">
                </div>
            </form>
            <cfif structKeyExists(form, "captchaInput") && structKeyExists(form, "email")>
                <cfset local.value=createObject("component","components.qn20")>
                <cfset local.captchaInput = "#form.captchaInput#">
                <cfset local.email = "#form.email#">
                <cfset local.result=local.value.fn_result(local.captchaInput, local.email, local.captchaText)>
                <cfif #local.result#==1>
                    <cfdump  var="Login successful">
                <cfelse>
                    <cfdump  var="Login unsuccesful">
                </cfif>
            </cfif>
        </div>
    </body>
</html>