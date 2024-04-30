----- TUTORIAL MAKEFILE -----

. Sequência da compilação/execução:

1. Compile os arquivos de programa .hpp e .cpp. Arquivos '.cpp' são tranformados em '.o'
. Sintaxe geral: g++ [options] file...
. Opções mais comuns:
	. -c: somente compilar arquivos .cpp
	. -g: informações de depuração do GDB
	. -Wall: indica aviso (warning) para instruções que possam indicar um erro
	. -ansi: verifica se o código está no padrão ANSI C.
	. -pedantic: verifica à obediência ao padrão ANSI C
	. -g e -O0 (ó maísculo e zero): permitem o uso do depurador, em caso de erro
	. -std=c++11: usa o padrão atual do c++11
	. https://gcc.gnu.org/onlinedocs/: lista completa de diretivas de compilação - manuais do GNU gcc/g++.
2. Ligar (linker) os arquivos objetos ```.o```:
	. -o [name]: arquivo 'name' executável a ser criado a partir dos arquivos onjetos '.o'
	. os arquivos ```.o``` são ligados para formar o executável. Também as bibliotecas são ligadas.
	. runtime support; biblioteca (.lib, .a, .so, etc).
	. Biblioteca é uma coleção de arquivos objeto pré-compilados que permitem a reutilização de código entre diferentes projetos.
3. Testar e depurar o programa
4. Arquivo executável

1) Criar um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe':
. arquivos .hpp: salvos na pasta 'inc'.
. arquivos .cpp: salvos na pasta 'src'.*/
. arquivos .exe e Makefile: salvos na pasta atual.

todos: objetos
	g++ *.o -o main.exe
	./main.exe
	rm *.o

objetos: ./src/*.cpp
	g++ -Wall -pedantic -g -O0 -ansi -std=c++11 -c ./src/*.cpp


2) Cria um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe'(todos arquivos em uma única pasta):

todos: objetos
	g++ *.o -o main.exe
	./main.exe
	rm *.o

objetos: *.cpp
	g++ -Wall -pedantic -std=c++11 -c *.cpp
  
  
3) Cria um arquivo Makefile que compila cada arquivo .cpp individualmente, cria um arquivo .o individual para cada arquivo .cpp e cria um executável 'a.out':

todos: main.o funcao.o
	g++ main.o funcao.o
	./a.out
	rm -r *.o

main.o:
	g++ -Wall -pedantic -std=c++11 main.cpp -c -o main.o

funcao.o:
	g++ -Wall -pedantic -std=c++11 funcao.cpp -c -o funcao.o

Fontes:
. Aula sobre o tema referente aos slides do grupo de professores LP1 do IMD/UFRN (material 2020.6 e 2020.2)
. Manuais do terminal Ubuntu.
