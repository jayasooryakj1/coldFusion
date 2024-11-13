<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn5</title>
    </head>
    <body>
        <form method = "POST">
            <div class = " text-center border m-4 p-3">
                <label>Enter your date of birth</label>
                <input type = "date" name = "dobYou">
                <br>
                <label class="mt-3">Enter your mothers date of birth</label>
                <input type = "date" name = "dobMother">
                <br>
                <input class="mt-3" type = "submit">
            </div>
            <div class = " text-center border p-4 m-4">
            <cfif isDefined("form.dobYou") && isDefined("form.dobMother")>
                <cfoutput>
                    <cfset newObject = createObject("component", "components.qn5")>
                    <cfset local.result = newObject.dateOfBirth(form.dobYou,form.dobMother)>
                    <div>
                        Your Age #local.result[1]#
                    </div>
                    <div>
                        Mothers age during delivery #local.result[2]#
                    </div>
                    <div>
                        Remaining days for your birthday  #local.result[3]#
                    </div>
                    <div>
                        Remaining days for mothers birthday #local.result[4]#
                    </div>
                </cfoutput>
            </cfif>
            </div>
        </form>
    </body>
</html>