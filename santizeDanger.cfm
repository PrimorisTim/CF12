<cfset pathToPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\sanitize\Man finds free Champagne in Paris.pdf">
<cfset exportPath = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\sanitize\exportedMeta.xmp">


<!--- One line of code to extra XMP Metadata --->
<cfpdf action="export" type="metadata" source="#pathToPDF#" exportto="#exportPath#" overwrite=true></cfpdf>

<!--- Extract images from this PDF --->
<cfpdf action="extractimage" source="#pathToPDF#"  overwrite="true">


<!--- dump to the browser --->
<cffile action="read" file="#exportPath#" variable="exportedMeta" >
<cfcontent type="application/xml" variable="#toBinary(toBase64(exportedMeta))#">


