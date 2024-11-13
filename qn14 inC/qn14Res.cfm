<cfoutput>
<cfapplication sessionmanagement="yes">
<cfdump  var="#session#">
<cfdump  var="#session.thumbnailStruct["name"]#">
<cfdump  var="#session.thumbnailStruct["desc"]#">
<cfdump  var="#session.thumbnailStruct["thumbnail"]#">
<cfimage action="writeToBrowser" source="#session.thumbnailStruct["thumbnail"]#">
</cfoutput>