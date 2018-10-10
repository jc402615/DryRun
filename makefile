CC = g++
CFLAGS = -Wall

all: build doczip

clean:
	-rm *.o
	-rm *.class
	-rm a.out
	-rm mywc
	-rm -r html
	-rm -r latex
	-rm dconfig
	-rm documentation.tar.gz

build: wc.c
	$(CC) $(CFLAGS) wc.c

doc: wc.c
	doxygen -g dconfig
	doxygen dconfig

make mywc: wc.c
	$(CC) $(CFLAGS) wc.c

make doczip: doc
	tar -zcvf documentation.tar.gz ./html ./latex

	


	
