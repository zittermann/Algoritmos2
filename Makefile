OBJS = main.o funciones_vertices.o funciones_aristas.o funciones_imprimir.o
BINARY = main

# all: program

program: $(OBJS)
	gcc -o $(BINARY) $(OBJS) 

objs/main.o: main.c funciones.h
	gcc -c main.c

objs/vertices.o: funciones_vertices.c funciones.h
	gcc -c funciones_vertices.c

objs/aristas.o: funciones_aristas.c funciones.h
	gcc -c funciones_aristas.c

objs/imprimir.o: funciones_imprimir.c funciones.h
	gcc -c funciones_imprimir.c
 
clean:
	rm -f $(BINARY) $(OBJS)
