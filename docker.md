# Contêinerização com Docker

**Índice**  

[Principais comandos - containers](#maincmdcont)  
[Principais comandos - imagens](#maincmdima)  
[Principais comandos - Dockerfile](#maindockfile)  

<div id='maincmdcont'/>

## Principais comandos - containers

Determinar a versão do daemon Docker:
```bash
docker --version
```

Determinar quais containers estão em execução:
```bash
docker ps
```

Quantos containers estão em execução:
```bash
docker ps -q | wc -l
```

Quais redes existem no ambiente Docker:  
```bash
docker network ls
```

Quantas redes existem no ambiente Docker:  
```bash
docker network ls -q | wc -l
```

Executar container de forma interativa:
```bash
docker run nginx
```

Executar container em background:
```bash
docker run -d nginx
```

Remover um container
```bash
# parar container:
docker stop <id_container>
# remover container:
docker rm <id_container>
```

Parar todos os containers:
```bash
docker stop $( docker ps -q )
```

Remover todos os containers:
```bash
docker ps -aq | xargs docker rm
```

Mapear (expor) portas de container:
```bash
# porta do host = 31080 e porta do container = 80
docker run -d -p 31080:80 <image_name>
```

Rodar container com mapeamento de portas com persistência de dados (volumes):
```bash
# <name_container>: nome do container
# -v ou --volume: persistência de dados/volumes
# dir_host: diretório do host onde os dados serão salvos
# /usr/share/nginx/html: diretório do container onde os dados serão salvos
docker run --name <name_container> -v /dir_host:/usr/share/nginx/html:ro -d nginx
```

## Principais comandos - imagens

<div id='maincmdima'/>

Determinar quais imagens existem no sistema:
```bash
docker images
```

Quantas imagens existem no sistema:
```bash
docker images -q | wc -l
```

Baixar imagens:
```bash
docker image pull nginx:alpine
```

Remover imagens:
```bash
docker rmi <id_ou_name_imagem>
```

Remover todas as imagens:
```bash
docker rmi $(docker images -q)
```

<div id='maindockfile'/>

## Principais comandos - Dockerfile

Criar Dockerfile:
```bash
# imagem a ser usada como ponto de partida
FROM node:lts-alpine

# instala um servidor http simples para servir conteúdo estático
RUN npm install -g http-server

# faz da pasta 'app' o diretório atual de trabalho
WORKDIR /app

# copia os arquivos 'package.json' e 'package-lock.json' (se disponível)
COPY package*.json ./

# instala dependências do projeto
RUN npm install

# copia arquivos e pastas para o diretório atual de trabalho (pasta 'app')
COPY . .

# compila a aplicação de produção com minificação
RUN npm run build

# porta exposta do container
EXPOSE 8080

# criação do conatiner
CMD [ "http-server", "dist" ]
```

Criar imagens a partir de Dockerfile:
```bash
docker build -t nome_da_imagem .
```

**Obs.:** executar o 'Dockerfile' na pasta pasta do arquivo.  

Criar e executar o container a partir da imagem gerada via Dockerfile:
```bash
docker run -it -p 8080:8080 --rm --name nome_d0_container nome_da_imagem
```


