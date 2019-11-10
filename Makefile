/* Cria um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe':
. arquivos .hpp: salvos na pasta 'inc'.
. arquivos .cpp: salvos na pasta 'src'.*/
. arquivos .exe e Makefile: salvos na pasta atual.

todos: objetos
	g++ -pedantic -std=c++11 *.o -o main.exe
	./main.exe
	rm *.o

objetos: ./src/*.cpp
	g++ -pedantic -std=c++11 -c ./src/*.cpp


/* Cria um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe' */
todos: objetos
	g++ -pedantic -std=c++11 *.o -o main.exe
	./main.exe
	rm *.o

objetos: *.cpp
	g++ -pedantic -std=c++11 -c *.cpp
  
  
/* Cria um arquivo Makefile que compila cada arquivo .cpp individualmente, cria um arquivo .o individual para cada arquivo .cpp e cria um executável 'a.out' */
todos: main.o funcao.o
	g++ -pedantic -std=c++11 main.o funcao.o
	./a.out
	rm -r *.o

main.o:
	g++ main.cpp -c -o main.o

funcao.o:
	g++ funcao.cpp -c -o funcao.o
