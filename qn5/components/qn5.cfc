<cfcomponent>
    <cffunction  name="dateOfBirth" returnType="struct">
        <cfargument name="dobYour" type="any" required="true">
        <cfargument name="dobMother" type="any" required="true">
        <cfset local.dobYour=arguments.dobYour>
        <cfset local.dobMother=arguments.dobMother>
        <cfset local.ageYour = DateDiff('yyyy', local.dobyour, now())>
        <cfset local.agemother = DateDiff('yyyy', local.dobmother, now())>
        <cfset local.nextBirthdayYou = local.dobYour.setYear(year(now()))>
        <cfset local.remainingDayYou = dayOfYear(local.nextBirthdayYou) - dayOfYear(now())>
        <cfif local.remainingDayYou LT 0>
            <cfset local.remainingDayYou=(365+local.remainingDayYou)>    
        </cfif>
        <cfset local.nextBirthdayMother = local.dobMother.setYear(year(now()))>
        <cfset local.remainingDayMother = dayOfYear(local.nextBirthdayMother) - dayOfYear(now())>
        <cfif local.remainingDayMother LT 0>
            <cfset local.remainingDayMother=(365+local.remainingDayMother)>    
        </cfif>
        <cfset local.result[1] = local.ageYour>
        <cfset local.result[2] = local.agemother-ageYour>
        <cfset local.result[3] = local.remainingDayYou>
        <cfset local.result[4] = local.remainingDayMother>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>