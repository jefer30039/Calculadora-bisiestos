compile: 
	nasm -f elf64 -o calc.o calc.asm
	gcc -o interfaz interfaz.c calc.o `pkg-config --cflags --libs gtk+-3.0`

clean:
	rm calc.o
	rm interfaz

rebuild: clean compile

run:
	./interfaz