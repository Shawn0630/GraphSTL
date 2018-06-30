file(GLOB SRCS *.cpp)

ADD_EXECUTABLE(testdisconnectedgraph ${SRCS})

TARGET_LINK_LIBRARIES(testdisconnectedgraph
    libgtest
    libgmock
)

add_test(NAME testdisconnectedgraph
         COMMAND testdisconnectedgraph)
