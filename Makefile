CXX = g++
CXXFLAGS = -g -Wall -Wextra -Wpedantic

# Target binary program
TARGET = numberconverter

# Object files
OBJS = numberconversion.o romandigitconverter.o

# Phony targets for cleaning build files
.PHONY: all clean

# Default target
all: $(TARGET)

# Link the program
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Compile numberconversion.cpp to numberconversion.o
numberconversion.o: numberconversion.cpp
	$(CXX) $(CXXFLAGS) -c numberconversion.cpp

# Compile romandigitconverter.cpp to romandigitconverter.o
romandigitconverter.o: romandigitconverter.cpp
	$(CXX) $(CXXFLAGS) -c romandigitconverter.cpp

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET)
