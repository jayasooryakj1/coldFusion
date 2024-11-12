<cfapplication name = "applicationName" sessionmanagement = "Yes">
<!DOCTYPE html>
    <html lang = "en">
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>qn24</title>
            <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        </head>
        <body>
            <cfoutput>

                <form action = "" method = "POST"> 
                    <div class = "text-center m-4 border p-3">
                        <h5>Subscribe</h5><br>
                        <label>Enter first name: </label>
                        <input type = "text" id="firstName" name = "firstName"><br><br>
                        <div>
                            <label>Enter email: </label>
                            <input type = "email" id="email" name = "email">
                            <button type = "button" onclick = "emailValidation()" name = "verify">verify</button><br><br>
                        </div>
                        <button type = "submit" disabled id="buttonDisable"  name = "enterData">Submit</button>
                    </div>
                </form>

                <div class="text-center mt-4">
                    <div id="inner"></div>
                </div> 

                <cfif structKeyExists(form,"enterData")>
                    <cfset local.obj  =  createObject("component", "components.qn24")>
                    <cfset local.result  =  local.obj.detailsEntry(form.firstName,form.email)>
                </cfif>

            </cfoutput>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script src="js/script.js"></script>
        </body>
    </html>
