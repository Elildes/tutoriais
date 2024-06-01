# TUTORIAL GIT HUB

Documentação:  
[Documentation](https://git-scm.com/doc)  
[Curso Git Porf. Aquino](https://www.youtube.com/watch?v=udw3J335ZHo)

1. [Gerar e adicionar nova chave SSH - Linux](#gerarchavesshlinux)
2. [Gerar e adicionar nova chave SSH - Windows](#gerarchavesshwin)
3. [Adicionar a chave SSH a conta no GitHub - Navegador Web](#addsshgithub)
4. xx  
8.2. [Contribuir com projetos de terceiros - Pull Request](#addContribuircomprojetos)

 
# Gerar e adicionar nova chave SSH - Linux  

[Fonte 01](https://docs-github-com.translate.goog/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp)  
[Fonte 02](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=windows)  

## Verificar se existe chaves
```bash
ls -al ~/.ssh  
```

## No terminal digite:  
ssh-keygen -t ed25519 -C "your_email@example.com"  

. Reescreva outra chave (nome padronizado), ou desconsidere este passo e aperte ENTER, para salvar o nome da chave como 'id_ed25519':  
/home/user/.ssh/id_ssh_user  
> digite a senha (ssh)  
> digite novamente a senha (ssh)  

## Adicionar a chave SSH ao agente ssh (gerenciador de chaves)

1. Inicie o ssh-agent em segundo plano:  
```bash
$ eval "$(ssh-agent -s)"
> Agent pid 59566
```

2. Adicione sua chave SSH privada ao ssh-agent:
```bash
ssh-add /home/<seu_usuario>/.ssh/id_ed25519
```

3. Adicione a chave pública SSH à sua conta em GitHub. Para obter mais informações, confira [Adicionar uma nova chave SSH à sua conta do GitHub](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)  

## Como adicionar uma nova chave SSH à sua conta do Git Hub

[Fonte](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account)  

### Pré-requisitos
Antes de adicionar uma nova chave SSH à sua conta em GitHub.com, conclua as etapas a seguir.  

1. Verifique se há chaves SSH existentes. Para obter mais informações, confira "Verificar se há chaves SSH".  
```bash
$ ls -al ~/.ssh
# Lists the files in your .ssh directory, if they exist
```

2. Gere uma nova chave SSH e adicione-a ao agente SSH do computador. Para obter mais informações, confira "Gerando uma nova chave SSH e adicionando-a ao agente SSH".  

### Como adicionar uma nova chave SSH à sua conta

**No terminal Linux**  

1 Copie a chave pública SSH para a sua área de transferência:  
```bash
$ cat ~/.ssh/id_ed25519.pub
# Then select and copy the contents of the id_ed25519.pub file
# displayed in the terminal to your clipboard
```

**No Git Hub**  

1 No canto superior direito de qualquer página, clique na foto do seu perfil e em Configurações.  

2. Na seção "Acesso" da barra lateral, clique em  Chaves SSH e GPG.  

3. Clique em Nova chave SSH ou Adicionar chave SSH.  

4. No campo "Title" (Título), adicione uma etiqueta descritiva para a nova chave. Por exemplo, se estiver usando um laptop pessoal, você poderá chamar essa chave de "Laptop pessoal".  

5. Selecione o tipo de chave: autenticação ou assinatura. Para saber mais sobre a assinatura de commit, confira "Sobre a verificação de assinatura de commit".  

6. No campo "Chave", cole sua chave pública.  

7. Clique em Adicionar chave SSH.  

8. Se solicitado, confirme acesso à sua conta em GitHub. Para obter mais informações, confira "Modo sudo".  


<div id='gerarchavesshwin/'>	
# Gerar e adicionar nova chave SSH - Windows  

[Fonte 01](https://docs-github-com.translate.goog/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=windows&_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp)  
[Fonte 02](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=windows)  

## Pré-requisitos
	
a. Aconselho a usar o `terminal GitBash`.  
b. Caso o `Cliente OpenSSH` não esteja ativado, fazer o seguinte:  
```
Clicar na tecla Windows.
Configurações.
Aplicativos.
Aplicativos e recursos: Recursos opcionais.
Procurar por Cliente OpenSSH e instalar.
```

. Verificar se existe chaves:  
ls -al ~/.ssh  

## Gerar uma nova senha SSH  

1. Abra o Git Bash.  
	
2. No terminal do GitBash (criar uma nova chave SSH):  
ssh-keygen -t ed25519 -C "your_email@example.com"  

**Nota**: se está usando um sistema `legacy` não tem suporte ao `Ed25519`, então use o seguinte comando:
`$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
	
. Reescreva outra chave (nome padronizado), ou desconsidere este passo e aperte ENTER, para salvar o nome da chave como 'id_ed25519':  
 
/c/Users/user/.ssh/id_ssh_user [aperte ENTER]  
ou digite:  
C:\Users\user/.ssh/id_ssh_user [aperte ENTER]  

**Obs.**: veja o padrão do diretório no terminal.  

3. Digitar a nova senha do SSH  
	
> digite a senha (ssh)  
> digite novamente a senha (ssh)  

## Adicionar sua shave  SSH para o ssh-agent (gerenciador de chaves)

**Pré-requisitos**  
	
Certifique-se que verifique se existe senhas SSH:  
`ls -al ~/.ssh`  
	
1. Verifique se o `agent-ssh` está em execução:  

# Inciar o ssh-agent:  
eval "$(ssh-agent -s)"  

**Obs.**: pode ser necessário usar um comando diferente. Por exemplo, talvez seja necessário usar o acesso `sudo -s -Hantes` para iniciar o agente ou usar `exec ssh-agent bash` ou `exec ssh-agent zsh` para executar o agente.  

**Ex.:**  
```
exec ssh-agent bash  
eval "$(ssh-agent -s)"  
```

**Obs.**: se mesmo assim não consehuir, configure o `ssh-agent` a iniciar manualmente, pois assim que você executar, o serviço irá iniciar.  
**Ex.:**  
```
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
eval "$(ssh-agent -s)"
```

[Fonte](https://stackoverflow.com/questions/52113738/starting-ssh-agent-on-windows-10-fails-unable-to-start-ssh-agent-service-erro)  

2. Adicionar a chave privada SSH ao agente ssh e armazenar no chaveiro:  
`ssh-add --apple-use-keychain ~/.ssh/id_ssh_user`  
Ou:  
`ssh-add ~/.ssh/id_ssh_user`
	
. Se der erro digite:  
**Obs.**: acessar o link fonte.  

. Verificar se as chaves foram criadas:  
ls -al ~/.ssh  

. Certificar se o agente ssh estar em execução:  
eval "$(ssh-agent -s)"  
> Agent pid xxx  


<div id='addsshgithub/'>


# Adicionar a chave SSH a conta no GitHub - Navegador Web

[Fonte](https://docs-github-com.translate.goog/pt/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp)  

. Verificar se existe chave pública (name_key.pub):  
ls -al ~/.ssh  

. Copiar a chave ṕública p/ área de transferência:  
pbcopy < ~/.ssh/id_ssh_user.pub  
**Obs.**: copia o conteúdo do arquivo 'id_ssh_user.pub'  

. Se der erro, copiar direto do terminal a chave pública.  
cat < ~/.ssh/id_ssh_user.pub  
**Ex.**:  ssh-ed25519 BBBBC3NzaC1lZPA1NTE5CCCCILqKHEGW0WJjl456uwPuI9JblYEtPqLLjbfyPthxWEy4 exemplo@seu.email  

. No site do GitHub:  
Clicar na foto de perfil  
Configurações  
Acesso >  chaves SSH e GPG > Nova chave SSH ou Adicionar chave SSH  
Titulo para uma nova etiqueta descritiva (nome da chave)  
Iipo de chave: autenticação ou assinatura (chave de autenticação)  

**Obs.**: tipo de chave assinatura assina tags e commits localmente, para dar autentiidade para outras pessoas do que foi feito.  
[Fonte:](https://docs-github-com.translate.goog/pt/authentication/managing-commit-signature-verification/about-commit-signature-verification?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp)  

Colar a chave no campo 'Chave' (key)  
Clique em Adicionar SSH KEY  
Confirmar o acesso a conta  


# I) Criar novo repositório (direto do site do git hub)  
Clicar em + (canto direito superior)  
`New repository`  
`Repository name`  
`Description`  
`Public/Private`  
`Initialize...` (clonar o repositório imediatamente no PC. Pule esta etapa se estiver 'importando')  
`Add .gitignore` (por padrão não marcar: o git vai ignorar:  informações/ferramentas do PC que não será enviado ao git): normalmente adiciona a ferramenta que o projeto foi feito (C, java..)  
`Add a licence` (adicionar uma licença se tiver)  
`Creat repository`  

# 1) Configuração inicial do Git:  

## 1.1) Criar novos usuário/email (identidade):  
`git config --global user.email "you@example.com"`  
`git config --global user.name "Your Name"`  

**Obs.1**: --global: caso vc precise definir outros usuarios/emails para outros projetos não precisa digitar --global.  
**Obs.2**: Usando --global, basta fazer isso apenas uma vez, pois o Git usará esta identidade toda vez que o sistema for usado.  
**Obs.3**: A identidade deverá ser criada após instalar o o Git (todos commits usam este usuário).  

## 1.2) Editor padrão:  
. Para configurar o editor de texto padrão que será utilizado no Git:  
`git config --global <nome_editor>`  
**Ex.**: `core.editor emacs ou core.editor="C:\\Program Files\\Sublime Text 3\\subl.exe" -w`  

# 2) Obter um repositório/projeto git:  

## 2.1) Primeira forma (do pc para o Git):  
  Inicializar um repositório em uma pasta existente:  
. Ir para a pasta a ser monitorada e digitar:  
`git init` (inicializar: dentro da pasta do projeto)  
. Cria um sub-diretório .git que tem todos os arquivos do seu repositório.  
. Depois faça um commit inicial:  
`git add *` (adiciona todos arquivos)  
`git commit -m "Nome_da_Mensagem"`  
`git branch -M master`  
`git remote add origin https://github.com/_nome_repositorio.git`  
. Enviar as alterações feitas ao repositório remoto:  
`git push -u origin master`  
. Ou:   
`git push --set-upstream origin master`  

. Se o repositório já existe no pc:  
`git remote add origin https://github.com/_nome_repositorio.git`  
`git branch -M master`  
`git push -u origin master`  

## 2.2) Segunda forma (baixar/clonar do git para o pc):  
. No seu pc, abra o terminal e vá até a pasta que queira baixar o repositório  
. Copiar a url do repositório >>> https://github.com/user/ufrn-2019.1-itp-projeto.git  
. No PC (programa do git já instalado: com o terminal entra na pasta a ser baixado)  
`git clone <url do repositório>`: salva uma pasta com o mesmo nome do projeto. Ex.: ufrn-2019.1-itp-projeto (nome da pasta criada)  
**Obs.**: após o comando acima, o repositório do projeto será baixado dentro da pasta onde o terminal está acessando.  
**Obs.**: caso queira clonar o repositório em um diretório diferente do projeto, especifique esse diretório conforme abaixo:  
`git clone https://github.com/user/ufrn-2019.1-itp-projeto.git` projeto (o repositório será salvo na pasta projeto)  

**Obs.01**: Se não tiver clonado um repositório existente e quer conectar seu repositório a um servidor remoto, você deve adicioná-lo com:  
`git remote add origin <servidor>`  

**Obs.02**:  
`git fork <URL_do_github>` Baixa e faz uma cópia do repositório de terceiros na sua conta Git.  

# 3) Gravando alterações no repositório  - Adicionar/enviar ao GitHub (enviar atualizações):  
`git add <file.ext> (adiciona um arquivo) ou:  
`git add * (todos arquivos)  
`git commit -m "Mensagem xxx"` (empacota as alterações feitas no repositório baixado)  
`git remote add origin <URL do Git>`: (se tiver dentro do seu git não precisa)  
`git push` (envia as alterações feitas ao repositório remoto), ou:  
`git push -u origin master` (alteracões estão no head local: enviar ao repositório remoto)  
...pede senha/usuário (quando for feito o projeto, clonado não pede senha???)  

`pull request` (requisição de alteração de arquivo: solicitar ao dono do perfil)  

4) Diversos:  
`git status` (verifica o status dos arquivos: quais arquivos não foram enviados ao repositório...)  
`git diff [chave]` (ver diferenças entre commits: chave é o rash, apenas 7 char)  
`git pull` (atualiza o repositório no pc: fazer isto logo após abrir o projeto monitorado)  
. Verificar as configirações:  
`git config --list` (mostra todas as configurações: Ex.:)  
`user.name=Scott Chacon`  
`user.email=schacon@gmail.com`  
`color.status=auto`  
`color.branch=auto`  
`color.interactive=auto`  
`color.diff=auto`  
...  
. Verificar nome de usuário (identidade):  
`git config user.name`    
. Verificar e-mail do usuário (identidade):  
`git config user.mail`  
**Obs.**: `git config {key}`  
. Histórico de commits (listar todos os commits):  
`gitk`		(ferramenta gráfica)  
`git log`  
`git log -p -2`         (mostra o diff introduzido em cada commit ref. aos 2 últimos commits)  
`git log stat`		(lista arquivos: quais foram modificados, quantos modificados e quantas linhas foram adicionadas/removidas)  

5) Apagar commit
Por exemplo, se quiser apagar o commit com hash 1ca0fcd:
> git rebase -i 1ca0fcd~1
Este comando vai abrir o VIM com a lista de commits após 1ca0fcd (inclusive).
Ex. de linha:
> pick 1ca0fcd <nome_do_commit> ....... (basta apagar e salvar)
. Para apagar um commit, basta apagar a linha desse commit.
. Para apagar um commit, basta apagar a linha desse commit (como indicado nas instruções 
- "If you remove a line here THAT COMMIT WILL BE LOST"). Depois escreve :wq para gravar e sair 
do VIM, e o rebase interactivo vai:

    apagar o commit 1ca0fcd e todos os commits após 1ca0fcd
    re-escrever todos os commits após 1ca0fcd

É possivel que ao re-escrever os commits ocorram conflitos. Nesse caso o rebase vai pausar, 
pedir que resolvas os conflitos, e depois continues usando git rebase --continue.

Fonte: https://pt.stackoverflow.com/questions/57221/como-remover-um-commit-antigo

6) Obtendo Ajuda

Caso você precise de ajuda usando o Git, exitem três formas de se obter ajuda das páginas de manual (manpage) para quaisquer comandos do Git:

$ git help <verb>
$ git <verb> --help
$ man git-<verb>

Ex.: $ git help config

7) Criar, Mesclar e Excluir Ramos:

7.1) Criar nova branch e enviar alterações (do ramo nome_da_branch para ramo origin/nome_da_branch-remoto)
> git branch nome_da_branch		(criar nova branch/ramo)
> git checkout nome_da_branch		(entra na nova branch/ramo), ou:
> git checkout -b nome_da_branch (cria e entra na branch)
. Após fazer as alterações nos arquivos:
> git add . (adicionar as alterações ao repositório local)
> git commit -m "mensagem"
> git log				(lista os commits)
> git push -u origin nome_da_branch	(envia do ramo da nome_da_branch pro ramo origin/nome_da_branch-remoto)
. pede usuário/senha
. git diff [chave]
			(ver diferenças entre commits: chave é o rash, apenas 7 char)
7.2) Mesclar (merge) - atualizar a branch master
> git checkout master
> git merge nome_da_branch		(mescla o ramo master com o ramo nome_da_branch: do nome_da_branch para o master)
> git push -u origin master   		(envia do ramo master pro ramo origin/master-remoto)
. pede usuário/senha

7.3) Excluir Ramos
> git branch -d nome_da_branch		(exclui o ramo nome_da_branch)
Obs.: a intenção é criar um novo ramo, fazer alterações, mesclar as alterações com o ramo master e depois excluir o ramo criado.
Obs.: permite que várias pessoas façam alterações no repositório de um grande projeto, para depois mesclar (merge)

7.4) Resolvendo conflitos (quais códigos devem ser removidos)
> git checkout master			(entra no ramo master)
. após alterações feitas no ramo master:
> git add .
> git commit -m "mensagem"
> git checkout nome_da_branch		(entra no ramo nome_da_branch)
. após alterações feitas no ramo nome_da_branch:
> git add .
> git commit -m "mensagem"
. resolvendo conflitos:
> git checkout master			(entra no ramo master)
> git merge nome_da_branch		(mesclar master/nome_da_branch)
. mensagem de conflito... automatic merge failed...
. Ir no arquivo em conflito:

