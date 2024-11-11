<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
        <title>qn27Welcome</title>
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    </head>
    <body>
        <form method="post">
            <div class="border text-center p-3 m-4">
                <h5>WELCOME USER</h5>
                <input type="submit" value="LOGOUT" name="logout">
            </div>
        </form>
        <cfif NOT structKeyExists(session, "userName")>
            <cflocation  url="qn27.cfm">
        </cfif>
        <cfif structKeyExists(form, "logout")>
            <cfset sessionInvalidate()>
            <cflocation  url="qn27.cfm">
        </cfif>
    </body>
</html>