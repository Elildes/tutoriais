----TUTORIAL GIT HUB----

Documentação:
Fonte: https://git-scm.com/book/pt-br/v1/Primeiros-passos-Sobre-Controle-de-Vers%C3%A3o
Fonte: https://git-scm.com/book/pt-br/v1/Primeiros-passos-Configura%C3%A7%C3%A3o-Inicial-do-Git
Fonte: https://www.youtube.com/watch?v=udw3J335ZHo (Curso Git - LCM Aquino)


# Gerar e adicionar nova chave SSH - Linux  

[Fonte](https://docs-github-com.translate.goog/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp)

. Verificar se existe chaves:  
ls -al ~/.ssh  

. No terminal digite:  
ssh-keygen -t ed25519 -C "your_email@example.com"  

. Reescreva outra chave (nome padronizado), ou desconsidere este passo e aperte ENTER, para salvar o nome da chave como 'id_ed25519':  
/home/elildes/.ssh/id_ssh_elildes  
> digite a senha (ssh)  

. Adicionar a chave SSH ao agente ssh  
sudo -s -H eval "$(ssh-agent -s)"  

. Adicionar a chave privada SSH ao agente ssh e armazenar no chaveiro:  
sudo -s -H ssh-add --apple-use-keychain ~/.ssh/id_ssh_elildes  

. Se der erro digite:  
/usr/bin/ssh-add -k ~/.ssh/id_ssh_elildes  
> digite a senha ssh  

. Verificar se as chaves foram criadas:  
ls -al ~/.ssh  

. Certificar se o agente ssh estar em execução:  
eval "$(ssh-agent -s)"  
> Agent pid 59566  


# Adicionar a chave SSH a conta no GitHub - Navegador Web

[Fonte](https://docs-github-com.translate.goog/pt/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp)  

. Verificar se existe chave pública (name_key.pub):  
ls -al ~/.ssh  

. Copiar a chave ṕública p/ área de transferência:  
pbcopy < ~/.ssh/id_ssh_elildes.pub  
**Obs.**: copia o conteúdo do arquivo 'id_ssh_elildes.pub'  

. Se der erro:  
cat < ~/.ssh/id_ssh_elildes.pub  

. Copiar direto do terminal a chave pública. Ex.:  
ssh-ed25519 BBBBC3NzaC1lZPA1NTE5CCCCILqKHEGW0WJjl456uwPuI9JblYEtPqLLjbfyPthxWEy4 exemplo@seu.email  

. No site do GitHub:  
Clicar na foto de perfil  
Configurações  
Acesso >  chaves SSH e GPG > Nova chave SSH ou Adicionar chave SSH  
Titulo para uma nova etiqueta descritiva (nome da chave)  
Iipo de chave: autenticação ou assinatura (chave de autenticação)  

**Obs.**: tipo de chave assinatura assina tags e commits localmente, para dar autentiidade para outras pessoas do que foi feito. Fonte: https://docs-github-com.translate.goog/pt/authentication/managing-commit-signature-verification/about-commit-signature-verification?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp  

Colar a chave no campo 'Chave' (key)  
Clique em Adicionar SSH KEY  
Confirmar o acesso a conta  


I) Criar novo repositório (direto do site do git hub):
> + (canto direito superior)
> New repository
> Repository name
> Description
> Public/Private
> Initialize... (clonar o repositório imediatamente no PC. Pule esta etapa se estiver 'importando')
> Add .gitignore (por padrão 'não marcar': git vai ignorar: informações/ferramentas do PC que não será enviado ao git): normalmente adiciona a ferramenta que o projeto foi feito (C, java..)
> Add a licence (adicionar uma licença se tiver)
> Creat repository

1) Configuração inicial do Git:

1.1) Criar novos usuário/email (identidade):
> git config --global user.email "you@example.com"
> git config --global user.name "Your Name"
Obs.1: --global: caso vc precise definir outros usuarios/emails para outros projetos não precisa digitar --global.
Obs.2: Usando --global, basta fazer isso apenas uma vez, pois o Git usará esta identidade toda vez que o sistema for usado.
Obs.3: A identidade deverá ser criada após instalar o o Git (todos commits usam este usuário).

