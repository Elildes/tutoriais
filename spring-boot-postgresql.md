

# Criar um projeto Spring Boot:  

. Acessar o site (Spring Boot Initialize)[https://start.spring.io/] e preencher o formulário conforme a necessidade do projeto.  

. Caso não queira adicionar as dependência sno projeto, poderá adicionar depois ao projeto, através do arquivo `pom.xml`.  

. Após preencher o formulário, clicar em `Generate CTRL +`, será criado o projeto Spring Boot (compactado).   

## Importar o projeto Spring Boot no Eclipse:  

. Descompctar o projeto.  

. No Eclipse, clicar em: `File > Import > Maven > Existing Maven Project > Next > Roor Directory: colocar o diretório/pasta de onde se encontra o projeto > Finish`.  

## Profiles e Arquivos de Configurações do Spring:  

. O site (Appendix A: application properties)[https://docs.spring.io/spring-boot/docs/1.1.6.RELEASE/reference/html/common-application-properties.html] mostra diversas configurações para o arquivo `src/main/java/resources/application.properties`.  

. Criando profile:  
Você poderá criar profile customizados, para isto basta criar um arquivo dentro da mesma pasta do arquivo `application.properties`.  

**Ex.**: `src/main/resources/application-producao.properties`. Producao seria o profile para configurar as feaures do setor de produção.  

# Configurando o Banco de dados

## Baixar o PostgreSQL

. No site (PostgreSQL Downloads)[https://www.postgresql.org/download/] escolher o sistem operacional e versão desejada.  

. Após baixar o PostgreSQL, fazer a instalação, bastando escolher as configurações padrão.  

## Criar o `schema` da base de dados

Abrir o `pgAdmin` que foi instalado junto com o POstgreSQL.  
Clicar em `Databases`, depois clicar no `editor sql` e digitar os seguintes scripts sql:  

Criando o `database`:  

```
CREATE database financas
```

Clicar no `database` criado:  

Criando `schema`:  

```
create schema financas
```

**Obs.**: criar um `schema` para cada aplicação, que se relacionam entre si, dentro do `database`.  

**Ex.**: schema para controle de acesso (usuários, etc), schema do negócio, etc.  

Criando tabelas:  

```
CREATE TABLE financas.usuario
(
	id bigserial NOT NULL PRIMARY KEY,
	nome character varying(150),
	email character varying(100),
	senha character varying(20),
	data_cadastro date DEFAULT NOW()
);

CREATE TABLE financas.lancamento
(
	id bigserial NOT NULL PRIMARY KEY,
	descricao character varying(100) NOT NULL,
	mes integer NOT NULL,
	ano integer NOT NULL,
	valor numeric(16,2) NOT NULL,
	tipo character varying(20) CHECK (tipo in ('RECEITA', 'DESPESA')) NOT NULL,
	status character varying(20) CHECK (status in ('PENDENTE', 'CANCELADO', 'EFETIVADO')) NOT NULL,
	id_usuario bigint REFERENCES financas.usuario (id),
	data_cadastro date DEFAULT NOW()
);
```

# Implementações iniciais do back-end

## Iniciando a codificação do projeto

. Fazer o diagrama de entidades.  

## Adicionando o Módulo Spring Data JPA

Permite fazer a conexão da aplicação com a base de dados.  

. Acessar o o site (31. Working with SQL Databases)[https://docs.spring.io/spring-boot/docs/2.1.13.RELEASE/reference/html/boot-features-sql.html]  

. Adicionar a dependência `spring-boot-start-data-jpa` ao POM:  

```
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-data-jpa</artifactId>
		</dependency>
```

**Obs.**: JPA é um frameworks de persistência de dados.  

. Adicionar a dependência `postgresql` ao POM:  

```
		<dependency>
			<groupId>org.postgresql</groupId>
			<artifactId>postgresql</artifactId>
		</dependency>
```

## Adicionando configurações do banco de dados

. No arquivo `src/main/resources/application.properties` adicionar:  

```
spring.datasource.url=jdbc:postgresql://localhost:5432/minhasfinancas
spring.datasource.username=postgres
spring.datasource.password=postgres
spring.datasource.driver-class-name=org.postgresql.Driver
```

`localhost`: é o IP ou local da base de dados criada.  
`5432`: é a porta do PostgreSQL configurada na criação do banco de dados.  
`minhasfinancas`: é o nome do banco de dados.  
`username=postgres`: nome do usuário.  
`password=postgres`: senha do usuário.  
`driver-class-name=org.postgresql.Driver`: driver de conexão do PostegreSQL. Cada gerenciador de banco de dados tem o seu driver, exemplo, o Oracle, MySQL, etc., tem o seu driver.  

## Mapeando a Entidade Usuário

Mapeamento das entidades JPA, para a persistência dos dados. 

[___CONTINUA___]
