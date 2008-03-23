<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:opf="http://www.idpf.org/2007/opf"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0">

    <xsl:output method="xml" encoding="utf-8" omit-xml-declaration="no" indent="yes"/>

    <xsl:template match="tei:TEI">
      <opf:package unique-identifier="bookid" version="2.0">
        <opf:metadata>
          <dc:metadata>
            <dc:title><xsl:apply-templates select="//tei:titleStmt/tei:title" /></dc:title>
            <dc:creator>threepress</dc:creator>
            <dc:language xsi:type="dcterms:RFC3066">en-US</dc:language> 
            <dc:rights>Public Domain</dc:rights>
            <dc:publisher>threepress.org</dc:publisher>
            <dc:identifier id="bookid">urn:uuid:<xsl:value-of select="/xml:id"/></dc:identifier>
          </dc:metadata>
        </opf:metadata>
        <opf:manifest>
          <opf:item id="ncx" href="toc.ncx" media-type="text/xml"/>
          <opf:item id="style" href="stylesheet.css" media-type="text/css"/>
          <opf:item id="pagetemplate" href="page-template.xpgt" media-type="application/vnd.adobe-page-template+xml"/>
          <opf:item id="titlepage" href="title_page.html" media-type="text/html"/>
          <opf:item id="chapter01" href="chap01.html" media-type="text/html"/>
          <opf:item id="chapter02" href="chap02.html" media-type="text/html"/>
          <!--
          <item id="imgl" href="images/sample.jpg" media-type="image/jpeg"/>          
          -->
        </opf:manifest>
        <opf:spine toc="ncx">
          <!--
          <itemref idref="titlepage"/>
          <itemref idref="chapter01"/>
          <itemref idref="chapter02"/>
          -->
        </opf:spine>
      </opf:package>


    </xsl:template>

</xsl:stylesheet>