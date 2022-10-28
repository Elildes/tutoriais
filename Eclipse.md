# Tutorial da IDE Eclipse

## Passo a passo importar projeto do GitHub para o Eclipse

Fonte 1: https://www.youtube.com/watch?v=-IA9VivrY4c&ab_channel=AlexandreAtanes  
Fonte 2: https://www.youtube.com/watch?v=KC-mZ5Ew_jE&ab_channel=IvanSalvadori  

1. Clonar o repositório do GitHub ou Importar de uma pasta com o projeto já clonado  
2. Adicionar o projeto clonado ao Eclipse  
3. Reconfigurar o novo ambiente DEV (path)  
4. Atualizar/sincronizar o projeto com o Repositório Remoto  
5. Gerando o JAR (bibliotecas/projeto) pelo Eclipse  
6. Como importar uma biblioteca no Eclipse?  

### Importar ou Clonar o Projeto

**Clonar projeto**
1. `File` > `Import` > `Git` > `Projects from Git` > `Next`  
2. `Clone URI`  
3. `Next`: adicionar URL do projeto do Git:  
. `URI`: URL do projeto no GitHub (se copiar do Git o preenchimento é automático)   
. `Host`: (preenchimento é automático)  
. `Repository path`: (prenchimento automático)  
. `User` + `password` (usuário e senha do GitHub)  
4. `Next` > `Next`  
. `Destination`: colocar o diretório onde o repositótio será clonado (salvo)  
. `Projects`: `Import all existing Eclipse project...`  
5. `Finish`  
Adicionar o projeto clonado ao Eclipse:  
6. `Git Repository` (`Windows` > `Show view` > `Other` > `Git` > `Git Repositories`  
7. `Botão direito do mouse no repositório`  
8. `Import Projects...`  
9. `Finish`  
**Obs.:** aguardar a importação (demora um pouco dependendo projeto).  

**Projeto já clonado**
1. `File` > `Import` > `Git` > `Projects from Git` > `Existing local repository` (projeto já clonado) > `Next`  
2. `Add` > `Directory` (URL do prjeto no PC) > `Add`  
3. `...`  

**Sincronizar o projeto Eclipse com o repositório remoto**
4. `Botão direito no projeto`  
5. `Team`  
6. `Synchronize workspace`  
7. `Yes`  
**Obs.:** aguardar a importação (demora um pouco dependendo projeto).  


**Reconfigurar o novo ambiente DEV (path)**  
4. `Botão direito no projeto`  
5. `Properties`  
6. `Java Build Path: JRE > Edit: colocar a JVM necessária > Finish`  
**Obs.:** verificar mais opções, se necessário. Ex.: Server, Target Runtimes.


## Atualizar, mesclar, comitar, etc o projeto com o repositório remoto
1. `Botão direito no projeto`  
2. `Team`  
3. `Escolher a opção desejada.` Ex.: `commit`, `push`, `pull`, etc  

Fonte: https://douglasgaspar.wordpress.com/2021/01/28/utilizacao-do-git-em-ambiente-java-com-ide-eclipse/  

## Executar programa Java e JavaFX com arquivo executável .jar

Fonte: https://www.youtube.com/watch?v=lwOFg-W7OSM&ab_channel=BoostMyTool

1. Exporte um arquivo executável .jar
2. Verifique no projeto do Eclipse o argumento do Java Application: `Run` > `Run Configurations` > `Java Application`: selecione o corespondente > `Arguments` > `VM arguments`: copie todo argumento > `Close`
3. Abra o terminal (testei no cmd do Windows e deu certo)
4. Vá para a pasta onde o programa `.jar` está instalado
5. Execute o programa: `java <VM_ARGUMENTS> -jar PROGRAMA.jar`  
**Obs. 1**: `<VM_ARGUMENTS>` são os argumentos copiados no item '2.' e `PROGRAMA.jar` é o nome do programa a ser executado.  
**Obs. 2**: programas Java com JavaFX, ou qualquer outro que tem argumentos no Java Application, precisam ser executados desta maneira.  

# Gerando o JAR (bibliotecas/projeto) pelo Eclipse  

. Clique com o botão direito em cima do nome do seu projeto.  
. Selecione a opção `Export`.  
. Na tela `Export`, selecione a opção `Java`> `JAR file` e aperte o botão `Next`.  
. Selecione as pastas e arquivos a serem exportados.  
. Na opção `JAR file`, selecione o local em que você deseja salvar o arquivo `JAR` e escolhe as demais opções, se for ocaso, então aperte `Next`.  
. Na próxima tela, clique em `Next`, para mais detalhes, ou clique em `Finish`.  

# Como importar uma biblioteca no Eclipse?

No eclipse para importar um `jar` você precisa:

. Clicar com o botão direito no projeto.  
. Escolher `Build Path` > `Configure Build Path`.  
. Vai abrir uma janela, nela você vai na aba `Libraries`.  
. Agora basta clicar em `Add JARs...`  

**Obs.**: você pode copiar todos para dentro de uma pasta dentro de seu projeto.  






