<cfset sourcePDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\Adobe-ColdFusion-Raijin-Help_v2.pdf">
<cfset exportPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\CustomMeta\exported.xmp">
<cfset importPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\CustomMeta\CFSummit2015-Meta.xmp">
<cfset pathToNewPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\CFSummit2015.pdf">

<!--- One line to import new meta data --->
<cfpdf action="import" type="metadata" 
source="#sourcePDF#" importfrom="#importPath#"
 destination="#pathToNewPDF#" overwrite="true"/>



<!--- lets take a look at the new metadata from the generated PDF --->
<cfpdf action="export" type="metadata" source="#pathToNewPDF#" exportto="#exportPath#" overwrite=true></cfpdf>


<!--- dump to the browser --->
<cffile action="read" file="#exportPath#" variable="exportedMeta" >
<cfcontent type="application/xml" variable="#toBinary(toBase64(exportedMeta))#">
