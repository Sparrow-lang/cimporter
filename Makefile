all: sparrow
	gcc main.o /usr/lib/llvm-5.0/lib/libclang.so -o example.out

sparrow:
	../sparrow/build/bin/SparrowCompiler -dump-assembly -c main.spr -o main.o

clean:
	rm -f *.o example.out

