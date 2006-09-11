<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:cml="http://www.xml-cml.org/schema"
        xmlns="http://www.w3.org/1999/xhtml"
	>

<!-- TOHW rewrite this tou just use str:tokenize -->

  <xsl:template match="cml:matrix">
    <xsl:param name="rows">
      <xsl:value-of select="@rows"/>
    </xsl:param>
    <xsl:param name="cols">
      <xsl:value-of select="@columns"/>
    </xsl:param>
    <xsl:variable name="dataString" select="concat(normalize-space(.),' ')"/>
    <table class="prop">
      <tr>
	<th colspan="{$cols}">
	  <xsl:call-template name="get.dictionary.reference.html">
            <xsl:with-param name="dictRef" select="@dictRef"/>
            <xsl:with-param name="value" select="@value"/>
          </xsl:call-template>
	  <xsl:text> (</xsl:text>
	  <xsl:value-of select="@units"/>
	  <xsl:text>) </xsl:text>
  	</th>
      </tr>

      <xsl:call-template name="rows-for-loop">
        <xsl:with-param name="i" select="1"/>
        <xsl:with-param name="increment" select="1"/>
        <xsl:with-param name="testValue" select="$rows"/>
        <xsl:with-param name="innerTestValue" select="$cols"/>
        <xsl:with-param name="outputString" select="$dataString"/>
      </xsl:call-template>
    </table>
  </xsl:template>


  <xsl:template name="rows-for-loop">
    <!--This template handles the rows of matrices-->
    <xsl:param name="i" select="0"/>
    <xsl:param name="increment" select="1"/>
    <xsl:param name="testValue"/>
    <xsl:param name="innerTestValue"/>
    <xsl:param name="outputString" select="''"/>
    <xsl:variable name="testPassed">
      <xsl:choose>
	<xsl:when test="$i &lt;= $testValue">
	  <xsl:text>true</xsl:text>
	</xsl:when>
	<xsl:otherwise>
	  <xsl:text>false</xsl:text>
	</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="continueString">
      <xsl:call-template name="modify-string-for-loop">
	<xsl:with-param name="i" select="1"/>
	<xsl:with-param name="string" select="$outputString"/>
	<xsl:with-param name="colsNumber" select="$innerTestValue"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:if test="$testPassed = 'true'">
      <tr>
	<xsl:call-template name="cols-for-loop">
	  <xsl:with-param name="i" select="1"/>
	  <xsl:with-param name="increment" select="1"/>
	  <xsl:with-param name="testValue" select="$innerTestValue"/>
	  <xsl:with-param name="outputString" select="$outputString"/>
	</xsl:call-template>
      </tr>

      <xsl:call-template name="rows-for-loop">
	<xsl:with-param name="i" select="$i + $increment"/>
	<xsl:with-param name="increment" select="$increment"/>
	<xsl:with-param name="testValue" select="$testValue"/>
	<xsl:with-param name="innerTestValue" select="$innerTestValue"/>
	<xsl:with-param name="outputString" select="$continueString"/>
      </xsl:call-template>
    </xsl:if>
    
  </xsl:template>

  <xsl:template name="cols-for-loop">
    <!-- This template handles the columns of the matrices -->
    <xsl:param name="i" select="0"/>
    <xsl:param name="increment" select="1"/>
    <xsl:param name="testValue"/>
    <xsl:param name="outputString" select="''"/>
    <xsl:variable name="testPassed">
      <xsl:choose>
	<xsl:when test="$i &lt;= $testValue">
	  <xsl:text>true</xsl:text>
	</xsl:when>
	<xsl:otherwise>
	  <xsl:text>false</xsl:text>
	</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:if test="$testPassed = 'true'">
      <td>
	<xsl:value-of select="format-number(substring-before($outputString, ' '), '0.0000')"/>
      </td>

      <xsl:call-template name="cols-for-loop">
	<xsl:with-param name="i" select="$i + $increment"/>
	<xsl:with-param name="increment" select="$increment"/>
	<xsl:with-param name="testValue" select="$testValue"/>
	<xsl:with-param name="outputString" select="substring-after($outputString, ' ')"/>
      </xsl:call-template>
    </xsl:if>
    
  </xsl:template>

  <xsl:template name="modify-string-for-loop">
    <!--
      This template modifies the string passed to it, to remove the parts
      which are removed as part of the inner for loop i.e. the rows-for-loop template
    -->
    <xsl:param name="i" select="1"/>
    <xsl:param name="string" select="''"/>
    <xsl:param name="colsNumber" select="0"/>
    <xsl:variable name="testPassed">
      <xsl:choose>
	<xsl:when test="$i &lt;= $colsNumber">
	  <xsl:text>true</xsl:text>
	</xsl:when>
	<xsl:otherwise>
	  <xsl:text>false</xsl:text>
	</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:if test="$testPassed = 'true'">
      <xsl:call-template name="modify-string-for-loop">
	<xsl:with-param name="i" select="$i + 1"/>
	<xsl:with-param name="colsNumber" select="$colsNumber"/>
	<xsl:with-param name="string" select="substring-after($string, ' ')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not($testPassed = 'true')">
      <xsl:value-of select="$string"/>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>
