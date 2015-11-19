<cfset sourcePDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\Man finds free Champagne in Paris.pdf">
<cfset exportPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\">
<cfset importPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\addNewComment.xfdf">
<cfset pathToNewPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\comments\notparis.pdf">




<!--- Import comment --->
<cfpdf action="import" type="comment" 
source="#sourcePDF#" importfrom="#importPath#" 
destination="#pathToNewPDF#" overwrite="true">
</cfpdf>

<a href="http://127.0.0.1:8500/CF12/comments/notparis.pdf">Open Notparis.pdf in acrobat</a>