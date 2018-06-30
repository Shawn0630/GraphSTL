#include "testcyclegraph.h"
#include <iostream>
#include <vector>
#include <string>
#include <map>

CycleGraphTest::CycleGraphTest() {
    //not a strongly connected graph
    direct["node 1"] = 1;
    direct["node 2"] = 2;
    direct["node 3"] = 3;
    direct["node 4"] = 4;
    direct("node 1", "node 2") = 11;
    direct("node 1", "node 1") = 12;
    direct("node 3", "node 1") = 13;
    direct("node 2", "node 3") = 14;
    direct("node 5", "node 2") = 15;


    undirect["node 1"] = 1;
    undirect["node 2"] = 2;
    undirect["node 3"] = 3;
    undirect["node 4"] = 4;
    undirect("node 1", "node 2") = 11;
    undirect("node 2", "node 3") = 12;
    undirect("node 3", "node 1") = 13;
    undirect("node 4", "node 3") = 14;
    undirect("node 1", "node 4") = 15;
};

CycleGraphTest::~CycleGraphTest(){};

void CycleGraphTest::SetUp(){};

void CycleGraphTest::TearDown(){};

TEST_F(CycleGraphTest,  textGraph) {
    std::cout << direct << std::endl;

    std::cout << undirect << std::endl;
}

TEST_F(CycleGraphTest, getSccs) {
    std::multimap<std::string, std::string> directed_sccs = direct.get_sccs();
    for (std::multimap<std::string, std::string>::iterator it = directed_sccs.begin(); it != directed_sccs.end(); it++) {
        std::cout << (*it).first << " " << (*it).second << std::endl;
    }

    std::cout << std::endl;

    std::multimap<std::string, std::string> undirected_sccs = undirect.get_sccs();
    for (std::multimap<std::string, std::string>::iterator it = undirected_sccs.begin(); it != undirected_sccs.end(); it++) {
        std::cout << (*it).first << " " << (*it).second << std::endl;
    }
}

TEST_F(CycleGraphTest, is_cyclic)
{
    EXPECT_EQ(direct.is_cyclic(), true);
    EXPECT_EQ(undirect.is_cyclic(), true);
}