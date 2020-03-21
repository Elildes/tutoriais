### COMO USAR O PYTHON COM AMBIENTES VIRTUAIS

. **Introdução:** este tutorial é para você configurar o linux (terminal) a programar em ambientes virtuais. Isso é útil quando você tem mais de uma versão do Python instalada no linux , como por exemplo Python 2 e Python 3,  e você precisará usar uma das versões.

## Procedimentos necessários:

**1. Instalar o PIP:** o PIP é um gerenciador de pacotes do Python;

**2. Instalar o virtualenv:** aplicativo que permite criar e gerenciar ambientes virtuais.

**3. Criar um ambiente virtual:** criar um novo ambiente de desenvolvimento isolado.

**4. Ativar o ambiente virtual criado:** após criar o ambiente virtual deveremos ativá-lo.

**5. Outras opções de comandos:** como desativar seu ambiente virtual, como criar um ambiente usando o nome da versão do Python, como verificar qual a versão do Python está sendo utilizada, como acessar a documentação (help) do virtualenv e como configurar as opções por padrão no arquivo virtualenv.ini.

## Metendo a mão na massa:

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

**2. Instalação do virtualenv**

- Para instalar o **virtualenv** basta digitar o seguinte comando:

```
~$ sudo pip install virtualenv
```

- Para verificar se o **virtualenv** foi instalado corretamente digite o comando:

```
~$ virtualenv --version
```

**3. Criando um ambiente virtual**

- O **virtualenv** possui apenas um comando, que criará um novo ambiente virtual de desenvolvimento:

```
~$ virtualenv [opções] <nome_da_pasta>
```

**Obs.: **
. ```[opções]```: verificar o item *5.2 Criando um ambiente usando o nome da versão do Python* e item *5.4 Acessando a documentação (help)* do **virtualenv**;
. ```<nome_da_pasta>```: normalmente usada ```ENV```.

Nessa pasta serão criadas alguns diretórios importantes:

- ```ENV/lib``` e ```ENV/include```: diretórios das ```bibliotecas``` de suporte ao ambiente virtual.

- ```ENV/bin```: diretório dos binários que executam o ```Python```, ```pip``` ou ```setuptools```.


**4. Ativando o ambiente virtual criado**

- Deveremos ativar o ambiente com o comando:

```
~$ source <noma_da_pasta>/bin/activate
```

**Obs.:**
. O comando ```source``` lê um arquivo e executa os comando contidos nele;
. Ao ativar o **virtualenv**, o diretório ```<nome_da_pasta>/bin``` será adicionado como primeiro registro do caminho ```$Path``` do linux;
. Também altera o padrão do seu prompt, adicionando ```(nome_da_pasta)``` para indicar que você está em um ambiente controlado pelo **virtualenv**.


**5. Outras opções de comandos**

***5.1 Desativando um ambiente virtual***

- Nesta operação o **ambiente virtual será removido** e tudo que foi feito e instalado serão apagados, retornando ao estado anterior do sistema (sem o **virtualenv**). Para isto, execute o seguinte comando:

```
~$ deactivate
~$ rm -r ENV
```

***5.2 Criando um ambiente usando o nome da versão do Python***

Para criarmos um ambiente contendo a versão do Python, como por exemplo Python 2.x ou Python 3.x, deveremos informar ao **virtualenv**, no momento da criação de um novo ambiente, o local do binário do Python.

- Para localizar o caminho do binário do Python digite o comando:

```
~$ which python3
/usr/bin/python3
```

- Para criar um novo ambiente usando o ```python3``` digite:

```
$ virtualenv --python='/usr/local/bin/python3' <nome_da_pasta>
```

***5.3 Verificando qual a versão do Python está sendo utilizada***

- Com o ambiente virtual ativado, verifique qual é a versão que está sendo utilizada, digite o comando:

```
~$ python --version
```

***5.4 Acessando a documentação (help) do virtualenv***

- Para acessar as ```[opções]``` do **virtualenv**, digite o comando:

```
~$ virtualenv --help
```

- Veja alguns exemplos de ```[opções]``` do **virtualenv**:

a) Essa opção cria um ambiente com todas as dependências já instaladas globalmente. Ou seja, não será um ambiente limpo:

```
~$ ... --system-site-packages ...
```

b) Esta opção cria o ambiente sem o setuptools:

```
~$ ... --no-setuptools ...
```

***5.5 Configurando opções por padrão - arquivo virtualenv.ini***

. Após um novo ambiente virtual ser criado o ```virtualenv``` busca parâmetros no arquivo ```virtualenv.ini``` que está no diretório ```$HOME/.virtualenv/virtualenv.ini``` (Mac e Linux) ou ```%APPDATA%\virtualenv\virtualenv.ini``` (Windows).

. Nessse arquivo, podemos adicionar parâmetros do ```virtualenv``` que serão utilizados em todos os ambientes criados.

. Como por exemplo:

```
[virtualenv]
no-pip
no-setuptools
system-site-packages
python = /opt/python-3.3/bin/python
```

. Sendo assim, todos os ambientes que forem criados terão essas opções por padrão.


**Fonte:** https://pythonacademy.com.br/blog/python-e-virtualenv-como-programar-em-ambientes-virtuais
