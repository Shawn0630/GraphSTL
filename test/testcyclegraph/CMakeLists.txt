file(GLOB SRCS *.cpp)

ADD_EXECUTABLE(testcyclegraph ${SRCS})

TARGET_LINK_LIBRARIES(testcyclegraph
    libgtest
    libgmock
)

add_test(NAME testcyclegraph
         COMMAND testcyclegraph)
