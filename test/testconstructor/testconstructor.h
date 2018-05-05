#include "gtest/gtest.h"

#if defined(TEST_SINGLE_HEADER_FILE)
    #include "graph.hpp"
#else
    #include "model/Graph.h"
#endif

#include <iostream>

// The fixture for testing class Foo.
class ConstructorTest : public ::testing::Test
{
  protected:
    // You can do set-up work for each test here.
    ConstructorTest();

    // You can do clean-up work that doesn't throw exceptions here.
    virtual ~ConstructorTest();

    // If the constructor and destructor are not enough for setting up
    // and cleaning up each test, you can define the following methods:

    // Code here will be called immediately after the constructor (right
    // before each test).
    virtual void SetUp();

    // Code here will be called immediately after each test (right
    // before the destructor).
    virtual void TearDown();

    // The Graph type shaed by all tests
    using Graph = graph<std::string, int>;
    using Graph_directed = graph_directed<std::string, int>;
    using Graph_undirected = graph_undirected<std::string, int>;
};