# Java FX

## Introdução

. Possibilita injeção de css, bootstrap, etc.  
. Possibilita fazer as classes e depois a interface.  
. Interface: classe de controle que interage com as classes de modelo.  
. Usa padrão FXML.  

. SceneBuilder: é usado para manipular as telas gráficas (interfaces) das classes de modelos.  
. Se precisar alterar o código, faz direto nas classes.  
. Classes de controle:  
	. Classes gerados no SceneBuilder depois das telas prontas, uma classe para cada Tela.  
	. Serão as classes de controle através dos templates criados pelo SceneBuilder.  
	. Interagem com as interfaces e as classes de modelo.  

. Class Principal.java:  
	. Implementa os métodos para a aplicação funcione.  
	. Dois componentes/atributos: Stage e BorderPane/AnchorPane.  
	
## PASSO A PASSO

1. Instalar o Java  
2. Instalar e configurar o Eclipse  
3. Instalar e Configurar o Scene Builder  

## 1. INSTALAR O JAVA  

. Instalar o Java JDK 8 (jdk-1.8-xxx) - já vem com JavaFX (as outras opções não deram certo):  
	. https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html  
	. https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html  
	. Fonte: https://www.youtube.com/watch?v=00GDveAy8dA - Como BAIXAR E INSTALAR O JAVA (Win 10)  
. Configurar as variáveis de ambientes.  

## 2. INSTALAR E CONFIGURAR O ECLIPSE  

Fonte 1: tutorial: https://code.makery.ch/pt/library/javafx-tutorial/part1/  

1. Baixar o Eclipse IDE versão 2021-06 (4.20.0): https://www.eclipse.org/downloads/packages/  
. Extrair o arquivo em uma pasta onde o programa ficará instalado.  
. Escolher a versão Java EE IDE for Enterprise Java Developers (mais completa).  

2. Setar Compilador e Máquina Virtual:  
> Window > Preferences > Java > Compiler > JDK Compliance: 1.8 (marcar a versão do JDK) > Apply  

. Setar o diretório do JDK (a mesma vessão do compilador):  
> Window > Preferences > Java > Installed JRES > Add: /usr/lib/jvm/jdk1.8.0/lib/jfr/...jar)  

. Setar o caminho do Scene Builder (somente se usou Modo 1)  
> Window > Preferences > JavaFX: executável do SceneBbuilder: /opt/scenebuilder/bin/SceneBuilder  

## CONFIGURANDO O ECLIPSE COM O JAVAFX  

3. Instalar/configurar o plugin JavaFX no Eclipse - Modo 1 e Modo 2:  

**Modo 1**

Fonte 1: https://www.youtube.com/watch?v=B6TydRM0Nu8 - JavaFX - Configuração do Eclipse  
Fonte 2: https://openjfx.io/openjfx-docs/ - JavaFX and Eclipse > Non-modular from IDE  
Fonte 3: tutorial: https://openjfx.io/openjfx-docs/ - Documentação Oficial do JavaFX and Eclipse > Non-modular from IDE  

**Baixar o plugin do JavaFX no Eclipse**:  
1) Help  
2) Eclipse Marketplace  
3) Search > Find: e(fx)clipse > install > aceitar as licenças > finish > aceitar certificados > restart: baixar/instalar o plugin  
. Obs.: verificar o status até terminar o download (demora um pouco a instalação).  
4) Verificar se o plugin JavaFX foi instalado: File > New > Project: se aparecer o JavaFX foi instalado corretamente.  

**Baixar a biblioteca JavaFX e incluir no Eclipse:**  
. Obs.: Documentação oficial: https://openjfx.io/openjfx-docs/  
1) Escolher o SO desejado (Linux ou Windows) e baixar a versão SDK: https://gluonhq.com/products/javafx/  
. Obs.01: baixar a mesma versão do Java JDK e LTS (melhor). Ex.: 11.x.xx  
. Obs.02: ver arquivos baixados na pasta de LP2.  
2) Extrair o arquivo em uma pasta onde o programa ficará instalado.  
. Ex. arquivo: openjfx-11_windows-x64_bin-sdk.zip  
. Ex. pasta/extraída: C:\Users\pc-master-win\eclipse\JavaFx\javafx-sdk-11  
Obs.1: os arquivos/bibliotecas .jar que estão na pasta lib serão importados pelo Eclipse.  
Obs.2: Non-modular from IDE: este é o tutorial que deverá ser utilizado na configuração do JavaFX no Eclipse.  
No Eclipse:  
3) Window  
4) Preferences  
5) Java  
6) Build Path  
7) User Libraries  
8) New (colocar nome): Ex.: JavaFX11  
9) OK  
10) Add External JARs  
11) Adicionar todos arquivos .jar do arquivo JavaFX:  
. Ex.:  Pasta = C:\Users\pc-master-win\eclipse\JavaFx\javafx-sdk-11\lib\*.jar  
. Obs.: arquivos .jar extraídos do arquivo JavaFX 'openjfx-11_windows-x64_bin-sdk.zip'  
12) Apply e Close  

