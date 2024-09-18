import unittest
import time
import os
import json
from rdflib import Graph

import src.bioagents_rdfizer as bioagents_rdfizer

class UsersTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.connection = {
            'proxy': 'http://cache.ha.univ-nantes.fr:3128'
        }

    @unittest.skip('test_export_single_agent')
    def test_export_single_agent_from_file(self):
        graph = Graph()
        # bioagentsID = "signalp"
        # bioagentsID = "bwa"
        file_path = 'bwa.json'
        if os.path.exists(file_path):
            with open(file_path, 'r') as data_file:
                data_str = data_file.read()
            data = json.loads(data_str)
            #print(json.dumps(data, indent=4, sort_keys=True))
            jsonld = bioagents_rdfizer.rdfize(data)
            bioagents_rdfizer.import_to_graph(graph, jsonld)
            print(str(graph.serialize(format='turtle').decode('utf-8')))
            #print(bioagents_rdfizer.rdfize(data))

        #raw_jld = bioagents_rdfizer.get_agent_as_linked_data(bioagentsID, self.connection)
        #bioagents_rdfizer.import_to_graph(graph, raw_jld)
        #print(str(graph.serialize(format='turtle').decode('utf-8')))

        #self.assertGreaterEqual(len(graph), 12)

    # @unittest.skip('test_export_single_agent')
    def test_export_single_agent(self):
        graph = Graph()
        # bioagentsID = "signalp"
        bioagentsID = "stamp"
        # bioagentsID = "bwa"

        raw_jld = bioagents_rdfizer.get_agent_as_linked_data(bioagentsID, self.connection)
        bioagents_rdfizer.import_to_graph(graph, raw_jld)
        print(str(graph.serialize(format='turtle').decode('utf-8')))

        self.assertGreaterEqual(len(graph), 12)


    # @unittest.skip('test_export_multiple_agents')
    def test_export_multiple_agents(self):
        graph = Graph()
        bioagentsID = ["bwa", "copub", "signalp", "stringdb"]

        for id in bioagentsID:
            raw_jld = bioagents_rdfizer.get_agent_as_linked_data(id, self.connection)
            bioagents_rdfizer.import_to_graph(graph, raw_jld)
            print(str(graph.serialize(format='turtle').decode('utf-8')))

        self.assertGreaterEqual(len(graph), 39)

    @unittest.skip('test_bulk_export')
    def test_bulk_export(self):
        graph = Graph()
        # crawl_agents_as_linked_data(graph, self.connection, limit=100)
        bioagents_rdfizer.crawl_agents_as_linked_data(graph, self.connection, limit=10)
        graph.serialize(destination='unittest-bioagents-dump-' + time.strftime("%Y%m%d") + '.ttl', format='turtle', encoding='utf-8')

        self.assertGreaterEqual(len(graph), 100)
        self.assertTrue(os.path.isfile('unittest-bioagents-dump-' + time.strftime("%Y%m%d") + '.ttl'))