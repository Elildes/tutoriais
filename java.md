# Tutorial para instalação e configuração do Java no Linux e Windows

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


## Instalação do Java no Windows



