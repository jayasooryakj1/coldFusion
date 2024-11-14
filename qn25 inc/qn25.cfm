<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
        <title>qn27</title>
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border p-3 m-4 text-center">
                <label>Enter the User Name</label>
                <input  name="userName"><br><br>
                <label>Enter the password</label>
                <input type="password" name="password"><br><br>
                <input type="submit" name="submit">
            </div>
        </form>
        <div class="border text-center m-4">
            <div>
                <cfif structKeyExists(form,"submit") >  
                    <cfset local.newObject = createObject("component", "components.qn27")>
                    <cfset local.result = local.newObject.userLogin(form.userName,form.password)> 
                    <cfif local.result EQ true>
                        <cflocation  url="qn27Welcome.cfm">
                    <cfelse>
                        <div class="p-3 m-4">Invalid credentials!</div>
                    </cfif>      
                </cfif>
            </div>
        </div>
    </body>
</html>