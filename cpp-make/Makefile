TARGET    := hello_world
TEST_EXE  := run_tests
BUILD_DIR := build

SRC_DIRS  := src lib/src
INC_DIRS  := lib/include src

# Find all .cpp files
SRCS       := $(shell find $(SRC_DIRS) -name "*.cpp")
TEST_SRCS  := $(shell find lib/src tests -name "*.cpp")

OBJS       := $(SRCS:%=$(BUILD_DIR)/%.o)
TEST_OBJS  := $(TEST_SRCS:%=$(BUILD_DIR)/%.o)

CXX      := g++
CPPFLAGS := $(addprefix -I,$(INC_DIRS))
CXXFLAGS := -Wall -Wextra -g -std=c++20

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $@

$(TEST_EXE): $(TEST_OBJS)
	$(CXX) $(TEST_OBJS) -o $@

$(BUILD_DIR)/%.cpp.o: %.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR) $(TARGET) $(TEST_EXE)
