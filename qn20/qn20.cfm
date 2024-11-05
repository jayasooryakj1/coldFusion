<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qn20</title>
</head>
<body>
    <div>
        <form action="" method="POST">
            <div>
                <cfset local.captchaText = "expression">
                <cfimage action="captcha" text="#local.captchaText#"  difficulty="high"><br>
                <input type="text" placeholder="Enter Captcha" name="captchaInput"><br>
                <input type="text" placeholder="Enter Email" name="email"><br>
                <input type="submit" value="Submit">
            </div>
        </form>
        <cfif structKeyExists(form, captchaInput) && structKeyExists(form, email)>
            <cfset local.value=createObject("component","components.qn20")>
            <cfset local.captchaInput = "#form.captchaInput#">
            <cfset local.email = "#form.email#">
            <cfset local.result=local.value.fn_result(local.captchaInput, local.email, local.captchaText)>
            <cfif #local.result#==1>
                <cfdump  var="Login successful">
            <cfelse>
                <cfdump  var="Login unseuccesful">
            </cfif>
        </cfif>
    </div>
</body>
</html>
</cfoutput>