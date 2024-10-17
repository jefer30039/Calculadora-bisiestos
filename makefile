compile: 
	nasm -f elf64 -o calc.o calc.asm
	gcc -o CalculadoraBisiestos interfaz.c calc.o `pkg-config --cflags --libs gtk+-3.0`

clean:
	rm calc.o
	rm CalculadoraBisiestos

rebuild: clean compile

run:
	./CalculadoraBisiestos