**Criar um projeto JavaFX para testar se foi instalado corretamente**:  
1) File
2) New
3) Project ou Other
4) JavaFX
5) JavaFX Project
6) Next
7) Colocar o nome do projeto
8) Next
9) Libraries
10) Classpath
11) Add library (adicionar a biblioteca JavaFX)
12) User library
13) Next
14) Escolher a biblioteca JavaFX (que foi incluída no Eclipse. Ex.: JavaFX11)
15) Finish
Obs.: todos os arquivos JARs deverão aparecer.
16) Next
17) Finish
Obs.: pastas criadas:
NomeProjeto
. src
.. application 
... Main.java
... application.css (não será usada)
. JRE System...
. JavaFX11 (nome criado anteriormente: todos arquivos JARs importados)
. build.fxbuild
Obs.: no projeto deverá ter somente uma biblioteca JavaFX. Ex.: JavaFX11.
Se você esqueceu de adicionar a biblioteca JavaFX (itens de '9)' a '14'), pode adidionar:
a) Botão direito do mouse em cima do projeto
b) Build Path
c) Add Libraries
d) Idem itens de '9)' a '14' 
18) Executar o projeto: Main.java (botão direto) > Run As > Java Application
19) Irá aparecer um erro porque a 'Run' (Main.java) que foi criado ainda não está configurada.
Configurar o Run (Main.java) para poder usar os módulos do JavaFX:
20) Run > Run Configurations > Java Application > Main:
21) Arguments
22) VM arguments: --module-path "/path/to/javafx-sdk-17.0.1/lib" --add-modules javafx.controls,javafx.fxml
. /path/to/javafx-sdk-17.0.1/lib = Ex.: C:\Users\pc-master-win\eclipse\javafx-sdk-11\lib (pasta do JavaFX)
. javafx.fxml: neste exemplo não será usado (pode deletar)
. Fonte: https://openjfx.io/openjfx-docs/ (item: '3. Add VM arguments' - Linux/Mac ou Winodws)
23) Run: deverá aparecer uma janela vazia.


* Modo 2 *

 (não testei no windows)

> Help > Install New Software:
1) Work with: http://download.eclipse.org/efxclipse/updates-nightly/site (url do plugin efxclipse) + ADD/ENTER
	Fonte1: https://projects.eclipse.org/projects/technology.efxclipse/downloads
	Fonte2: https://www.tutorialkart.com/javafx/install-javafx-in-eclipse-ide/
2) Escolher: e(fx)clipse > next ...
3) Reiniciar o Eclipse.

Obs.: Modo 1 usa a opção Build Path e Modo e usa a Opção JavaFX.


3. INSTALAR O SCENE BUILDER


. Instalar Scene builder - versão atual 16
	. Fonte: https://gluonhq.com/products/scene-builder/


CRIANDO UM NOVO PROJETO JAVAFX NO ECLIPSE

1) Criar novo projeto.
2) Criar pacotes + classe principal (Ex.: MainApp.java).
3) Criar Classes de Modelo.
4) Criar Classes de Banco de Dados (Ex.: ClienteDAO).
5) Criar Classes de Visão - telas das Classes de Modelo + tela principal (Ex.: 'TelaCadastroCliente.fxml' + 'TelaPrincipal.fxml').
6) Criar Classes de Controle com base nas Classes de Visão (Ex.: TelaCadastroClienteController.java):
6.1) Criar Classes Secundárias de Controle (eventos das telas): criar atributos Stage, btnConfirmarClicked e Banco de Dados.
6.2) Criar os métodos para os atributos (eventos das telas).
6.3) Criar Classe Pricipal de Controle (abrir telas secundárias). Ex.: TelaPrincipalController.java'.
6.3.1) Implementar os métodos de abrir telas secundárias. Ex. abrirTelaCliente(event), listarCadastroClientes(event), etc

