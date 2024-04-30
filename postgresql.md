# Usar o servidor do banco de dados PostgreSQL no Windows

**Índice**  

1. [Abrir o SQL Shell (psql)](#abrirshellpsql)
2. [Principais comandos do shell psql](#comandosshellpsql)
3. [Acessar os aplicativos do PostgreSQL](#apppostgresql)
4. [Servidor de banco de dados: iniciando, parando e reiniciando](#startstoprestart)
5. [Trocar a Porta do PostgreSQL](#trocarportapostgres)

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

<div id='comandosshellpsql'/>

## 2. Principais comandos do shell psql

```java
postgres=#	// indica superusuário.  
\l			// verificar/listar os bancos de dados existentes.  
ctl + z		// parar.  
\q			// sair (volta p/ o usuário postgres.  
```

<div id='apppostgresql'/>

## 3. Acessar os aplicativos do PostgreSQL

Você poderá executar vários aplicativos `exe`, via terminal, através da pasta `bin` , onde o PostegreSQL foi instalado.

**Ex.**:  
1. Acessar a pasta bin. Ex.:  
`cd C:\Program Files\PostgreSQL\15\bin`  
2. Executar o app `psql`. Ex.: acessa o banco de dados `crudtarefas` na porta `5050`:  
`psql -d crudtarefas -p 5050`

<div id='startstoprestart'/>

## 4. Servidor de banco de dados: iniciando, parando e reiniciando

[Fonte](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360012608093-PostgreSQL-Comandos-para-START-STOP-e-RESTART-do-servidor-de-banco-de-dados-Postgres#:~:text=Trocando%20o%20postgres%20de%20porta&text=Isso%20pode%20ser%20feito%20via,que%20deseja%2C%20por%20exemplo%205460)  

1. Abra o ```Prompt de comando MS-DOS```.  

2. Entre na pasta `bin` do PostgreSQL. Ex.:  
`cd C:\Program Files\PostgreSQL\15\bin`  

3. Dentro da pasta `bin`, você deverá executar no MS-DOS os comandos para `START`, `STOP` ou `RESTART`, conforme descritos nos itens seguintes.  

4. **Iniciar `START` o banco de dados PostegrSQL**. Ex.:  
`pg_ctl -D "C:\Program Files\PostgreSQL\15\data" start`  

5. **Parar `STOP` o banco de dados PostegrSQL**. Ex.:  
`pg_ctl -D "C:\Program Files\PostgreSQL\15\data" stop -s`  

**Obs.**: o parámetro `-s` para o servidor com segurança.  

6. **Reiniciar `RESTART` o banco de dados PostegrSQL**. Ex.:  
`pg_ctl -D "C:\Program Files\PostgreSQL\15\data" restart -s`  

<div id='trocarportapostgres'/>

## 5. Trocar a Porta do PostgreSQL

1. Abra o ```Prompt de comando MS-DOS```.  

2. Entre na pasta `bin` do PostgreSQL. Ex.:  
`cd C:\Program Files\PostgreSQL\15\bin`  

3. Dentro da pasta `bin`, pare o servidor:  
pg_ctl -D "C:\Program Files\PostgreSQL\15\data" stop -s

4. Abra o arquivo `postgresql.conf`, normalmente está na pasta `C:\Program Files\PostgreSQL\15\data`  

5. Altere a porta na propriedade `port`, conforme desejado.  

6. **Iniciar `START` o banco de dados PostegrSQL**. Ex.:  
`pg_ctl -D "C:\Program Files\PostgreSQL\15\data" start` 

**Obs.1**: caso seja necessário reinicie a máquina.
**Obs.2**: se precisar de ajuda execute o seguinte comando `pg_ctl --help`.  
