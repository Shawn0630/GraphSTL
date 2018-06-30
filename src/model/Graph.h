///
/// Created by Terae on 09/03/17.
/// Modify by Shawn
///

#ifndef ROOT_GRAPH_H
#define ROOT_GRAPH_H

#include <algorithm> /// find
#include <fstream>   /// setw, operator<<
#include <iomanip>   /// setw
#include <map>       /// map, multimap
#include <vector>    /// vector
#include <deque>

/// C++ language standard detection
#if   (defined(__cplusplus) && __cplusplus >= 201703L) || (defined(_MSC_VER)   && _MSC_VER > 1900 && defined(_HAS_CXX17) && _HAS_CXX17 == 1)
    #define GRAPH_HAS_CPP_17
    #define GRAPH_HAS_CPP_14
#elif (defined(__cplusplus) && __cplusplus >= 201402L) || (defined(_HAS_CXX14) && _HAS_CXX14 == 1)
    #define GRAPH_HAS_CPP_14
#endif

#if defined(GRAPH_HAS_CPP_17)
    #include <experimental/optional>
#endif

/// exclude unsupported compilers
#if defined(__clang__)
    #if (__clang_major__ * 10000 + __clang_minor__ * 100 + __clang_patchlevel__) < 30500
        #error "unsupported Clang version - see https://github.com/terae/structure#supported-compilers"
    #endif
#elif defined(__GNUC__) && !(defined(__ICC) || defined(__INTEL_COMPILER))
    #if (__GNUC__        * 10000 + __GNUC_MINOR__  * 100 + __GNUC_PATCHLEVEL__)  < 50000
        #error "unsupported GCC version - see https://github.com/terae/structure#supported-compilers"
    #endif
#endif

#include "Node.h"

///////////////////////////
///// ADJACENCY GRAPH /////
///////////////////////////

///
/// @brief a generalized class of Graph
///
/// @tparam Key type of the keys. Each element in a Graph is uniquely identified by its key value. Aliased as member type Graph::key_type
/// @tparam T type of graphed value stored into a node. Aliased as member type Graph::graphed_type
/// @tparam Cost type of the cost between nodes.
/// @since version 1.0.0
///
template <class Key, class T, class Cost = std::size_t, Nature Nat = UNDIRECTED>
class graph {
  public:
    class node;
    using Degree = detail::basic_degree<Nat>;

  private:
    using PtrNode  = std::shared_ptr<node>;
    using MapNodes = std::map<Key, PtrNode>;

    MapNodes _nodes;
    std::size_t _num_edges = 0;

    const Cost infinity = std::numeric_limits<Cost>::has_infinity ? std::numeric_limits<Cost>::infinity() :
                          std::numeric_limits<Cost>::max();

    std::ostream &print(std::ostream &os) const;

  public:

    ///
    //! @section exceptions
    ///

    using bad_graph          = detail::bad_graph;
    using exception          = detail::exception;
    using invalid_argument   = detail::invalid_argument;
    using negative_edge      = detail::negative_edge;
    using not_complete       = detail::not_complete;
    using parse_error        = detail::parse_error;
    using unexpected_nullptr = detail::unexpected_nullptr;

    ///
    //! @section container types
    ///

    /// @name container types
    /// The canonic container types to use @ref Graph like any other STL container
    /// @{

    /// the type of elements in a graph container
    using value_type   = std::pair<const Key, PtrNode>;
    /// the type of an element reference
    using reference    = value_type &;
    /// the type of the unique and identifying key
    using key_type     = Key;
    /// the type of stored values on a graph
    using graphed_type = T;
    /// a type to represent container sizes
    using size_type    = std::size_t;

    /// an iterator for a graph container
    using iterator               = typename MapNodes::iterator;
    /// a const iterator for a graph container
    using const_iterator         = typename MapNodes::const_iterator;
    /// a reverse iterator for a graph container
    using reverse_iterator       = typename MapNodes::reverse_iterator;
    /// a const reverse iterator for a graph container
    using const_reverse_iterator = typename MapNodes::const_reverse_iterator;

    /// @}

    ///
    //! @section Iterators
    ///

    iterator begin() noexcept;
    iterator end()   noexcept;

    const_iterator begin()  const noexcept;
    const_iterator cbegin() const noexcept;

    const_iterator end()  const noexcept;
    const_iterator cend() const noexcept;

    reverse_iterator rbegin() noexcept;
    reverse_iterator rend()   noexcept;

    const_reverse_iterator rbegin()  const noexcept;
    const_reverse_iterator crbegin() const noexcept;

    const_reverse_iterator rend()  const noexcept;
    const_reverse_iterator crend() const noexcept;

    ///
    //! @section Constructors
    ///

    /// default constructor
    explicit graph();

    /// istream constructor
    graph(std::istream &);

    /// copy constructor
    graph(const graph &);

    /// move constructor
    graph(graph &&) noexcept;

    /// copy assignment operator
    graph &operator=(const graph &);

    /// move assignment operator
    graph &operator=(graph &&);

    virtual ~graph();

    ///
    //! @section Capacity
    ///

    bool empty() const noexcept;

    size_type size() const noexcept;

    size_type max_size() const noexcept;

    ///
    //! @section Element access
    ///

    graphed_type &operator[](const key_type &);
    graphed_type &operator[](key_type &&);

#if defined(GRAPH_HAS_CPP_17)
    const std::optional<graphed_type> operator[](key_type &&) const;
#else
    const graphed_type operator[](key_type &&) const;
#endif

