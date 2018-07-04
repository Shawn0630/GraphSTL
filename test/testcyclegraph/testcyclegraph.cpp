#include "testcyclegraph.h"
#include <iostream>
#include <vector>
#include <string>
#include <map>

CycleGraphTest::CycleGraphTest() {
    //not a strongly connected graph
};

CycleGraphTest::~CycleGraphTest(){};

void CycleGraphTest::SetUp(){};

void CycleGraphTest::TearDown(){};

TEST_F(CycleGraphTest, undirect_has_cycle) {
    undirect["node 1"] = 1;
    undirect["node 2"] = 2;
    undirect["node 3"] = 3;
    undirect["node 4"] = 4;
    undirect("node 1", "node 2") = 11;
    undirect("node 2", "node 3") = 12;
    undirect("node 3", "node 1") = 13;
    undirect("node 4", "node 3") = 14;
    undirect("node 1", "node 4") = 15;

    std::cout << undirect << std::endl;

    EXPECT_EQ(undirect.has_cycle(), true);
}

TEST_F(CycleGraphTest, direct_has_cycle) {
    direct["node 1"] = 1;
    direct["node 2"] = 2;
    direct["node 3"] = 3;
    direct["node 4"] = 4;
    direct("node 1", "node 2") = 11;
    direct("node 1", "node 1") = 12;
    direct("node 3", "node 1") = 13;
    direct("node 2", "node 3") = 14;
    direct("node 5", "node 2") = 15;

    std::cout << direct << std:: endl;

    EXPECT_EQ(direct.has_cycle(), true);
}