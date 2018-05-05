#include "testconstructor.h"

ConstructorTest::ConstructorTest(){};

ConstructorTest::~ConstructorTest(){};

void ConstructorTest::SetUp(){};

void ConstructorTest::TearDown(){};

TEST_F(ConstructorTest, EmptyGraph)
{
    Graph g1;
    Graph g2;
    EXPECT_EQ(g1.empty(), true);
    EXPECT_EQ(g2.empty(), true);
    EXPECT_EQ(g1.get_nature() != UNDIRECTED, true);
}