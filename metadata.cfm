<cfset pathToPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\Adobe-ColdFusion-Raijin-Help_v2.pdf">
<cfset exportPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\exportedMeta.xmp">


<!--- One line of code to extra XMP Metadata --->
<cfpdf action="export" type="metadata" source="#pathToPDF#" exportto="#exportPath#" overwrite=true></cfpdf>




<!--- dump to the browser --->
<cffile action="read" file="#exportPath#" variable="exportedMeta" >
<cfcontent type="application/xml" variable="#toBinary(toBase64(exportedMeta))#">