1.2) Editor padrão:
. Para configurar o editor de texto padrão que será utilizado no Git:
> git config --global <nome_editor>
. Ex.: core.editor emacs ou core.editor="C:\\Program Files\\Sublime Text 3\\subl.exe" -w

2) Obter um repositório/projeto git:

2.1) Primeira forma (do pc para o Git):
  Inicializar um repositório em uma pasta existente:
. Ir para a pasta a ser monitorada e digitar:
> git init (inicializar: dentro da pasta do projeto)
. Cria um sub-diretório .git que tem todos os arquivos do seu repositório.
. Depois faça um commit inicial:
> git add *.c (adiciona todos arquivos .c: ou os arquivos que vc quer adicionar/moitorar)
> git commit -m "Nome_da_Mensagem"
> git push (envia as alterações feitas ao repositório remoto), ou:

2.2) Segunda forma (baixar/clonar do git para o pc):
. No seu pc, abra o terminal e vá até a pasta que queira baixar o repositório
. Copiar a url do repositório >>> https://github.com/Elildes/ufrn-2019.1-itp-projeto.git
. No PC (programa do git já instalado: com o terminal entra na pasta a ser baixado)
> git clone <url do repositório>: salva uma pasta com o mesmo nome do projeto. Ex.: ufrn-2019.1-itp-projeto (nome da pasta criada)
Obs.: após o comando acima, o repositório do projeto será baixado dentro da pasta onde o terminal está acessando.
Obs.: caso queira clonar o repositório em um diretório diferente do projeto, especifique esse diretório conforme abaixo:
> git clone https://github.com/Elildes/ufrn-2019.1-itp-projeto.git projeto (o repositório será salvo na pasta projeto)

Obs.01: Se não tiver clonado um repositório existente e quer conectar seu repositório a um
servidor remoto, você deve adicioná-lo com:
> git remote add origin <servidor>

Obs.02:
> git fork <URL do github>  (baixa o repositório de terceiros).????????

3) Gravando alterações no repositório  - Adicionar/enviar ao GitHub (enviar atualizações):
> git add <file.ext> (adiciona um arquivo) ou:
> git add * (todos arquivos)
> git commit -m "Mensagem xxx" (empacota as alterações feitas no repositório baixado)
> git remote add origin <URL do Git>: (se tiver dentro do seu git não precisa)
> git push (envia as alterações feitas ao repositório remoto), ou:
> git push -u origin master (alteracões estão no head local: enviar ao repositório remoto)
> ...pede senha/usuário (quando for feito o projeto, clonado não pede senha???)

> pull request (requisição de alteração de arquivo: solicitar ao dono do perfil)

4) Diversos:
> git status (verifica o status dos arquivos: quais arquivos não foram enviados ao repositório...)
. git diff [chave]			(ver diferenças entre commits: chave é o rash, apenas 7 char)
> git pull (atualiza o repositório no pc: fazer isto logo após abrir o projeto monitorado)
. Verificar as configirações:
> git config --list (mostra todas as configurações: Ex.:)
user.name=Scott Chacon
user.email=schacon@gmail.com
color.status=auto
color.branch=auto
color.interactive=auto
color.diff=auto
...
. Verificar nome de usuário (identidade)
> git config user.name
. Verificar e-mail do usuário (identidade)
> git config user.mail
Obs.: git config {key}
. Histórico de commits (listar todos os commits):
> gitk		(ferramenta gráfica)
> git log
> git log -p -2		(mostra o diff introduzido em cada commit ref. aos 2 últimos commits)
> git log stat		(lista arquivos: quais foram modificados, quantos modificados e quantas linhas foram adicionadas/removidas)

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
. Login no GitHub
. Ir na URL do repositório de terceiros que deseja copiar
> Clicar em Fork (URL do GitHub que quer copiar)
. Pronto, url copiada para o seu usuário do GutHub

8.2) Contribuir com projeos de terceiros - Pull Request (On Line: usando o GitHub)
. Após fazer Fork (adicionar projeto de terceiros ao seu GitHub):
> Clonar o projeto para o PC
> Entrar na pasta do projeto clonado
> fazer as modificações
> adicionar e comitar alterações
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
