file(GLOB SRCS *.cpp)

ADD_EXECUTABLE(testconstructor ${SRCS})

TARGET_LINK_LIBRARIES(testconstructor
    libgtest
    libgmock
)

add_test(NAME testconstructor
         COMMAND testconstructor)
