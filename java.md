# Tutorial para instalar, configurar e mudar a versão atual do Java no Linux e Windows

Fontes:  
[Como instalar o Oracle Java 16 no Ubuntu, Mint, Debian e derivados](https://www.edivaldobrito.com.br/como-instalar-o-oracle-java-16-no-ubuntu-mint-debian-e-derivados/)  
[Compilando e Executando um Arquivo Java pela Linha de Comando](https://autociencia.blogspot.com/2016/09/compilando-e-executando-um-arquivo-java.html)  

## Instalação do Java no Linux Ubuntu

**Preliminares**

Abra o terminal:  
`ctrl+alt+T`

O comando abaixo permite que o usuário visualize as versões instaladas e escolha a mais apropriada:  
`~$ sudo update-alternatives --config java`

Verificar a versão java padrão instalada:  
```
~$ java --version	// e/ou:
~$ javac -version
```

**Instalar o Oracle Java 16 no Ubuntu**

. Adicione o repositório do programa:  
`~$ sudo add-apt-repository ppa:linuxuprising/java`

. Atualize o gerenciador de pacotes:  
`~$ sudo apt-get update`

. Instale e torne o Oracle JDK 16 a versão JDK padrão:  
`~$ sudo apt install oracle-java16-installer --install-recommends`

. Ou, instale, mas não torne o Oracle JDK 16 a versão padrão do JDK:  
`~$ sudo apt install oracle-java16-installer --no-install-recommends`

**Defina o PATH permanentemente**  

Fonte: https://www.java.com/pt-BR/download/help/path_pt-br.html  

Para definir o caminho permanentemente, defina-o no arquivo de inicialização.  
**Observação**: as instruções para dois dos mais populares Shells no Linux e Solaris são listadas. Se você estiver usando outros shells, consulte o Tutorial de Definição de Caminho.  

**Bash Shell**:  
1. Edite o arquivo de inicialização:
`nano ~/.bashrc`  
2. Modifique a variável PATH:  
```PATH=/usr/local/jdk1.8.0/bin:$PATH
export PATH```
3. Salve e feche o arquivo.
4. Carregue o arquivo de inicialização:
`% . /.profile`  
5. Verifique se o caminho está definido repetindo o comando java:
`% java -version`  

**C Shell (csh)**: 
1. Edite o arquivo de inicialização:  
`nano ~/.cshrc)`  
2. Defina o Caminho:  
`set path=(/usr/local/jdk1.8.0/bin $path)`  
3. Salve e feche o arquivo.  
4. Carregue o arquivo de inicialização:  
`% source ~/.cshrc`  
5. Verifique se o caminho está definido repetindo o comando java:  
`% java -version`  

## Instalar e mudar a versão atual do Java no Windows

1. Baixe e instale a versão do Java desejada
2. Verificar a versão atual do java:  
`java -version`

**Mudar a versão atual do java**
1. `Windows > Editar as variáveis de ambiente > Variáveis de ambiente > Variáveis do sistema: Path > Editar: C:\Program Files\java\... (*)`  
(*): colocar o caminho da pasta 'bin' do java desejado. Ex.: `C:\Program Files\Java\jdk-11.0.15.1\bin`  
2. Reiniciar o PC.  
