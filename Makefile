# The default C compiler
CC = g++

# The CFLAGS variable sets compile flags for gcc:
#  -g          compile with debug information
#  -Wall       give verbose compiler warnings
#  -O0         do not optimize generated code
#  -std=gnu99  use the GNU99 standard language definition
CFLAGS = -lm -static -DLOCAL -DDEBUG -std=c++17

main: main.o
	$(CC) $(CFLAGS) -o main main.o

# The main.o target can be written more simply
 
main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

A: A.o
	$(CC) $(CFLAGS) -o A A.o

# The main.o target can be written more simply
 
A.o: A.cpp
	$(CC) $(CFLAGS) -c A.cpp

B: B.o
	$(CC) $(CFLAGS) -o B B.o

# The main.o target can be written more simply
 
B.o: B.cpp
	$(CC) $(CFLAGS) -c B.cpp

C: C.o
	$(CC) $(CFLAGS) -o C C.o

# The main.o target can be written more simply
 
C.o: C.cpp
	$(CC) $(CFLAGS) -c C.cpp

D: D.o
	$(CC) $(CFLAGS) -o D D.o

# The main.o target can be written more simply
 
D.o: D.cpp
	$(CC) $(CFLAGS) -c D.cpp

E: E.o
	$(CC) $(CFLAGS) -o E E.o

# The main.o target can be written more simply
 
E.o: E.cpp
	$(CC) $(CFLAGS) -c E.cpp

F: F.o
	$(CC) $(CFLAGS) -o F F.o

# The main.o target can be written more simply
 
F.o: F.cpp
	$(CC) $(CFLAGS) -c F.cpp

G: G.o
	$(CC) $(CFLAGS) -o G G.o

# The main.o target can be written more simply
 
G.o: G.cpp
	$(CC) $(CFLAGS) -c G.cpp

H: H.o
	$(CC) $(CFLAGS) -o H H.o

# The main.o target can be written more simply
 
H.o: H.cpp
	$(CC) $(CFLAGS) -c H.cpp

I: I.o
	$(CC) $(CFLAGS) -o I I.o

# The main.o target can be written more simply
 
I.o: I.cpp
	$(CC) $(CFLAGS) -c I.cpp

J: J.o
	$(CC) $(CFLAGS) -o J J.o

# The main.o target can be written more simply
 
J.o: J.cpp
	$(CC) $(CFLAGS) -c J.cpp

K: K.o
	$(CC) $(CFLAGS) -o K K.o

# The main.o target can be written more simply
 
K.o: K.cpp
	$(CC) $(CFLAGS) -c K.cpp

L: L.o
	$(CC) $(CFLAGS) -o L L.o

# The main.o target can be written more simply
 
L.o: L.cpp
	$(CC) $(CFLAGS) -c L.cpp



.PHONY: clean

clean:
	rm -f main *.o
