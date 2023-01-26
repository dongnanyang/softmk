TARGET:=test
SRCS:=$(wildcard *.cpp *.cc *.c)
OBJS:=$(patsubst %.cpp,%.o,$(SRCS))
CXXFLAGS:=-lpthread -std=c++11
$(TARGET):$(OBJS)
	$(CXX) $^ -o $@
clean:
	$(RM) $(TARGET) $(OBJS)

.PHONY: 
	clean *clean
