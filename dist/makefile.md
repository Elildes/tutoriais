# TUTORIAL MAKEFILE

## Sequência da compilação/execução

**1. Compile os arquivos de programa .hpp e .cpp**. Arquivos '.cpp' são tranformados em '.o'::  
**. Sintaxe geral**: g++ [options] file...  
**. Opções mais comuns**:  
	**. -c**: somente compilar arquivos .cpp  
	**. -g**: informações de depuração do GDB  
	**. -Wall**: indica aviso (warning) para instruções que possam indicar um erro  
	**. -ansi**: verifica se o código está no padrão ANSI C.  
	**. -pedantic**: verifica à obediência ao padrão ANSI C  
	**. -g e -O0** (ó maísculo e zero): permitem o uso do depurador, em caso de erro  
	**. -std=c++11**: usa o padrão atual do c++11  
	**. https://gcc.gnu.org/onlinedocs/**: lista completa de diretivas de compilação - manuais do GNU gcc/g++.  

**2. Ligar (linker) os arquivos objetos `.o`**:  
	**. -o [name]**: arquivo 'name' executável a ser criado a partir dos arquivos objetos `.o`  
	. os arquivos `.o` são ligados para formar o executável. Também as bibliotecas são ligadas.  
	. runtime support; biblioteca (.lib, .a, .so, etc).  
	. Biblioteca é uma coleção de arquivos objeto pré-compilados que permitem a reutilização de código entre diferentes projetos.  

**3. Testar e depurar o programa**  

**4. Arquivo executável**  

**4.1. Criar um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe':**  
**. arquivos .hpp**: salvos na pasta `inc`.  
**. arquivos .cpp**: salvos na pasta `src` `.*/`  
**. arquivos .exe e Makefile**: salvos na pasta atual.  

```bash
todos: objetos
	g++ *.o -o main.exe
	./main.exe
	rm *.o

objetos: ./src/*.cpp
	g++ -Wall -pedantic -g -O0 -ansi -std=c++11 -c ./src/*.cpp
```

**4.2. Cria um arquivo Makefile que compila todos arquivos .cpp e junta todos arquivos .o no executável 'main.exe'(todos arquivos em uma única pasta):**  

```bash
todos: objetos
	g++ *.o -o main.exe
	./main.exe
	rm *.o

objetos: *.cpp
	g++ -Wall -pedantic -std=c++11 -c *.cpp
```  
  
**4.3. Cria um arquivo Makefile que compila cada arquivo `.cpp` individualmente, cria um arquivo `.o` individual para cada arquivo `.cpp` e cria um executável `a.out`:**  

```bash
todos: main.o funcao.o
	g++ main.o funcao.o
	./a.out
	rm -r *.o

main.o:
	g++ -Wall -pedantic -std=c++11 main.cpp -c -o main.o

funcao.o:
	g++ -Wall -pedantic -std=c++11 funcao.cpp -c -o funcao.o
```

Fontes:
. Aula sobre o tema referente aos slides do grupo de professores LP1 do IMD/UFRN (material 2020.6 e 2020.2)  
. Manuais do terminal Ubuntu.  

## Exemplo 01 - Makefile com o programa `flex`

Execute no terminal:

- Compilar e contruir o programa:  
`~$ make`

- Limpar os arquivos `lex.yy.c`, `y.tab.*`, `compiler`, `output.txt` e `y.output`:  
`~$ make clean`  


```bash
all: compilador

compilador: lex.yy.c y.tab.c 
	gcc lex.yy.c y.tab.c ./lib/record.c -o compiler

lex.yy.c: scanner.l
	flex scanner.l

y.tab.c: parser.y  
	bison parser.y -d -v -o y.tab.c

clean:
	rm -rf lex.yy.c y.tab.* compiler output.txt y.output
```

## Exemplo 02 - Makefile com o programa `flex`

Ir para a pasta onde está o arquivo Makefile.

1 - Constroi o programa:

```bash
make
```

2 - Executa o analisador:

```bash
make run
```

3 - Limpar todos os arquivos e diretórios gerados:

```bash
make clean
```

4 - Outros comandos:

Este é o comando primeiro garante que o `analisador.out` esteja construído (executando os passos do `make analisador` se o executável não existir ou se `analisador.l` for mais novo), ou seja, roda os comandos `flex, gcc e a execução`.

Depois, ele executa o comando: `./analisador.out < code.txt`.

```bash
make run_analisador
```

Executa o analisador, mas desta vez usando `outro_arquivo.txt` como entrada.

```bash
./analisador.out < outro_arquivo.txt
```

Construir apenas o seu analisador léxico:

```bash
make analisador
```

```bash
# --- Compiladores e Flags ---
CC = gcc
CFLAGS = -Wall -Wextra -g -I.
LEX = flex
LFLAGS = -lfl # Flags do linker para o flex (biblioteca do flex)

# --- Arquivos do Projeto Analisador ---
# O .l de origem
ANALISADOR_SRC_L = analisador.l

# O executável final
ANALISADOR_TARGET = analisador.out

# Arquivos intermediários (gerados na pasta local)
ANALISADOR_SRC_C = lex.yy.c
ANALISADOR_OBJ = lex.yy.o

# --- Variável para Execução ---
# Define um arquivo de entrada padrão.
# Você pode sobrepor isso na linha de comando, ex:
# make run INPUT=outro_arquivo.txt
INPUT_FILE = code.txt

# --- Targets Principais ---

# O target 'all' é o padrão (o que roda quando você digita apenas 'make')
# Ele agora constrói o analisador.
all: $(ANALISADOR_TARGET)

# Target para EXECUTAR o analisador.
# Ele usa a variável $(INPUT_FILE)
run: $(ANALISADOR_TARGET)
	@echo "--- Executando analisador com entrada: $(INPUT_FILE) ---"
	./$(ANALISADOR_TARGET) < $(INPUT_FILE)

# --- Regras de Build (Compilação) ---

# 1. Linkagem: Cria o executável final 'analisador.out' a partir do .o
$(ANALISADOR_TARGET): $(ANALISADOR_OBJ)
	$(CC) $(ANALISADOR_OBJ) -o $(ANALISADOR_TARGET) $(LFLAGS)

# 2. Compilação: Cria o arquivo objeto 'lex.yy.o' a partir do .c
$(ANALISADOR_OBJ): $(ANALISADOR_SRC_C)
	$(CC) $(CFLAGS) -c $< -o $@

# 3. Geração (Flex): Cria o arquivo 'lex.yy.c' a partir do 'analisador.l'
$(ANALISADOR_SRC_C): $(ANALISADOR_SRC_L)
	$(LEX) -o $@ $<

# --- Limpeza ---
# Remove todos os arquivos gerados (intermediários e final)
clean:
	rm -f $(ANALISADOR_TARGET) $(ANALISADOR_SRC_C) $(ANALISADOR_OBJ)
	# Também tenta remover pastas antigas, caso existam
	rm -rf dist tmp

# Declara os targets que não geram arquivos
.PHONY: all run clean
```
