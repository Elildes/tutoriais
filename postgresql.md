# Usar o servidor do banco de dados PostgreSQL no Windows

**Índice**  

1. [Abrir o SQL Shell (psql)](#abrirshellpsql)
2. Principais comandos do shell psql
3. Acessar os aplicativos do PostgreSQL

<div id='abrirshellpsql'/>

## 1. Abrir o SQL Shell (psql)

Aperte o botão Windows e digite `shell`.  
Clique em `SQL Shell (psql)`.  
Após o shell do psql abrir, você deverá digitar os dados do banco de dados, ou apertar enter para confirmar a opção padrão.  

Ex.:  
```
Server [localhost]:  
Database [postgres]:  
Port [5432]:  
Username [postgres]:  
```

## 2. Principais comandos do shell psql

```java
postgres=#	// indica superusuário.  
\l			// verificar/listar os bancos de dados existentes.  
ctl + z		// parar.  
\q			// sair (volta p/ o usuário postgres.  
```

## 3. Acessar os aplicativos do PostgreSQL

Você poderá executar vários aplicativos `exe`, via terminal, através da pasta `bin` , onde o PostegreSQL foi instalado.



