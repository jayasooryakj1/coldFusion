
<cfcomponent>

    <cffunction  name="splitString" returnType="struct">
        <cfargument  name="text" type="string">
        <cfset local.count = 0>
        <cfset local.struct = structNew()>
        <cfloop list="#text#" item="i" delimiters=" .">
            <cfset local.count = local.count + 1>
            <cfset local.struct[i] = local.count>
        </cfloop>
        <cfloop collection="#local.struct#" item="item">
            <cfquery name="query" datasource = "myData">
                insert into SplitWord values('#item#');
            </cfquery>
        </cfloop>
        <cfreturn local.struct>
    </cffunction>

    <cffunction  name="wordCount" returnType="struct">
        <cfargument  name="text" type="string">
        <cfset local.count = 0>
        <cfset local.decreaseWordCount = structNew("ordered")>
        <cfset local.decreaseTextLength = structNew("ordered")>
        <cfset local.mainStruct = structNew("ordered")>
        <cfset local.decreaseWordCountNew = structNew("ordered")>
        <cfset local.decreaseTextLengthNew = structNew("ordered")>
        <cfset local.alphabetOrderNew = structNew("ordered")>
        <cfloop list="#text#" item="i" delimiters=" .">
            <cfif i.len() GT 2 AND NOT isNumeric(i)>
                <cfset local.count = local.count + 1>
                <cfset local.struct[i] = local.count>
            </cfif>
        </cfloop>
        <cfloop list="#text#" item="i" delimiters=" .">
            <cfset local.wordCount = 0>
            <cfif i.len() GT 2 AND NOT isNumeric(i)>
                <cfloop list="#text#" item="j" delimiters=" .">
                    <cfif i EQ j>
                        <cfset local.wordCount = local.wordCount + 1>
                    </cfif>
                </cfloop>
                <cfset local.decreaseWordCount[i] = local.wordCount>
            </cfif>
        </cfloop>
        <cfset local.decreaseWordCountArray = structSort(decreaseWordCount, "numeric", "desc")>
        <cfloop array="#decreaseWordCountArray#" item="item">
            <cfset local.decreaseWordCountNew[item] = local.decreaseWordCount[item]>
        </cfloop>
        <cfset local.letterCount = 0>
        <cfloop collection="#local.decreaseWordCount#" item="word">
            <cfset letterCount = word.len()>
            <cfset local.decreaseTextLength[word] = local.letterCount>
        </cfloop>
        <cfset local.decreaseTextLengthArray = structSort(decreaseTextLength, "numeric", "desc")>
        <cfloop array="#decreaseTextLengthArray#" item="item">
            <cfset local.decreaseTextLengthNew[item] = local.decreaseTextLength[item]>
        </cfloop>
        <cfset local.alphabetOrderArray = structSort(decreaseWordCount, "text", "desc")>
        <cfset arraySort(alphabetOrderArray, "textnocase")>
        <cfloop array="#local.alphabetOrderArray#" item="item">
            <cfset local.alphabetOrderNew[item] = local.decreaseWordCount[item]>
        </cfloop>
        <cfset local.mainStruct["decreasing order of the count of words"] = local.decreaseWordCountNew>
        <cfset local.mainStruct["decreasing order of length of the text"] = local.decreaseTextLengthNew>
        <cfset local.mainStruct[" alphabetical order"] = local.alphabetOrderNew>
        <cfreturn local.mainStruct>
    </cffunction>

    <cffunction  name="changeFont" returnType="struct">
        <cfset local.count = 0>
        <cfset local.decreaseWordCount = structNew("ordered")>
        <cfset local.decreaseWordCountNew = structNew("ordered")>
        <cfloop list="#text#" item="i" delimiters=" .">
            <cfset local.wordCount = 0>
            <cfif i.len() GT 2 AND NOT isNumeric(i)>
                <cfloop list="#text#" item="j" delimiters=" .">
                    <cfif i EQ j>
                        <cfset local.wordCount = local.wordCount + 1>
                    </cfif>
                </cfloop>
                <cfset local.decreaseWordCount[i] = local.wordCount>
            </cfif>
        </cfloop>
        <cfset local.decreaseWordCountArray = structSort(decreaseWordCount, "numeric", "desc")>
        <cfloop array="#local.decreaseWordCountArray#" item="item">
            <cfset local.decreaseWordCountNew[item] = local.decreaseWordCount[item]>
        </cfloop>
        <cfreturn local.decreaseWordCountNew>
    </cffunction>
</cfcomponent>
