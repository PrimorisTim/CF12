<cfset sourcePDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\Man finds free Champagne in Paris.pdf">
<cfset exportPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\">
<cfset importPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\addNewComment.xfdf">
<cfset pathToNewPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\notparis.pdf">



<!--- Export comment --->
<cfpdf action="export" type="comment" 
source="#sourcePDF#" exportto="#exportPath#exportedComments.xfdf" overwrite="true">
</cfpdf>

<cffile action="read" file="#exportPath#exportedComments.xfdf" variable="exportedComments" >
<cfcontent type="application/xml" variable="#toBinary(toBase64(exportedComments))#">

