<html>
<head>
<title>Qn 5</title>
</head>
<body>
    <form method="POST">
        <div>
            <label>Enter your date of birth</label>
            <input type="date" name="dobYou" >
            <br>
            <label>Enter your mothers date of birth</label>
            <input type="date" name="dobMother">
            <br>
            <input type="submit">
        </div>
        <cfif isDefined("form.dobYou") && isDefined("form.dobMother")>
            <cfoutput>
                <cfset newObject = createObject("component", "components.calc")>
                <cfset result = newObject.valueFunction(form.dobYou,form.dobMother)>
                <div>
                    Your Age #result[1]#
                </div>
                <div>
                    Mothers age during delivery #result[2]#
                </div>
                <div>
                    Remaining days for your birthday  #result[3]#
                </div>
                <div>
                    Remaining days for mothers birthday #result[4]#
                </div>
            </cfoutput>
        </cfif>
    </form>
</body>
</html>

