#include "testconstructor.h"
#include <iostream>
using namespace std;

struct cost
{
    explicit cost(double n) : number(n) {}
    double number;
    bool operator<(const cost &other) const
    {
        return number < other.number;
    }
};
namespace std
{
template <>
struct numeric_limits<cost>
{
    static constexpr bool is_specialized = true;
    static bool has_infinity()
    {
        return true;
    }
    static cost infinity()
    {
        return cost(std::numeric_limits<double>::infinity());
    }
    static cost max()
    {
        return cost(std::numeric_limits<double>::max());
    }
};
}

ConstructorTest::ConstructorTest(){};

ConstructorTest::~ConstructorTest(){};

void ConstructorTest::SetUp(){};

void ConstructorTest::TearDown(){};

TEST_F(ConstructorTest, EmptyGraph){
    Graph g1;
    Graph g2;
    EXPECT_EQ(g1.empty(), true);
    EXPECT_EQ(g2.empty(), true);
    EXPECT_EQ(g1.get_nature() == UNDIRECTED, true);
}

TEST_F(ConstructorTest, DirectedGraph) {
    Graph_directed g;
    EXPECT_EQ(g.get_nature() == DIRECTED, true);
}

TEST_F(ConstructorTest, UnDirectedGraph) {
    Graph_undirected g;
    EXPECT_EQ(g.get_nature() == UNDIRECTED, true);
}

TEST_F(ConstructorTest, DefaultGraph) {
    graph<string, int, size_t> g;
    g["node 1"] = 1;
    g["node 2"] = 2;
    g.add_edge("node 1", "node 2", 4);
    //g("node 1", "node 2") = 4;
    EXPECT_EQ(g.existing_edge("node 1", "node 2"), true);
}

TEST_F(ConstructorTest, BoolGraph) {
    graph_directed<bool, bool, bool> g;
    g[true] = true;
    g[false] = false;
    g(true, false) = true;
    EXPECT_EQ(g.existing_edge(true, false), true);

    EXPECT_EQ(g(false, true) == numeric_limits<bool>::max(), true);
}

TEST_F(ConstructorTest, IntGraph) {
    graph<int, int, int> g;
    g[1] = 11;
    g[2] = 22;
    g(1, 2) = 4;
    EXPECT_EQ(g.existing_edge(1, 2), true);

    EXPECT_EQ(g(1, 3) == numeric_limits<int>::max(), true);
}

TEST_F(ConstructorTest, DoubleGraph) {
    graph<double, double, double> g;
    g[1.0] = 11.0;
    g[2.0] = 22.0;
    g(1.0, 2.0) = 4.0;
    EXPECT_EQ(g.existing_edge(1.0, 2.0), true);

    EXPECT_EQ(g(1.0, 5.0) == numeric_limits<double>::infinity(), true);
}

TEST_F(ConstructorTest, FloatGraph) {
    graph<float, float, float> g;
    g[1.0] = 11.0;
    g[2.0] = 22.0;
    g(1.0, 2.0) = 4.0;
    EXPECT_EQ(g.existing_edge(1.0, 2.0), true);

    EXPECT_EQ(g(1.0, 5.0) == numeric_limits<float>::infinity(), true);
}

TEST_F(ConstructorTest, CharGraph) {
    graph<char, char, char> g;
    g['a'] = 'A';
    g['b'] = 'B';
    g('a', 'b') = 'c';
    EXPECT_EQ(g.existing_edge('a', 'b'), true);

    EXPECT_EQ(g('a', 'e') == numeric_limits<char>::max(), true);
}

TEST_F(ConstructorTest, StringGraph) {
    graph<string, string, string> g;
    g["node 1"] = "1st node";
    g["node 2"] = "2nd node";
    g("node 1", "node 2") = "cost of 4";
    EXPECT_EQ(g.existing_edge("node 1", "node 2"), true);

    EXPECT_EQ(g("node 1", "new node") == numeric_limits<string>::infinity(), true);
}

TEST_F(ConstructorTest, EnumGraph) {
    enum key
    {
        node_1,
        node_2
    };
    enum t
    {
        data_1,
        data_2
    };
    enum cost
    {
        cost_1
    };

    graph<key, t, cost> g;
    g[node_1] = data_1;
    g[node_2] = data_2;
    g(node_1, node_2) = cost_1;
    EXPECT_EQ(g.existing_edge(node_1, node_2), true);
}

