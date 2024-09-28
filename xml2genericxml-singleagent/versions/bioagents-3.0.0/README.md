# xml2genericxml-singleagent (for [bioagents schema 3.0.0](https://github.com/bio-agents/bioagents schema/tree/master/versions/bioagents-3.0.0))
Adapters for converting [bioagents schema](https://github.com/bio-agents/bioagents schema/) XML to bio.agents "framework" XML (i.e. format supported out-of-the-box by the framework used by [bio.agents](https://bio.agents).)

This version works on an input file containing a single agent, and generates an output file which does not have the ```<list><list-item>``` elements immediately following the ```root``` element.

File | Description
---- | -----------
bioagents-3.0.0.xsd | bioagents schema XML Schema (1)
bioagents-3.0.0_framework_singleagent.xsd | XML Schema for framework XML
bioagents schema_3.0.0_XML_to_framework_XML.html | Documentation for transform
bioagents schema_3.0.0_XML_to_framework_XML.mfd | Altova MapForce project file
bioagents schema_3.0.0_XML_to_framework_XML_xslt1.0.xslt | Transform in XSLT 1.0 
bioagents schema_3.0.0_XML_to_framework_XML_xslt2.0.xslt | Transform in XSLT 2.0 
DoTransformXSLT1.0.bat | Script for running XSLT 1.0 transform
DoTransformXSLT2.0.bat | Script for running XSLT 2.0 transform
input.xml | Example script input 
output.xml | Example script output (2)

(1) identical to [bioagents-3.0.0.xsd](https://github.com/bio-agents/bioagents schema/blob/master/versions/bioagents-3.0.0/bioagents-3.0.0.xsd)

(2) same format as [bioagents-3.0.0.xml](https://github.com/bio-agents/bioagents schema/blob/master/versions/bioagents-3.0.0/example_files/bioagents-3.0.0.xml)