    Cost &operator()(iterator,         iterator);
    Cost &operator()(const key_type &, const key_type &);

#if defined(GRAPH_HAS_CPP_17)
    const std::optional<Cost> operator()(const_iterator,   const_iterator)   const;
    const std::optional<Cost> operator()(const key_type &, const key_type &) const;
#else
    const Cost operator()(const_iterator it1, const_iterator it2)  const;
    const Cost operator()(const key_type &k1, const key_type &k2)  const;
#endif
    ///
    //! @section Modifiers
    ///

    //! Adders
    /// @return pair<position, new node> insertion
    [[deprecated]] std::pair<iterator, bool> insert(const value_type &);

    iterator insert(const_iterator position, const value_type &);
    iterator insert(const_iterator position, const key_type &, graphed_type &);
    iterator insert(const_iterator position, const key_type &, const node &);

    /// @return pair<position, new node> emplacement
    std::pair<iterator, bool> emplace(const key_type &);
    std::pair<iterator, bool> emplace(const key_type &, const graphed_type &);
    std::pair<iterator, bool> emplace(const key_type &, const node &);

    std::pair<iterator, bool> add_node(const key_type &);
    std::pair<iterator, bool> add_node(const key_type &, const graphed_type &);
    std::pair<iterator, bool> add_node(const key_type &, const node &);

    bool add_edge(const_iterator,   const_iterator,   Cost = std::numeric_limits<Cost>::epsilon());
    bool add_edge(const key_type &, const key_type &, Cost = std::numeric_limits<Cost>::epsilon());

    void link_all_nodes(Cost cost);

    //! Deleters

    iterator  erase(const_iterator);
    iterator  erase(const_iterator first, const_iterator last);
    size_type erase(const key_type &);

    iterator  del_node (const_iterator);
    iterator  del_nodes(const_iterator first, const_iterator last);
    size_type del_node (const key_type &);

    void clear() noexcept;

    size_type del_edge(const_iterator,   const_iterator);
    size_type del_edge(const key_type &, const key_type &);

    void clear_edges();

    size_type clear_edges(const_iterator);
    size_type clear_edges(const key_type &);

    //! Others
    void swap(graph &);

    ///
    //! @section Functions
    ///

    /// Non-modifying sequence operations
    size_type count(const key_type &) const;

    iterator       find(const key_type &);
    const_iterator find(const key_type &) const;

    ///
    //! @section Operations
    ///

    bool existing_node(const_iterator)   const;
    bool existing_node(const key_type &) const;

    bool existing_edge(const_iterator,   const_iterator)   const;
    bool existing_edge(const key_type &, const key_type &) const;

    inline size_type get_nbr_nodes() const noexcept;
    inline size_type get_nbr_edges() const noexcept;

    inline Nature get_nature() const;

    Degree degree(const_iterator)   const;
    Degree degree(const key_type &) const;

    std::pair<const_iterator, Degree> degree_max() const;
    std::pair<const_iterator, Degree> degree_min() const;

    std::map<key_type, Degree> degrees() const;

    template <class = typename std::enable_if<detail::is_directed  <Nat>::value>>
    std::vector<typename node::edge> get_in_edges (const_iterator)   const;
    template <class = typename std::enable_if<detail::is_directed  <Nat>::value>>
    inline std::vector<typename node::edge> get_in_edges (const key_type &) const;

    template <class = typename std::enable_if<detail::is_directed  <Nat>::value>>
    inline std::vector<typename node::edge> get_out_edges(const_iterator)   const;
    template <class = typename std::enable_if<detail::is_directed  <Nat>::value>>
    inline std::vector<typename node::edge> get_out_edges(const key_type &) const;

    template <class = typename std::enable_if<detail::is_undirected<Nat>::value>>
    inline std::vector<typename node::edge> get_edges    (const_iterator)   const;
    template <class = typename std::enable_if<detail::is_undirected<Nat>::value>>
    inline std::vector<typename node::edge> get_edges    (const key_type &) const;

    std::multimap<Key, Key> get_sccs() const;
    void strong_connect(const Key &, std::deque<Key> &, std::size_t, std::map<Key, std::size_t> &, std::map<Key, std::size_t> &, std::multimap<Key, Key> &) const;
    bool is_cyclic() const;
    bool is_cyclic_until(const_iterator , std::deque<Key> &, std::deque<Key>) const;
    bool is_isomorphic() const;
    // TODO

    ///
    //! @section Text functions
    ///

    template<class K, class D, class C, Nature N> friend std::ostream &operator<<(std::ostream &, const graph<K, D, C, N> &);
    template<class K, class D, class C, Nature N> friend std::istream &operator>>(std::istream &,       graph<K, D, C, N> &);

    void   save(const char* filepath) const;
    graph &load(const char* filepath);

    /// @param name Optional; accepted characters: [a-zA-Z0-9_-]
    std::ostream &generate_dot(std::ostream &, const std::string &name = "") const;

    ///
    //! @section Bool operators
    ///

    template<class K, class D, class C, Nature N> bool operator==(const graph<K, D, C, N> &) const noexcept;
    template<class K, class D, class C, Nature N> bool operator!=(const graph<K, D, C, N> &) const noexcept;

    /// CRTP: https://en.wikipedia.org/wiki/Curiously_recurring_template_pattern
    class node : public basic_node<T, Cost, iterator, const_iterator> {
      public:
        explicit node();

        explicit node(const T &);

        node &operator=(const T &);

      private:
        friend class graph;

        void set_iterator_values(iterator this_, iterator end, const_iterator cend);
    };
};

template <class Key, class T, class Cost = std::size_t>
using graph_directed   = graph<Key, T, Cost, DIRECTED>;

template <class Key, class T, class Cost = std::size_t>
using graph_undirected = graph<Key, T, Cost, UNDIRECTED>;

#include "Graph.cpp"

#endif /// ROOT_GRAPH_H
