<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2018r2sp1

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tbf="http://www.altova.com/MapForce/UDF/tbf" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="tbf xs">
	<xsl:template name="tbf:tbf1_">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::value">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::type">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::version">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf2_">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::uri">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::term">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf3_EDAMdata">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::uri">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::term">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf4_EDAMformat">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::uri">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::term">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf5_">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::uri">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::term">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf6_">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::url">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::type">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::note">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf7_">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::url">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::type">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::note">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::version">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf8_">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::url">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::type">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::note">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tbf:tbf9_">
		<xsl:param name="input" select="/.."/>
		<xsl:for-each select="$input/node()">
			<xsl:variable name="var1_current" select="."/>
			<xsl:choose>
				<xsl:when test="self::*">
					<xsl:if test="self::doi">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::pmid">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::pmcid">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::type">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
					<xsl:if test="self::version">
						<xsl:element name="{name(.)}" namespace="{namespace-uri(.)}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:when test="not(self::text())">
					<xsl:copy-of select="."/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="var1_initial" select="."/>
		<agents>
			<xsl:attribute name="xsi:noNamespaceSchemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance">file:///E:/repos/GitHub/bioagentsShim/genericxml2xml-singleagent/versions/bioagents-3.0.0/bioagents_3.0.0.xsd</xsl:attribute>
			<agent>
				<summary>
					<xsl:for-each select="root">
						<xsl:variable name="var2_cur" select="."/>
						<name>
							<xsl:value-of select="name"/>
						</name>
					</xsl:for-each>
					<xsl:for-each select="root">
						<xsl:variable name="var3_cur" select="."/>
						<description>
							<xsl:value-of select="description"/>
						</description>
					</xsl:for-each>
					<xsl:for-each select="root">
						<xsl:variable name="var4_cur" select="."/>
						<homepage>
							<xsl:value-of select="homepage"/>
						</homepage>
					</xsl:for-each>
					<xsl:for-each select="root/bioagentsID">
						<xsl:variable name="var5_cur" select="."/>
						<bioagentsID>
							<xsl:value-of select="."/>
						</bioagentsID>
					</xsl:for-each>
					<xsl:for-each select="root/bioagentsCURIE">
						<xsl:variable name="var6_cur" select="."/>
						<bioagentsCURIE>
							<xsl:value-of select="."/>
						</bioagentsCURIE>
					</xsl:for-each>
					<xsl:for-each select="root/version/list-item">
						<xsl:variable name="var7_cur" select="."/>
						<version>
							<xsl:value-of select="."/>
						</version>
					</xsl:for-each>
					<xsl:for-each select="root/otherID/list-item">
						<xsl:variable name="var8_cur" select="."/>
						<otherID>
							<xsl:call-template name="tbf:tbf1_">
								<xsl:with-param name="input" select="."/>
							</xsl:call-template>
						</otherID>
					</xsl:for-each>
				</summary>
				<xsl:for-each select="root/function/list-item">
					<xsl:variable name="var9_cur" select="."/>
					<function>
						<xsl:for-each select="operation/list-item">
							<xsl:variable name="var10_cur" select="."/>
							<operation>
								<xsl:call-template name="tbf:tbf2_">
									<xsl:with-param name="input" select="."/>
								</xsl:call-template>
							</operation>
						</xsl:for-each>
						<xsl:for-each select="input/list-item">
							<xsl:variable name="var11_cur" select="."/>
							<input>
								<data>
									<xsl:call-template name="tbf:tbf3_EDAMdata">
										<xsl:with-param name="input" select="data"/>
									</xsl:call-template>
								</data>
								<xsl:for-each select="format/list-item">
									<xsl:variable name="var12_cur" select="."/>
									<format>
										<xsl:call-template name="tbf:tbf4_EDAMformat">
											<xsl:with-param name="input" select="."/>
										</xsl:call-template>
									</format>
								</xsl:for-each>
							</input>
						</xsl:for-each>
						<xsl:for-each select="output/list-item">
							<xsl:variable name="var13_cur" select="."/>
							<output>
								<data>
									<xsl:call-template name="tbf:tbf3_EDAMdata">
										<xsl:with-param name="input" select="data"/>
									</xsl:call-template>
								</data>
								<xsl:for-each select="format/list-item">
									<xsl:variable name="var14_cur" select="."/>
									<format>
										<xsl:call-template name="tbf:tbf4_EDAMformat">
											<xsl:with-param name="input" select="."/>
										</xsl:call-template>
									</format>
								</xsl:for-each>
							</output>
						</xsl:for-each>
						<xsl:for-each select="note">
							<xsl:variable name="var15_cur" select="."/>
							<note>
								<xsl:value-of select="."/>
							</note>
						</xsl:for-each>
						<xsl:for-each select="cmd">
							<xsl:variable name="var16_cur" select="."/>
							<cmd>
								<xsl:value-of select="."/>
							</cmd>
						</xsl:for-each>
					</function>
				</xsl:for-each>
				<labels>
					<xsl:for-each select="root/agentType/list-item">
						<xsl:variable name="var17_cur" select="."/>
						<agentType>
							<xsl:value-of select="."/>
						</agentType>
					</xsl:for-each>
					<xsl:for-each select="root/topic/list-item">
						<xsl:variable name="var18_cur" select="."/>
						<topic>
							<xsl:call-template name="tbf:tbf5_">
								<xsl:with-param name="input" select="."/>
							</xsl:call-template>
						</topic>
					</xsl:for-each>
					<xsl:for-each select="root/operatingSystem/list-item">
						<xsl:variable name="var19_cur" select="."/>
						<operatingSystem>
							<xsl:value-of select="."/>
						</operatingSystem>
					</xsl:for-each>
					<xsl:for-each select="root/language/list-item">
						<xsl:variable name="var20_cur" select="."/>
						<language>
							<xsl:value-of select="."/>
						</language>
					</xsl:for-each>
					<xsl:for-each select="root/license">
						<xsl:variable name="var21_cur" select="."/>
						<license>
							<xsl:value-of select="."/>
						</license>
					</xsl:for-each>
					<xsl:for-each select="root/collectionID/list-item">
						<xsl:variable name="var22_cur" select="."/>
						<collectionID>
							<xsl:value-of select="."/>
						</collectionID>
					</xsl:for-each>
					<xsl:for-each select="root/maturity">
						<xsl:variable name="var23_cur" select="."/>
						<maturity>
							<xsl:value-of select="."/>
						</maturity>
					</xsl:for-each>
					<xsl:for-each select="root/cost">
						<xsl:variable name="var24_cur" select="."/>
						<cost>
							<xsl:value-of select="."/>
						</cost>
					</xsl:for-each>
					<xsl:for-each select="root/accessibility/list-item">
						<xsl:variable name="var25_cur" select="."/>
						<accessibility>
							<xsl:value-of select="."/>
						</accessibility>
					</xsl:for-each>
					<xsl:for-each select="root/iechorPlatform/list-item">
						<xsl:variable name="var26_cur" select="."/>
						<iechorPlatform>
							<xsl:value-of select="."/>
						</iechorPlatform>
					</xsl:for-each>
					<xsl:for-each select="root/iechorNode/list-item">
						<xsl:variable name="var27_cur" select="."/>
						<iechorNode>
							<xsl:value-of select="."/>
						</iechorNode>
					</xsl:for-each>
				</labels>
				<xsl:for-each select="root/link/list-item">
					<xsl:variable name="var28_cur" select="."/>
					<link>
						<xsl:call-template name="tbf:tbf6_">
							<xsl:with-param name="input" select="."/>
						</xsl:call-template>
					</link>
				</xsl:for-each>
				<xsl:for-each select="root/download/list-item">
					<xsl:variable name="var29_cur" select="."/>
					<download>
						<xsl:call-template name="tbf:tbf7_">
							<xsl:with-param name="input" select="."/>
						</xsl:call-template>
					</download>
				</xsl:for-each>
				<xsl:for-each select="root/documentation/list-item">
					<xsl:variable name="var30_cur" select="."/>
					<documentation>
						<xsl:call-template name="tbf:tbf8_">
							<xsl:with-param name="input" select="."/>
						</xsl:call-template>
					</documentation>
				</xsl:for-each>
				<xsl:for-each select="root/publication/list-item">
					<xsl:variable name="var31_cur" select="."/>
					<publication>
						<xsl:call-template name="tbf:tbf9_">
							<xsl:with-param name="input" select="."/>
						</xsl:call-template>
					</publication>
				</xsl:for-each>
				<xsl:for-each select="root/credit/list-item">
					<xsl:variable name="var32_cur" select="."/>
					<credit>
						<xsl:for-each select="name">
							<xsl:variable name="var33_cur" select="."/>
							<name>
								<xsl:value-of select="."/>
							</name>
						</xsl:for-each>
						<xsl:for-each select="email">
							<xsl:variable name="var34_cur" select="."/>
							<email>
								<xsl:value-of select="."/>
							</email>
						</xsl:for-each>
						<xsl:for-each select="url">
							<xsl:variable name="var35_cur" select="."/>
							<url>
								<xsl:value-of select="."/>
							</url>
						</xsl:for-each>
						<xsl:for-each select="orcidid">
							<xsl:variable name="var36_cur" select="."/>
							<orcidid>
								<xsl:value-of select="."/>
							</orcidid>
						</xsl:for-each>
						<xsl:for-each select="typeEntity">
							<xsl:variable name="var37_cur" select="."/>
							<typeEntity>
								<xsl:value-of select="."/>
							</typeEntity>
						</xsl:for-each>
						<xsl:for-each select="typeRole/list-item">
							<xsl:variable name="var38_cur" select="."/>
							<typeRole>
								<xsl:value-of select="."/>
							</typeRole>
						</xsl:for-each>
						<xsl:for-each select="note">
							<xsl:variable name="var39_cur" select="."/>
							<note>
								<xsl:value-of select="."/>
							</note>
						</xsl:for-each>
					</credit>
				</xsl:for-each>
			</agent>
		</agents>
	</xsl:template>
</xsl:stylesheet>
