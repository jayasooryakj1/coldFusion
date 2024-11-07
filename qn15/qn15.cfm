<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Qn 15</title>
</head>
<body>
    <cfoutput>

        <div class="border text-center m-4 p-4">
            <cfset local.value = createObject("component","components.qn15")>
            <cfset local.result = local.value.multiply(1,2)>
            <cfdump  var = "#local.result#">
        </div>

        <div class="border text-center m-4 p-4">
            <cfobject  name="value" type="component" component="components.qn15">
            <cfset local.result = value.multiply(1,2,3)>
            <cfdump  var = "#local.result#">
        </div>

        <div class="border text-center m-4 p-4">
            <cfinvoke  component="components.qn15" method="multiply" returnVariable="local.result">
                <cfinvokeargument  name="num1"  value="1">
                <cfinvokeargument  name="num2"  value="2">
                <cfinvokeargument  name="num3"  value="3">
                <cfinvokeargument  name="num4"  value="4">
            </cfinvoke>
            <cfdump  var = "#local.result#">
        </div>
        
    </cfoutput>
</body>
</html>