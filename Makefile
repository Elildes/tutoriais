/* Cria um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe':
. arquivos .hpp: salvos na pasta 'inc'.
. arquivos .cpp: salvos na pasta 'src'.*/
. arquivos .exe e Makefile: salvos na pasta atual.
. xxx

. Sequência da compilação/execução:
1. Compile os arquivos de programa .hpp e .cpp. Arquivos '.cpp' são tranformados em '.o'
2. Ligar (linker) os arquivos objetos ```.o```:
. os arquivos ```.o``` são ligados para formar o executável. Também as bibliotecas são ligadas.
. runtime support; biblioteca (.lib, .a, .so, etc).
. Biblioteca é uma coleção de arquivos objeto pré-compilados que permitem a reutilização de código entre diferentes projetos.
3. Testar e depurar o programa
4. Arquivo executável

todos: objetos
	g++ -Wall -pedantic -ansi -std=c++11 *.o -o a.out
	./main.exe
	rm *.o

objetos: ./src/*.cpp
	g++ -c ./src/*.cpp


/* Cria um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe'(todos arquivos em uma única pasta) */
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

Fontes: Aula sobre o tema referente aos slides do grupo de professores LP1 do IMD/UFRN (material 2020.6 e 2020.2)
. 
