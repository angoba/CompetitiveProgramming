g++ -static -DLOCAL -lm -s -x c++ -std=c++17 -DDEBUG -o $1 $1.cpp ; ./$1 
