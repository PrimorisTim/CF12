<cfset pathToPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\attach\Man finds free Champagne in Paris.pdf">
<cfset pathToNewPDF = "C:\ColdFusionRaijin\cfusion\wwwroot\CF12\stamp2\stamped copy.pdf">

<cfpdf action="addStamp" source="#pathToPDF#" destination="#pathToNewPDF#" overwrite=true>
<cfpdfparam pages="1" coordinate = "397,532,519,564"/> </cfpdf>

<a href="http://127.0.0.1:8500/CF12/stamp/stamped%20copy.pdf">View Stamped Copy</a>

