<cfcomponent>
    <cffunction  name="dates" returnType="any">
        <cfset local.result = []>
        <cfset local.today = now()>
        <cfset #local.result# = arrayAppend("#local.result#", "#local.today#")>
        <cfset local.monthNumber = month(local.today)>
        <cfset #local.result# = arrayAppend("#local.result#", "#local.monthNumber#")>
        <cfset local.monthName = monthAsString(local.monthNumber)>
        <cfset local.result = arrayAppend(#local.result#, #local.monthName#)>
        <cfset local.todayNumber = dayOfWeek(local.today)>
        <cfset local.lastFriday = ((6-local.todayNumber)-7)>
        <cfset local.lastFridayDate = dateAdd("d", local.lastFriday, local.today)>
        <cfset local.result = arrayAppend(#local.result#, #local.lastFridayDate#)>
        <cfset local.prevDays = []>
        <cfset local.diff = -5>
        <cfloop index="i" from="1" to="5">
            <cfset local.prevDays[i] = dateAdd("d", local.diff, local.today)>
            <cfset local.diff++>
        </cfloop>
        <cfdump  var="#prevDays#">
        <cfset local.daysMonth = daysInMonth(local.today)>
        <cfset local.lastDate = local.today.setDay(local.daysMonth)>
        <cfset local.lastDay = dateFormat(local.lastDate, "dd-mm-yyyy dddd")>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>