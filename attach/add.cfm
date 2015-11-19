<cfset pathToPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\attach\Man finds free Champagne in Paris.pdf">
<cfset fileToAttach = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\attach\gotcha.png">
<cfset pathToNewPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\attach\Man lies about location.pdf">


<cfpdf action="addAttachments" source="#pathToPDF#" 
destination="#pathToNewPDF#" overwrite="true">
<cfpdfparam source="#fileToAttach#" filename="gotcha.png"
description="Dude you are so lieing" encoding="UTF-8" />
</cfpdf>


<a href="http://127.0.0.1:8500/CF12/attach/Man%20lies%20about%20location.pdf">Man Lies about location.pdf</a> generated. View in Reader or Acrobat.
