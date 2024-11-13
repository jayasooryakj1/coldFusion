<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <title>qn28 Sign Up</title>
    </head>
    <body>
        <h3 class="mt-5 text-center">SIGN UP</h3>
        <div class="d-flex justify-content-center">
            <div class="w-50 bg-white text-center mt-5 text-center pb-5">
                <form action="" method="post" class="mt-5 mb-5">
                    <label for="">User name: </label>
                    <input type="text" name="userName" id="userName"><br><br>
                    <label for="">Password: </label>
                    <input type="password" name="password" id="password"><br><br>
                    <label for="">Role</label><br>
                    <input type="radio" name="role" id="admin" value="1">&nbsp; Admin <br>
                    <input type="radio" name="role" id="editor" value="2">&nbsp; Editor <br>
                    <input type="radio" name="role" id="user" value="3">&nbsp; User <br>
                    <input type="submit" name="submit" onclick="validateSignUp(event)" class="p-1 mt-3">
                </form>
                <div class="mb-4" id="error"></div>
                <a href="index.cfm">Login</a>
            </div>
        </div>
        <cfif structKeyExists(form, "submit")>
            <cfset local.value = createObject("component", "components.qn28")>
            <cfset local.result = local.value.insertUser(form.userName, form.password, form.role)>
            <div class="text-center m-1 p-3">
                <cfoutput>
                    #local.result#
                </cfoutput>
            </div>
        </cfif>
        <script src="js/script.js"></script>
    </body>
</html>