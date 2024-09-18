@echo off

RaptorXML xslt --xslt-version=2 --input="E:\repos\GitHub\bioagentsShim\xml2genericxml-singleagent\versions\bioagents-3.3.0\input.xml" --output="E:\repos\GitHub\bioagentsShim\xml2genericxml-singleagent\versions\bioagents-3.3.0\output.xml" --xml-validation-error-as-warning=true %* "MappingMapTobioagents-3_3_0_framework_singleagent.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
