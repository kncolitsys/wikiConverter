<!--- example taken from http://en.wikipedia.org/wiki/Help:Wikitext_examples --->

<cfset WikiConverter = createObject("component","WikiConverter").init() />
<Cfsavecontent variable="foo">
Leading spaces are another way
to preserve formatting.

 Putting a space at the
 beginning of each
 line stops the text   
 from being
 reformatted.  It still 
 interprets [[Wiki]]
 ''markup'' and special
 characters: &rarr;
</Cfsavecontent>
<cfset html = WikiConverter.WikiToHtml("http://localhost/${image}","http://localhost/${title}",foo) />
<cfoutput>#html#</cfoutput>
<cfoutput>#WikiConverter.HtmlToWiki(html)#</cfoutput>