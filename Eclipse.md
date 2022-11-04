# Tutorial da IDE Eclipse - Passo a passo importar projeto do GitHub para o Eclipse

Fonte 1: https://www.youtube.com/watch?v=-IA9VivrY4c&ab_channel=AlexandreAtanes  
Fonte 2: https://www.youtube.com/watch?v=KC-mZ5Ew_jE&ab_channel=IvanSalvadori  

**Í N D I C E**  

1. [Criar um novo projeto no Eclipse e enviar ao repositório GitHub](#criarprojeto)
2. [Importar ou Clonar o Projeto](#importarclonar)
3. [Reconfigurar o novo ambiente DEV - path](#confpath)
4. [Atualizar, mesclar, comitar, etc o projeto com o repositório remoto](#addcomitar)
5. [Executar programa Java e JavaFX com arquivo executável .jar](#executarjava)
6. [Gerando o JAR (bibliotecas/projeto) pelo Eclipse](#gerandojar)
7. [Como importar uma biblioteca no Eclipse?](#importarbiblioteca)
8. [Principais Plugins do Eclipse](#principaisplugins)

<div id='criarprojeto'/>

# 1. Criar um novo projeto no Eclipse e enviar ao repositório GitHub

1. No Git Hub crie um projeto em branco e não adicione nenhum arquivo.  

2. Criar o projeto no Eclipse:  

`File` > `New` > `Maven Project`  
Na janela `New Maven project:  
Selecionar a opção `Create a simple project...`  
Desmarcar a opção `Use default Workspace location` e digitar o local do repositório e nome da pasta onde o projeto será salvo.  
Cliclar em `next`.  
Na próxima janela preencha os dados do arquivo `pom.xml`. Ex.: `Group Id, Artefact Id`, etc.  
Por fim, clicar em `finish`.  

**Obs.**: fazer as devidas alterações no arquivo `pom.xml` ou devidas configurações das dependências do projeto.  

3. Criar o repositório local:  

Na aba `Git Repositories`:  

Na janela `Create a New Git Reository`:  
Na opção `Repository directory`: digitar o local da pasta e nome do projeto, onde o repositório será iniciado/salvo.  
Na opção `Default branch name`: digitar o name da branch padrão. Ex. `master`.  
Por fim, clique em `create`.  

**Obs.**: verifique que junto ao nome do projeto aparecerá o nome do diretótio seguido da branch principal.  

4. Gerar um token https de acesso:  

Ir no repositório do Git Hub.  
Clicar na foto de perfil (canto direito superior).  
Clicar em `Settings` > `Developer settings`.  
Clicar em `Personal access tokens` > `Tokens (classic)`.  
Clicar em `Generate new token` > `Generate new token (classic)`.  
Em note: colocar um nome que identifica o token.  
Em `Experition`: escolher o prazo de validade do token.  
Em `Select scopes`: marcar os tipos de acesso do token.  
clicar em `Generate token`.  
Por fim, copiar o token.  

4.1 Enviar o repositório ao Git Hub pelo Eclipse:  

[Fonte](https://www.youtube.com/watch?v=jeIqjmlLiPI&ab_channel=GotasdeTecnologia)  

Clicar com o botão diretio do mouse no projeto.  
Clicar em `Team ` > `Commit`.  
Em `Unstage Changes`, clicar em `++`, para adicionar todas as alterações.  
Em `Commit Message`, escreve uma frase que irá identidicar o commit.  
Clique em `Push head...`.  

Irá abrir a tela `Destination Git Repository`:
Em `URI`: digitar o endereço do repositório (criado no passo `1.`).  
Em `Host`: será preenchido automaticamente.  
Em `User`: digitar o usuário do Git Hub.  
Em `Paswword`: digitar o token copiado.  
Clicar em `Preview` > `Push` > `Close`.  

4.2 Enviar o repositório ao Git Hub pelo terminal:  

git add *  
git commit -m "first commit"  
git branch -M master  
git remote add origin <nome_repositorio.git>  
git push -u origin master  

**Obs.**: se solicitar a senha, digite o token.  

<div id='importarclonar'/>

# 2. Importar ou Clonar o Projeto

**2.1 Clonar projeto**
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

**Adicionar o projeto clonado ao Eclipse**
6. `Git Repository` (`Windows` > `Show view` > `Other` > `Git` > `Git Repositories`  
7. `Botão direito do mouse no repositório`  
8. `Import Projects...`  
9. `Finish`  
**Obs.:** aguardar a importação (demora um pouco dependendo projeto).  

**2.2 Projeto já clonado**
1. `File` > `Import` > `Git` > `Projects from Git` > `Existing local repository` (projeto já clonado) > `Next`  
2. `Add` > `Directory` (URL do prjeto no PC) > `Add`  
3. `...`  

**Sincronizar o projeto Eclipse com o repositório remoto**
4. `Botão direito no projeto`  
5. `Team`  
6. `Synchronize workspace`  
7. `Yes`  
**Obs.:** aguardar a importação (demora um pouco dependendo projeto).  

<div id='confpath'/>

# 3. Reconfigurar o novo ambiente DEV (path)**  
1. `Botão direito no projeto`  
2. `Properties`  
3. `Java Build Path: JRE > Edit: colocar a JVM necessária > Finish`  
**Obs.:** verificar mais opções, se necessário. Ex.: Server, Target Runtimes.

<div id='addcomitar'/>

# 4. Atualizar, mesclar, comitar, etc o projeto com o repositório remoto
1. `Botão direito no projeto`  
2. `Team`  
3. `Escolher a opção desejada.` Ex.: `commit`, `push`, `pull`, etc  

[Fonte](https://douglasgaspar.wordpress.com/2021/01/28/utilizacao-do-git-em-ambiente-java-com-ide-eclipse/)  

<div id='executarjava'/>

# 5. Executar programa Java e JavaFX com arquivo executável .jar

Fonte: https://www.youtube.com/watch?v=lwOFg-W7OSM&ab_channel=BoostMyTool

1. Exporte um arquivo executável .jar
2. Verifique no projeto do Eclipse o argumento do Java Application: `Run` > `Run Configurations` > `Java Application`: selecione o corespondente > `Arguments` > `VM arguments`: copie todo argumento > `Close`
3. Abra o terminal (testei no cmd do Windows e deu certo)
4. Vá para a pasta onde o programa `.jar` está instalado
5. Execute o programa: `java <VM_ARGUMENTS> -jar PROGRAMA.jar`  
**Obs. 1**: `<VM_ARGUMENTS>` são os argumentos copiados no item '2.' e `PROGRAMA.jar` é o nome do programa a ser executado.  
**Obs. 2**: programas Java com JavaFX, ou qualquer outro que tem argumentos no Java Application, precisam ser executados desta maneira.  

<div id='gerandojar'/>

# 6. Gerando o JAR (bibliotecas/projeto) pelo Eclipse  

. Clique com o botão direito em cima do nome do seu `projeto`.  
. Selecione a opção `Export`.  
. Na tela `Export`, selecione a opção `Java`> `JAR file` e aperte o botão `Next`.  
. Selecione as pastas e arquivos a serem exportados.  
. Na opção `JAR file`, selecione o local em que você deseja salvar o arquivo `JAR` e escolhe as demais opções, se for o caso, então aperte `Next`.  
. Na próxima tela, clique em `Next`, para mais detalhes, ou clique em `Finish`.  

**Obs.**:  caso queira exportar seu projeto, ou algumas pastas ou arquivos de códigos, no passo 3, escolha `Archive File`, para exportar o projeto, ou parte do projeto em um arquivo compactado, e siga da mesma forma dos passos seguintes descritos acima.  

<div id='importarbiblioteca'/>

# 7. Como importar uma biblioteca no Eclipse?

No eclipse para importar um `jar` você precisa:

. Clicar com o botão direito no projeto.  
. Escolher `Build Path` > `Configure Build Path`.  
. Vai abrir uma janela, nela você vai na aba `Libraries`.  
. Agora basta clicar em `Add External JARs`.  
. Por fim, clique em `Apply and Close`.  

**Obs.**: você pode copiar todos para dentro de uma pasta dentro de seu projeto.  

<div id='principaisplugins'/>

# 8. Principais Plugins do Eclipse  

. **Darkest Dark** Darkest Dark Theme with DevStyle é um plugin gratuito que fornece um conjunto aprimorado de experiências para o Eclipse. Incluído: Tema.  
. [m2e-wtp](https://download.eclipse.org/m2e-wtp/releases/neon/)
 O pluguin m2e-wtp é usado para desenvolvimento Java EE e Web que fornece uma integração entre Maven Integration for Eclipse (aka m2e) e o Eclipse Web Tools Project (WTP).  