. Criar novo projeto - Modo 1:
> File > New > Other > JavaFx > JavaFX Project > ... > Finish

Obs.: JRE > Use JRE jdk1.8.0_xx

ou:

. Criar novo projeto - Modo 2 (não deu certo):
> File > New > Other > JavaFx > JavaFX Project ... > Next > Libraries > Classpath > Add Library > User Library: escolher JavaFX (que foi adicionado) > Finish > Finish

Obs.: JRE > Use JRE jdk1.8.0_xx


1) Projeto JavaFX padrão (pastas):

	src:
		application:
			Main.java
			application.css
	JRE System Library [jdk1.8.0_xxx]
	JavaFX SDK
	build.fxbuild

2) Criar os pacotes - controle, dao, modelo e visao:

	src:
		application:
			Main.java
			application.css
		br.ufrn.imd
			Principal.java			// classe principal (main) do sistema
			br.ufrn.imd.controle
			br.ufrn.imd.dao					// persistência dos dados (banco de dados)
				Banco.java
				ClienteDAO.java
				FornecedorDAO.java
				ProdutoDAO.java
			br.ufrn.imd.modelo
			br.ufrn.imd.visao
	JRE System Library [jdk1.8.0_xxx]
	JavaFX SDK
	build.fxbuild

Obs.: dao - pacote que tem as classes de persistência (inserção) de dados separadas para cada classe de modelo, cujos objetos 'dao' serão criados nas classes de controle para acionar os eventos.

3) Criar um arquivo FXML - Layout (pacote visão):

> nomeProjeto > src > application > botão direito em br.imd.visao > New > Other > JavaFX > New FXML Doc. Document > Next... > Finish

Ex.: ...src.br.ufrn.imd.visao.TelaPrincipal.fxml:

	src:
		application:
			Main.java
			application.css
		br.ufrn.imd
			Principal.java			// classe principal (main) do sistema
			br.ufrn.imd.controle
			br.ufrn.imd.dao					// persistência dos dados (banco de dados)
				Banco.java
				ClienteDAO.java
				FornecedorDAO.java
				ProdutoDAO.java
			br.ufrn.imd.modelo
			br.ufrn.imd.visao
				TelaClientes.fxml
				TelaFornecedores.fxml
				TelaPrincipal.fxml		// tela principal
	JRE System Library [jdk1.8.0_xxx]
	JavaFX SDK
	build.fxbuild


4) Editar arquivo de Layout FXML:
	
> Botão direito em ...TelaPrincipal.fxml > Open with SceneBuilder...

Obs.: alterar fxml ver prints ou slides.

5) Criar a Classe Principal (direto na pasta src):

> Apagar o arquivo: Main.java (pasta: ...src.application)
> Botão direto em ...src.br.ufrn.imd > New > Other > JavaFX > Classes > JavaFX Main Class > Next... Name: nome_classe > Finish
> Copiar conteúdo de ...src.application.Main.java e fazer alterações necessárias (métodos start(), main(), etc.

Ex.:
	src:
		application:
			Main.java
			application.css
		br.ufrn.imd
			Principal.java			// classe principal (main) do sistema
			br.ufrn.imd.controle
			br.ufrn.imd.dao					// persistência dos dados (banco de dados)
				Banco.java
				ClienteDAO.java
				FornecedorDAO.java
				ProdutoDAO.java
			br.ufrn.imd.modelo
			br.ufrn.imd.visao
				TelaClientes.fxml
				TelaFornecedores.fxml
				TelaPrincipal.fxml		// tela principal
		Principal.java
	JRE System Library [jdk1.8.0_xxx]
	JavaFX SDK
	build.fxbuild

6) Criar Classes de controle (na pasta controle):

- Ver prints páginas 72 a 85 (arquivos: java-fx-72... a 85)

Ex.:
	src:
		application:
			Main.java
			application.css
		br.ufrn.imd
			Principal.java			// classe principal (main) do sistema
			br.ufrn.imd.controle				// uma classe para cada fxml/modelo
				TelaClientesController.java
				TelaFornecedoresController.java
				TelaPrincipalController.java
			br.ufrn.imd.modelo
			br.ufrn.imd.visao
				TelaClientes.fxml
				TelaFornecedores.fxml
				TelaPrincipal.fxml		// tela principal
		Principal.java
	JRE System Library [jdk1.8.0_xxx]
	JavaFX SDK
	build.fxbuild
