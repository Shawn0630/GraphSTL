#include "testcyclegraph.h"
#include <iostream>

CycleGraphTest::CycleGraphTest() {
    g["node 1"] = 1;
    g["node 2"] = 2;
    g["node 3"] = 3;
    g["node 4"] = 4;
    g("node 1", "node 2") = 11;
    g("node 1", "node 1") = 12;
    g("node 1", "node 3") = 13;
    g("node 2", "node 3") = 14;
    g("node 5", "node 2") = 15;
};

CycleGraphTest::~CycleGraphTest(){};

void CycleGraphTest::SetUp(){};

void CycleGraphTest::TearDown(){};

TEST_F(CycleGraphTest, hasCycle)
{
    std::cout << g << std::endl;
}