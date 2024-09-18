# xml2genericxml-singleagent
Adapters for converting [bioagentsSchema](https://github.com/bio-agents/bioagentsSchema/) XML to bio.agents "framework" XML (i.e. format supported out-of-the-box by the framework used by [bio.agents](https://bio.agents).)

This directory contains transforms that work on an input file containing a single agent, and generates an output file which does not have the ```<list><list-item>``` elements immediately following the ```root``` element.