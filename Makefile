main: command.o game.o graphic_engine.o screen.o game_loop.o
	gcc command.o game.o graphic_engine.o screen.o game_loop.o 
	
command.o: command.c command.h
	gcc -c -Wall command.c 
	
game.o: game.c game.h
	gcc -c -Wall game.c 
	
graphic_engine.o: graphic_engine.c graphic_engine.h screen.h command.h
	gcc -c -Wall graphic_engine.c
	
screen.o: screen.c screen.h
	gcc -c -Wall screen.c
	
space.o: space.c space.h types.h
	gcc -c -Wall space.c 
	
game_loop.o: game_loop.c graphic_engine.h
	gcc -c -Wall game_loop.c 
	
clear:
	rm -rf *.o
	
	
