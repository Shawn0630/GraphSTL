#include "testdisconnectedgraph.h"
#include <iostream>
#include <vector>
#include <string>
#include <map>

DisconnectedGraphTest::DisconnectedGraphTest() {
    //not a strongly connected graph

};

DisconnectedGraphTest::~DisconnectedGraphTest(){};

void DisconnectedGraphTest::SetUp(){};

void DisconnectedGraphTest::TearDown(){};


TEST_F(DisconnectedGraphTest, directed_has_cycle)
{

    directed["node 1"] = 1;
    directed["node 2"] = 2;
    directed["node 3"] = 3;
    directed["node 4"] = 4;

    directed("node 1", "node 1") = 11;
    directed("node 2", "node 2") = 12;
    directed("node 3", "node 3") = 13;
    directed("node 4", "node 4") = 14;

    std::cout << directed << std::endl;

    EXPECT_EQ(directed.has_cycle(), true);
}

TEST_F(DisconnectedGraphTest, undirected_has_cycle)
{

    undirected["node 1"] = 1;
    undirected["node 2"] = 2;
    undirected["node 3"] = 3;
    undirected["node 4"] = 4;

    //undirected("node 1", "node 1") = 11;
    //undirected("node 2", "node 2") = 12;
    //undirected("node 3", "node 3") = 13;
    //undirected("node 4", "node 4") = 14;

    std::cout << undirected << std:: endl;

    EXPECT_EQ(undirected.has_cycle(), false);
}