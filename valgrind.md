Valgrind

Fonte: https://www.valgrind.org/docs/manual/manual.html
Fonte: Slide do Prof. Dr. Renan do IMD/UFRN.

. Programa que analisa programas em tempo real.
. Permite monitorar como o programa faz uso da memória.
. Indica quais áreas da memória estão alocadas, quais estão livres e quais estão alocadas e iniciadas.
. Alguns tipos de problemas encontrados pelo Valgrind:
>. Leitura/escrita em áreas de memória já desalocadas, não alocadas, que ultrapassam uma área alocada ou que sejam impróprias ou incomuns na pilha de execução.
- Vazamentos de memória (memory leaks).
- Uso de variáveis ou ponteiros não inicializados.
- Passagem de apontadores para áreas não endereçáveis.
- Uso incorreto das funções malloc, calloc, free, new e delete.
>- Sobreposição de ponteiros no uso das funções memcpy, strcpy e semelhantes.

. Compilar o programa com gcc ou g++:
~~~
gcc...  ou g++ ...
~~~

. Executar o programa com as opções do Valgrind:
~~~
valgrind ./a.out	// a.out: executável conforme compilação
~~~
Obs.: Será impresso na tela (relatório) as informações sobre o uso de memória do programa

. Flag `-v`: executar novamente para para mais detalhes dos erros:
~~~
valgrind -v ./a.out
~~~

. Flags `--leak-check=full --show-reachable=yes`: executar novamente para mais detalhes dos blocos com problemas de alocação:
~~~
valgrind -v --leak-check=full --show-reachable=yes ./a.out
~~~

Exemplos comuns de erros:

• Memory Leak: Memória que é alocada não é devolvida (liberada)
• Buffer Overflow: Escrever fora da área alocada
• Memória não inicializada: Acesso a memória não inicializada
• Double-free: A área de memória de um ponteiro é liberada mais do que uma vez ― Origina crash em muitas bibliotecas