<<<<<<<<<<<< HEAD: 			(indica o conteúdo que consta no ramo que vc se encontra)
	hahhahahahs ggsggggsgs  d d d d ddd
	jjdjdgge  ggdgdgdgdg
=========== 				(separador)
	hahhahahahs ggsggggsgs  b b b b bbb
	jjdjdgge  ggdgdgdgdg
>>>>>>>>>>>> nome_da_branch		(indica o conteúdo no ramo nome_da_branch)

Obs.: apagar o que não quer manter (resolver antes de enviar)
. Após apagar o que não que:
Obs.2: alterar um arquivo por vez
> git add [nome_arquivo]
> git commit -m "mensagem"
> git push
Obs.: permite mesclar arquivos que foi alterado por mais de uma pessoa
Fonte: https://www.youtube.com/watch?v=cUAmhmbFZd4

7.5) Diversos
> git branch 				(lista de branches)
> git branch nome_da_branch		(cria uma nova branch)
> git checkout -- <arquivos>		(Desccartar mudanças no diretório de trabalho)
> git checkout nome_da_branch 		(entrar na branch)
> git s				        (nostra somente os arquivos modificados, ou: git status -s)


--------------------------------------------------------------------------------
(????????????????)
> git merge nome_da_branch (se não tiver branch não precisa deste comando)
> git add .
> git commit -m "mensagem"
> git push
. É mostrado mensagem de erro dizendo que não tem a versão atual: tem que resolver antes de enviar
. Trazer a versão atual pra depois enviar
> git pull
. É mostrado mensagem dizendo que tem conflitos
. fazer a mesclagem (editor, por exemplo, do Visual Studio, nano, vim, etc)
Obs.1:
<<<<<<<<<<<< HEAD: indica o conteúdo que consta no repositório remoto
=========== (separador)
>>>>>>>>>>>> nome_da_branch: indica o conteúdo na branch
Obs.2: alterar um arquivo por vez
> git add .
> git commit -m "mensagem"
> git push
Obs.: permite mesclar arquivos que foi alterado por mais de uma pessoa
(????????????????)
--------------------------------------------------------------------------------



