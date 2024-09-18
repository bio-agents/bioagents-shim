#!/bin/python3

import re
import sys
import csv
import pprint
import xml.etree.ElementTree as et
from xml.dom import minidom


# A manual map of name->agentID
HAND_CONVERSIONS = {'Generic GO Term Mapper': 'GOTermMap',
                    'Generic GO Term Finder': 'GOTermFind',
                    'DISCOVAR de novo': 'DISCOVARnovo'
                   }

SEPERATOR = '|'

agents = []

def read_cvsfile(filename):
    ret = []
    with open(filename, mode='r') as infile:
        reader = csv.reader(infile)

        keys = next(reader)

        for row in reader:
            agent = dict(zip(keys,row))
            ret.append(agent)
    return ret

def make_agentID(name):
    # There is a bunch af rules to this conversion...
    # See: https://github.com/bio-agents/bioagentsSchema/blob/master/versions/bioagents-2.0.0/bioagents-2.0.0.xsd
    # Search for agentID and bioagentsIdType

    # We have a list on hand-converted name->agentID. These take precedence
    if name in HAND_CONVERSIONS:
        return HAND_CONVERSIONS[name]

    # Replace space with _
    agentID = name.replace(' ','_')

    # Limit the alpabeth
    agentID = re.compile('[^A-Za-z0-9_\-_~.]').sub('',agentID)
    return agentID[0:12]


def construct_summary(agent):
    summary = et.Element('summary')

    name = et.Element('name')
    name.text = agent['name']

    agentID = et.Element('agentID')
    agentID.text = make_agentID(agent['name'])

    description = et.Element('description')
    description.text = agent['description']

    homepage = et.Element('homepage')
    homepage.text = agent['homepage']

    # Append in the right order
    summary.append(name)
    summary.append(agentID)
    summary.append(description)
    summary.append(homepage)

    return summary

def construct_functions(agent):
    func_elements = []

    func_list = agent['function']
    if isinstance(func_list, str):
        func_list = [func_list]
        
    for func in func_list:
        term_val,uri_val = re.sub(r"\[([^\[]*)]","\nhttp://edamontology.org/\g<1>",func).split('\n')

        uri = et.Element('uri')
        uri.text = uri_val

        term = et.Element('term')
        term.text = term_val


        operation  = et.Element('operation')
        operation.extend((uri,term))

        function  = et.Element('function')
        function.append(operation)
        func_elements.append(function)

    return func_elements

def construct_agentTypes(agent):
    elements = []

    thing = agent['agentType']
    if isinstance(thing, str):
        thing = [thing]
        
    for item in thing:
        agentType  = et.Element('agentType')
        agentType.text = item
        elements.append(agentType)

    return elements
    

def construct_topics(agent):
    elements = []

    top_list = agent['topic']
    if isinstance(top_list, str):
        top_list = [top_list]
        
    for item in top_list:
        term_val,uri_val = re.sub(r"\[([^\[]*)]","\nhttp://edamontology.org/\g<1>",item).split('\n')

        uri = et.Element('uri')
        uri.text = uri_val

        term = et.Element('term')
        term.text = term_val

        topic  = et.Element('topic')
        topic.extend((uri,term))
        elements.append(topic)

    return elements

def construct_label(agent):
    label = et.Element('label')
    label.extend(construct_agentTypes(agent))

    label.extend(construct_topics(agent))

    collectionID = et.Element('collectionID')
    collectionID.text = agent['collectionID']

    label.append(collectionID)

    return label

def construct_publications(agent):
    elements = []

    thing = agent['publication']
    if isinstance(thing, str):
        thing = [thing]
        
    for item in thing:
        doi = et.Element('doi')
        doi.text = item

        publication  = et.Element('publication')
        publication.append(doi)
        elements.append(publication)

    return elements

def construct_contact(agent):
    contact = et.Element('contact')
    if 'http' in agent['contact']:
        url = et.Element('url')
        url.text = agent['contact']
        contact.append(url)
    elif '@' in agent['contact']:
        email = et.Element('email')
        email.text = agent['contact']
        contact.append(email)
    return contact

if __name__ == "__main__":
    assert len(sys.argv) == 2, 'missing filename or something...'

    agents = read_cvsfile(sys.argv[1])
    
    root = et.Element('root')
    root.set('xmlns:xsi',"http://www.w3.org/2001/XMLSchema-instance")
    root.set('xsi:schemaLocation',"http://bio.agents bioagents-2.0.0.xsd")
    for t in agents:

        # Convert all multi-value cells into python list-of-strings
        for k,v in t.items():
            if SEPERATOR in v:
                t[k] = v.split(SEPERATOR)

        agent = et.Element('agent')
        agent.append(construct_summary(t))
        agent.extend(construct_functions(t))
        agent.append(construct_label(t))
        agent.extend(construct_publications(t))
        agent.append(construct_contact(t))

        root.append(agent)

    printer = pprint.PrettyPrinter(width=80)
    dom = minidom.parseString(et.tostring(root,encoding="unicode"))


    #printer.pprint(agents)
    print(dom.toprettyxml())
