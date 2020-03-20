### COMO USAR O PYTHON COM AMBIENTES VIRTUAIS

. **Introdução:** este tutorial é para você configurar o linux (terminal) a programar em ambientes virtuais. Isso é útil quando você tem mais de uma versão do linux instalada e você precisa usar uma das versões.

**Procedimentos necessários:**

**1. Instalar o PIP: ** PIP é um gerenciador de pacotes do Python;
2. ?????




**1. Instalação do PIP para Python 3**

- Verifique se o Python 3 está instalado:
```
~$ python3 --version
```

**Obs.:** se o Python 3 não estiver instalado, você deverá instalar. 

- Instalar o pip3:

```
~$ sudo apt install python3-pip
```

- Verificar se o pip3 foi instalado corretamente:

```
~$ pip3 --version
```

- Alguns comandos do pip:

a) Pesquisar pacotes Python:

```
~$ pip3 search string
```
**Obs.:** este comando mostra todos os pacotes python instalados que tem o nome "string" no seu nome ou descrição.

b) Instalar um aplicativo:

```
~$ pip3 install pkg_name
```

**Obs.:** irá instalar o pacote "pkg_name".

c) Desinstalar um pacote:

```
~$ pip3 uninstall pkg_name
```

**Obs.:** irá desinstalar o pacote "pkg_name".

