<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
    <cfset result = []>
    <cfset today = now()>
<!---     <cfset #result#=arrayAppend(#result#, #today#)> --->
    <cfset monthNumber = month(today)>
<!---     <cfset #result#=arrayAppend(#result#, #monthNumber#)> --->
    <cfset monthName = monthAsString(monthNumber)>
    <cfset #result#=arrayAppend(#result#, #monthName#)>
    <cfset todayNumber = dayOfWeek(today)>
    <cfset lastFriday = ((6-todayNumber)-7)>
    <cfset lastFridayDate = dateAdd("d", lastFriday, today)>
<!---     <cfset #result#=arrayAppend(#result#, #lastFridayDate#)> --->
    <cfset prevDays = []>
    <cfset diff = -5>
    <cfloop index="i" from="1" to="5">
        <cfset prevDays[i] = dateAdd("d", diff, today)>
        <cfset diff++>
    </cfloop>
    <cfdump  var="#prevDays#">
    <cfset daysMonth = daysInMonth(today)>
    <cfset lastDate = today.setDay(daysMonth)>
    <cfset lastDay = dateFormat(lastDate, "dd-mm-yyyy dddd")>
    <cfreturn result>
    </cffunction>
</cfcomponent>