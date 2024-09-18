# genericxml2xml-singleagent
Adapters for converting bio.agents "framework" XML (i.e. format supported out-of-the-box by the framework used by [bio.agents](https://bio.agents)) to [bioagentsSchema](https://github.com/bio-agents/bioagentsSchema/) XML.

This directory contains transforms that work on an input file containing a single agent, which does not have the ```<list><list-item>``` elements immediately following the ```root``` element.