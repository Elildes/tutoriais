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

**Informações Gerais**: o PATH é uma variável do sistema usada pelo sistema operacional para localizar executáveis necessários da linha de comandos ou da janela Terminal. A variável do sistema PATH pode ser definida usando o Utilitário do Sistema no painel de controle no Windows ou no arquivo de inicialização do shell no Linux e no Solaris. Fazer alterações na variável PATH do sistema em geral não é necessário para computadores que executam o Windows ou o Mac OS X.  

Para definir o caminho permanentemente, defina-o no arquivo de inicialização.  
**Observação**: as instruções para dois dos mais populares Shells no Linux e Solaris são listadas. Se você estiver usando outros shells, consulte o Tutorial de Definição de Caminho.  

**Bash Shell**:  

. Edite o arquivo de inicialização:  
`nano ~/.bashrc`

. Modifique a variável PATH:  
`PATH=/usr/local/jdk1.8.0/bin:$PATH`  
`export PATH`

. Salve e feche o arquivo.  

. Carregue o arquivo de inicialização:  
`% . /.profile`

. Verifique se o caminho está definido repetindo o comando java:  
`% java -version`

**C Shell (csh)**  

. Edite o arquivo de inicialização:  
`nano ~/.cshrc)`

. Defina o Caminho:  
`set path=(/usr/local/jdk1.8.0/bin $path)`

. Salve e feche o arquivo.  

. Carregue o arquivo de inicialização:  
`% source ~/.cshrc`

. Verifique se o caminho está definido repetindo o comando java:  
`% java -version`

## Instalar e mudar a versão atual do Java no Windows

1. Baixe e instale a versão do Java desejada
2. Verificar a versão atual do java:  
`java -version`

**Mudar a versão atual do java**
1. `Windows > Editar as variáveis de ambiente > Variáveis de ambiente > Variáveis do sistema: Path > Editar: C:\Program Files\java\... (*)`  
(*): colocar o caminho da pasta 'bin' do java desejado. Ex.: `C:\Program Files\Java\jdk-11.0.15.1\bin`  
2. Reiniciar o PC.  

# Como Configurar o Java (JDK e JRE) no Linux Passo a Passo (JAVA_HOME, JRE_HOME, etc)

Fonte:  
https://www.youtube.com/watch?v=EAlXMeddu8k&ab_channel=BrunoMenezes  

1. Verifique se o seu sistema operacional Ubuntu Linux é 32-bit ou 64-bit. Abra um terminal ou console e digite o seguinte comando:  
 `file /bin/bash | cut -d' ' -f3`
 Digite/Copie/Cole:
 `cat /etc/*-release`
  `uname -a`
  
2. Remova completamente a JDK/JRE de seu sistema e crie um diretório para guardar os binários da Oracle Java JDK/JRE. Isto irá evitar conflitos no sistema bem como confusões devido à versões do Java de diferentes fornecedores. Por exemplo, se você possui o OpenJDK/JRE instalado em seu sistema, você pode removê-los digitando o seguinte comando no terminal:  

Remove all the Java related packages (Sun, Oracle, OpenJDK, IcedTea plugins, GIJ):  
```dpkg-query -W -f='${binary:Package}\n' | grep -E -e '^(ia32-)?(sun|oracle)-java' -e '^openjdk-' -e '^icedtea' -e '^(default|gcj)-j(re|dk)' -e '^gcj-(.*)-j(re|dk)' -e '^java-common' | xargs
sudo apt-get -y remove
sudo apt-get -y autoremove```  

Purge config files (careful. This command removed libsgutils2-2 and virtualbox config files too):  
```dpkg -l | grep ^rc | awk '{print($2)}' | xargs
sudo apt-get -y purge```  

Remove manually installed JVMs:  
`sudo rm -rf /usr/lib/jvm/*`

Remove Java entries, if there is still any, from the alternatives:  
`for g in ControlPanel java java_vm javaws jcontrol jexec keytool mozilla-javaplugin.so orbd pack200 policytool rmid rmiregistry servertool tnameserv unpack200 appletviewer apt extcheck HtmlConverter idlj jar jarsigner javac javadoc javah javap jconsole jdb jhat jinfo jmap jps jrunscript jsadebugd jstack jstat jstatd native2ascii rmic schemagen serialver wsgen wsimport xjc xulrunner-1.9-javaplugin.so; do sudo update-alternatives --remove-all $g; done`

Pesquise por possíveis diretórios Java restantes:  
`sudo updatedb`  
`sudo locate -b '\pack200'`  
`sudo rm -rf /usr/local/java/*`  

3. Baixe os arquivos tar do JDK e do JRE e descompacte os arquivos.  

4 . Crie uma pasta chamada “java“ em “/usr/local”.  

5. Copie os arquivos baixados para “/usr/local/java”.  

6. Editar o arquivo /etc/bash.bashrc  para adicionar a variavel de ambiente:  
`sudo gedit /etc/bash.bashrc`

Adicione os seguintes comandos no final do arquivo:  
`export JAVA_HOME=/usr/local/java/jdk1.8.0_202`
`export JRE_HOME=/usr/local/java/jre1.8.0_202`
`export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin`

7 - Feito isso, salve e feche o arquivo. Agora devemos informar o ubuntu onde o JDK e o JRE estão instalados:  
`sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jre1.8.0_202/bin/java" 1`
`sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_202/bin/javac" 1`
`sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jre1.8.0_202/bin/javaws" 1`

8 - Devemos setar o java instalado como padrão:  
`sudo update-alternatives --set java /usr/local/java/jre1.8.0_202/bin/java`
`sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_202/bin/javac`
`sudo update-alternatives --set javaws /usr/local/java/jre1.8.0_202/bin/javaws`

9 - Reinicie a maquina:  

10 - Verifique a versão do java:  
`java -version`
