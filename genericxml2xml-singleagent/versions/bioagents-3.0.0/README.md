# genericxml2xml-singleagent (for [bioagentsSchema 3.0.0](https://github.com/bio-agents/bioagentsSchema/tree/master/versions/bioagents-3.0.0))
Adapters for converting bio.agents "framework" XML (i.e. format supported out-of-the-box by the framework used by [bio.agents](https://bio.agents)) to [bioagentsSchema](https://github.com/bio-agents/bioagentsSchema/) XML.

This version works on an input file containing a single agent, which does not have the ```<list><list-item>``` elements immediately following the ```root``` element.

File | Description
---- | -----------
bioagents-3.0.0.xsd | bioagentsSchema XML Schema (1)
bioagents-3.0.0_framework_singleagent.xsd | XML Schema for framework XML (without the ```<list><list-item>``` elements)
framework_XML_to_bioagentsSchema_3.0.0_XML.html | Documentation for transform
framework_XML_to_bioagentsSchema_3.0.0_XML.mfd | Altova MapForce project file
framework_XML_to_bioagentsSchema_3.0.0_XML_xslt1.0.xslt | Transform in XSLT 1.0 
framework_XML_to_bioagentsSchema_3.0.0_XML_xslt2.0.xslt | Transform in XSLT 2.0 
DoTransformXSLT1.0.bat | Script for running XSLT 1.0 transform
DoTransformXSLT2.0.bat | Script for running XSLT 2.0 transform
input.xml | Example script input (2)
output.xml | Example script output

(1) identical to [bioagents-3.0.0.xsd](https://github.com/bio-agents/bioagentsSchema/blob/master/versions/bioagents-3.0.0/bioagents-3.0.0.xsd)

(2) same format as [bioagents-3.0.0.xml](https://github.com/bio-agents/bioagentsSchema/blob/master/versions/bioagents-3.0.0/example_files/bioagents-3.0.0.xml)