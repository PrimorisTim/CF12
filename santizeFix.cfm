<cfset pathToPDF = "C:/ColdFusionRaijin/cfusion/wwwroot/CF12/sanitize/Paris.pdf">
<cfset pathToNewPDF = "C:/ColdFusionRaijin/cfusion/wwwroot/CF12/sanitize/champange.pdf">
<cfset exportPath = "C:/ColdFusionRaijin/cfusion/wwwroot/CF12/sanitize/exportedMeta.xmp">

<cfpdf action="sanitize" source="C:/ColdFusionRaijin/cfusion/wwwroot/CF12/sanitize/Paris.pdf" destination="C:/ColdFusionRaijin/cfusion/wwwroot/CF12/sanitize/champange.pdf"  overwrite=true>

<!--- One line of code to extra XMP Metadata --->
<cfpdf action="export" type="metadata" source="#pathToNewPDF#" exportto="#exportPath#" overwrite=true></cfpdf>



<!--- Extract images from this PDF --->
<cfpdf action="extractimage" source="#pathToPDF#"  overwrite="true">


<!--- dump to the browser --->
<cffile action="read" file="#exportPath#" variable="exportedMeta" >
<cfcontent type="application/xml" variable="#toBinary(toBase64(exportedMeta))#">


