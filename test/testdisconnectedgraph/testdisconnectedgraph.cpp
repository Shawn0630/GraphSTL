#include "testdisconnectedgraph.h"
#include <iostream>
#include <vector>
#include <string>
#include <map>

DisconnectedGraphTest::DisconnectedGraphTest() {
    //not a strongly connected graph
    directed["node 1"] = 1;
    directed["node 2"] = 2;
    directed["node 3"] = 3;
    directed["node 4"] = 4;

    directed("node 1", "node 1") = 11;
    directed("node 2", "node 2") = 12;
    directed("node 3", "node 3") = 13;
    directed("node 4", "node 4") = 14;

    undirected["node 1"] = 1;
    undirected["node 2"] = 2;
    undirected["node 3"] = 3;
    undirected["node 4"] = 4;

    undirected("node 1", "node 1") = 11;
    undirected("node 2", "node 2") = 12;
    undirected("node 3", "node 3") = 13;
    undirected("node 4", "node 4") = 14;
};

DisconnectedGraphTest::~DisconnectedGraphTest(){};

void DisconnectedGraphTest::SetUp(){};

void DisconnectedGraphTest::TearDown(){};

TEST_F(DisconnectedGraphTest,  textGraph) {
    std::cout << directed << std::endl;
    std::cout << undirected << std:: endl;
}

TEST_F(DisconnectedGraphTest, getSccs) {
    std::multimap<std::string, std::string> directed_sccs = directed.get_sccs();
    for (std::multimap<std::string, std::string>::iterator it = directed_sccs.begin(); it != directed_sccs.end(); it++) {
        std::cout << (*it).first << " " << (*it).second << std::endl;
    }

    std::cout << std::endl;

    std::multimap<std::string, std::string> undirected_sccs = undirected.get_sccs();
    for (std::multimap<std::string, std::string>::iterator it = undirected_sccs.begin(); it != undirected_sccs.end(); it++) {
        std::cout << (*it).first << " " << (*it).second << std::endl;
    }
}

TEST_F(DisconnectedGraphTest, is_cyclic)
{

    EXPECT_EQ(directed.is_cyclic(), true);
    EXPECT_EQ(undirected.is_cyclic(), true);
}