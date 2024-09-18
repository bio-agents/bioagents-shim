@echo off

RaptorXML xslt --xslt-version=2 --input="E:\repos\GitHub\bioagentsShim\genericxml2xml-singleagent\versions\bioagents-3.3.0\input.xml" --output="E:\repos\GitHub\bioagentsShim\genericxml2xml-singleagent\versions\bioagents-3.3.0\output.xml" --xml-validation-error-as-warning=true %* "MappingMapTobioagents_3_3_0.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