8.1) Fork (adicionar projeto de terceiros ao seu GitHub)

Obs.: usado muito para contribuidores de repositórios.  

. Login no GitHub
. Ir na URL do repositório de terceiros que deseja copiar
> Clicar em Fork (URL do GitHub que quer copiar)
. Pronto, url copiada para o seu usuário do GutHub

<div id='addContribuircomprojetos/'>
	
8.2) Contribuir com projetos de terceiros - Pull Request (On Line: usando o GitHub)
. Após fazer Fork (adicionar projeto de terceiros ao seu GitHub):
> Clonar o projeto para o PC
> Entrar na pasta do projeto clonado
> fazer as modificações
> adicionar e comitar alterações para o repo origin (pessoal)
> fazer pull com rebase (atualizar e pocicionar o código para o final):
```
// Pull com rebase - pegar alterações do repo central (forkado)
git remote add upstream <url_repo_central>		
git remote -v
origin <url_repo_pessoal> (fetch)
origin <url_repo_pessoal> (push)
upstream <url_repo_central> (fetch)	// pegar alterações
upstream <url_repo_central> (push)	// enviar alterações

Obs.: origin e upstream são repo remotos.
		
git pull upstream main --rebase		// atualiza e posiciona os commits ao final do repo. `main` é a branch remota.
					// ou: no GitHub -> url_repo -> Sync fork -> Update branch
```
> Abrir a pasta do projeto no GitHub
> Clicar em Compare e Criar Pull request (título + detalhes)
> enviar ....
. O usuário dono do projeto:
> Clicar em Mesclar (GitHub)
> Clicar em Mark resolved (GitHub)
> Clicar em Commit merge (GitHub)
> Clicar em Merge pull request (GitHub)
> Clicar em Commit e Confirm Merge (GitHub)

