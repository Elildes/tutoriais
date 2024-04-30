# Contêinerização com Docker

**Índice**  

1. [Principais comandos](#maincmd)

<div id='maincmd'/>

## Principais Comandos

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

Determinar quais imagens existem no sistema:
```bash
docker images
```

Quantas imagens existem no sistema:
```bash
docker images -q | wc -l
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

Baixar imagens:
```bash
docker image pull nginx:alpine
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