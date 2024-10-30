<html>
<head>
<title>Qn 5</title>
</head>
<body class =>
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
                    <span>Your Age </span><span> #result[1]#</span>
                </div>
                <div>
                    <span>Mothers age during delivery </span><span> #result[2]#</span>
                </div>
                <div>
                    <span>Remaining days for your birthday</span><span> #result[3]#</span>
                </div>
                <div>
                    <span>Remaining days for mothers birthday</span><span> #result[4]#</span>
                </div>
            </cfoutput>
        </cfif>
    </form>
</body>
</html>

