<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <title>qn28 Login</title>
    </head>
    <body>
        <h3 class="mt-5 text-center">LOGIN</h3>
        <div class="d-flex justify-content-center">
            <div class="w-50 bg-white text-center mt-5 text-center pb-5">
                <form action="" method="post" class="mt-5 mb-5">
                    <label for="">User name: </label>
                    <input type="text" name="userName" id="userName"><br><br>
                    <label for="">Password: </label>
                    <input type="password" name="password" id="password"><br><br>
                    <input type="submit" onclick="validate(event)" name="submit" class="p-1 mt-3">
                </form>
                <div class="mb-4" id="error"></div>
                <a href="signUp.cfm">Sign up</a>
            </div>
        </div>
        <cfif structKeyExists(form, "submit")>
            <cfset local.value = createObject("component", "components.qn28")>
            <cfset local.result = local.value.check(form.userName, form.password)>
            <cfif local.result=="User">
                <cflocation  url="home.cfm">
            <cfelseif local.result=="Admin" || local.result=="Editor">
                <cflocation  url="admin.cfm">
            <cfelse>
                <div class="text-center">
                    <cfoutput>
                        Incorrect username or password
                    </cfoutput>
                </div>
            </cfif>
        </cfif>
        <script src="js/script.js"></script>
    </body>
</html>