TEST_F(ConstructorTest, StructGraph) {
    struct key
    {
        explicit key(const string &n, int v) : name(n), value(v) {}
        string name;
        int value;
        bool operator<(const key &other) const
        {
            return tie(name, value) < tie(other.name, other.value);
        }
    };
    struct t
    {
        explicit t(float d = 0.0) : data(d) {}
        float data;
        bool operator<(const t &other) const
        {
            return data < other.data;
        }
    };
    graph<key, t, cost> g;
    key k1("node 1", 1);
    key k2 = key("node 2", 2);
    g.add_node(k1, t(11.11));
    g[k2] = t(22.22);
    g(k1, k2) = cost(444.444);
    EXPECT_EQ(g.existing_edge(k1, k2), true);
}


TEST_F(ConstructorTest, IstreamConstructorTest) {
    using Graph = graph<string, int, int>;
    Graph initial;
    initial("node 1", "node 2") = 12;
    initial("node 2", "node 1") = 21;
    initial("node 2", "node 3") = 23;

    stringstream ss;
    ss << initial;
    Graph final(ss);

    EXPECT_EQ(initial, final);
}

TEST_F(ConstructorTest, CopyConstructor_NullGraph) {
    Graph g1;
    Graph g2(g1);
    EXPECT_EQ(g1, g2);
}

TEST_F(ConstructorTest, CopyConstructor_NodeOnlyGraph) {
    Graph initial;
    for (int i{0}; i < 100; ++i)
    {
        initial["node " + to_string(i)] = i;
    }

    Graph final = initial;
    EXPECT_EQ(initial, final);

    final["node 55"] = 555;
    EXPECT_EQ(initial != final, true);
    EXPECT_EQ(initial.size(), final.size());

    final["node 666"] = 6;
    EXPECT_EQ(initial.size() + 1, final.size());
}

TEST_F(ConstructorTest, CopyConstructor_DirectedCompleteGraph) {
    Graph_directed initial;
    for (int i{0}; i < 100; ++i)
    {
        initial["node " + to_string(i)] = i;
    }

    for (int i{0}; i < 99; i += 3)
    {
        initial("node " + to_string(i), "node " + to_string(i + 1)) = 20 * i;
    }
    for (int i{0}; i < 98; i += 3)
    {
        initial("node " + to_string(i + 2), "node " + to_string(i + 1)) = 40 * i;
    }

    Graph_directed final(initial);
    EXPECT_EQ(initial, final);

    final("node 1", "node 3") = 42;
    EXPECT_EQ(initial != final, true);
    EXPECT_EQ(initial.get_nbr_edges() + 1, final.get_nbr_edges());

    EXPECT_EQ(initial.existing_edge("node 1", "node 3"), false);
    EXPECT_EQ(final.existing_edge("node 1", "node 3"), true);
    EXPECT_EQ(final.existing_edge("node 3", "node 1"), false);
}

TEST_F(ConstructorTest, CopyConstructor_UndirectedCompleteGraph){
    Graph_undirected initial;
    for (int i{0}; i < 3; ++i)
    {
        initial["node " + to_string(i)] = i;
    }
    for (int i{0}; i < 3; i += 3)
    {
        initial("node " + to_string(i), "node " + to_string(i + 1)) = 20 * i;
    }
    for (int i{0}; i < 3; i += 3)
    {
        initial("node " + to_string(i + 2), "node " + to_string(i + 1)) = 40 * i;
    }

    Graph_undirected final(initial);
    EXPECT_EQ(initial, final);

    final("node 1", "node 3") = 42;
    EXPECT_EQ(initial != final, true);
    EXPECT_EQ(initial.get_nbr_edges() + 1, final.get_nbr_edges());

    EXPECT_EQ(initial.existing_edge("node 1", "node 3"), false);
    EXPECT_EQ(final.existing_edge("node 1", "node 3"), true);
    EXPECT_EQ(final.existing_edge("node 3", "node 1"), true);
}

TEST_F(ConstructorTest, MoveConstructor) {
    Graph_directed initial;
    for (int i{0}; i < 100; ++i)
    {
        initial["node " + to_string(i)] = i;
    }

    for (int i{0}; i < 99; i += 3)
    {
        initial("node " + to_string(i), "node " + to_string(i + 1)) = 20 * i;
    }

    Graph_directed final(move(initial));
    EXPECT_EQ(initial != final, true);
    EXPECT_EQ(initial.empty(), true);
    EXPECT_EQ(final.size(), 100);

    EXPECT_ANY_THROW(final = move(final));

    try {
        final = move(final);
        FAIL() << "Expected invalid_argument error";
    } catch(const detail::invalid_argument& expected) {
        EXPECT_EQ(expected.what(), "[graph.exception.invalid_argument] Self-reference in the client part when calling 'operator='.");
    }
}