@echo off

RaptorXML xslt --xslt-version=2 --input="input.xml" --output="output.xml" %* "bioagentsSchema_3.0.0_XML_to_framework_XML_xslt2.0.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