8.2) Contribuir com projeos de terceiros - Pull Request (usando o Git - terminal)
. Após fazer Fork (adicionar projeto de terceiros ao seu GitHub):
> Clonar o projeto para o PC
> Entrar na pasta do projeto clonado
> Criar e entrar na branch
> Criar ou fazer as modificações nos arquivos e depois adicionar/comitar/enviar...
. Enviar alterações (contribuições ao projeto de terceiros)
> git push --set-upstream origin nome_da_branch
> login + senha
> Clicar em Compare e Pull Request (na pasta do repositório do GitHub)
> Título + detalhes
> Create Pull request
. pronto, foi enviado as modificações para ser atendida
Fonte: https://www.youtube.com/watch?v=dSUT0Y7suPI
Obs.: ideal para quem quer contribuir com algum projeto do gitHub

9) Criando e enviando tags (releases/versões):
. Criar tags logo após o commit:
> git tag -a [nome-tag] -m 'mensagem'	(cria uma tag anotada: tag + commit)
> git tag -s [nome-tag] -m 'mensagem'	(cria tag assinada com GPG)
> git tag [nome-tag]			(cria uma tag leve: dados do commit)
. Tagueando mais tarde:
> git tag -a v1.2 9fceb02  		(cria uma tag de nome v1.2 no commit que tem como chave 9fceb02)
. Compartilhando tags:
> git push origin [nome-tag]		(envia uma tag específica ao servido/originr remoto), ou:
> git push origin --tags		(envia as tags ao servidor remoto)
. Visualizando as tags:
> git tag				(lista todas as tags)
> git show				(ver as informações da tag + commit + assinatura...)
> git show [nome-tag]			(lista os detalhes de uma tag específica)
> git tag -v [nome-tag]			(lista uma tag assinada)
Obs.: Agora, quando alguém clonar ou fizer um pull do seu repositório, eles irão ter todas as suas tags também.





***** Git Lab IMD *****

IMD0121 - ARQUITETURA DE COMPUTADORES
The repository for this project is empty

You can create files directly in GitLab using one of the following options.

Command line instructions

You can also upload existing files from your computer using the instructions below.
Git global setup

git config --global user.name "YOUR NAME"
git config --global user.email "user@email.com"

Create a new repository

git clone https://url_your_user/name_your_project.git
cd name_your_project
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Push an existing folder

cd existing_folder
git init
git remote add origin https://url_your_user/name_your_project.git
git add .
git commit -m "Initial commit"
git push -u origin master

Push an existing Git repository

cd existing_repo
git remote rename origin old-origin
git remote add origin https://url_your_user/name_your_project.git
git push -u origin --all
git push -u origin --tags
