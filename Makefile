CXX = g++
CXXFLAGS = -g -Wall

TARGET = filesystem
OBJS = main.o disk.o inode.o fileSystem.o

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET)

main.o: main.cpp fileSystem.hpp
disk.o: disk.cpp disk.hpp
inode.o: inode.cpp inode.hpp
fileSystem.o: fileSystem.cpp fileSystem.hpp disk.hpp inode.hpp superBlock.hpp

.PHONY: clean

clean:
	rm -f $(OBJS) $(TARGET)