# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall -Wextra

# Libraries to link
LIBS = -lopengl32 -lglfw3 -lgdi32 -lglew32

# Source files
SOURCES = main.cpp

# Executable name
EXECUTABLE = main.exe

# Default target
all: $(EXECUTABLE)

# Link the executable
$(EXECUTABLE): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $@ $(LIBS)

# Clean up
clean:
	del /Q $(EXECUTABLE)

# Phony targets
.PHONY: all clean