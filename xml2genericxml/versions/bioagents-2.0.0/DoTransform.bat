@echo off

RaptorXML xslt --xslt-version=2 --input="input.xml" --output="bioagents-2.0.0_framework.xml" %* "MappingMapTobioagents-2_0_0_framework.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
