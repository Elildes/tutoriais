# Recursos possíveis de serem usados no WSL/Linux

# Í N D I C E

1. [Terminal Tilix](#tilix)
2. [VS Code](#vscode)
3. [Limitar recursos no WSL](#limitarwsl)
4. [Configurações para ".wslconfig"](#wslconfig)
5. [Configurações para "wsl.conf"](#wsl.conf)
6. [Resetar Senha Linux do WSL](#resetpass)

<div id='tilix'/>

## 1. Terminal Tilix:
```sudo apt update && sudo apt install --yes tilix```


<div id='vscode'/>

## 2. VS Code:

Extensão **"Remote - SSH"**: usar pastas remotas de qualquer máquina. Ex.: WSL/Linux.

Extensão **"Remote Development"**: usar WSL, Containers, SSH, etc remoto no WSL/Linux.

```code . &```:	no terminal WSL/Linux, usar VS Code do Windows para acessar pastas do WSL/Linux.

<div id='limitarwsl'/>

## 3. Limitar recursos no WSL

Pode ser usado, por exemplo, quando for usado o Docker, porque ele tem um consumo alto de recursos computacionais.

Para limitar este consumo no WSL, pode ser criado um arquivo `.wslconfig` na sua pasta pessoal do Windows ou um arquivo `wsl.conf` no diretório `/etc` da distribuição Linux no WSL.

<div id='wslconfig'/>

# 4. Configurações para ".wslconfig"

O arquivo `.wslconfig` é usado para definir as configurações globais em todas as distribuições instaladas em execução no WSL 2.

Exemplo de arquivo `C:\Users\<seu_usuario>\.wslconfig`:

```bash
[wsl2]
memory=4GB
processors=2
swap=2GB
```

Na sequência, desligue a VM do WSL2 com `wsl --shutdown`, caso não esteja desligado.  
E depois reinicie a instância do WSL.

[Fonte](https://learn.microsoft.com/pt-br/windows/wsl/wsl-config#wslconfig):
Exemplo de arquivo `.wslconfig`

<div id='wsl.conf'/>

# 5. Configurações para "wsl.conf"

O arquivo `wsl.conf` é usado para definir as configurações locais por distribuição para cada distribuição do Linux em execução no WSL 1 ou WSL 2.

Exemplo de arquivo `/etc/wsl.conf`, favor acessar fonte abaixo.

[Fonte](https://learn.microsoft.com/pt-br/windows/wsl/wsl-config):
Configurações para `wsl.conf`

<div id='resetpass'/>

# 6. Resetar Senha Linux do WSL

- Abrir o terminal do windows e verificar a distribuição

```bash
wsl -l # lista as distribuições instaladas
```

- Acessar o usuário root da distribuição

```bash
wsl -d distribution --user root 
# exemplo: 
# wsl -d Ubuntu-20.04 --user root
```

- Comando para resetar a senha de um usuário

```bash
passwd username 
# exemplo:
# passwd exemploUser
```

[Fonte](https://valchan.com.br/wsl-reset-pass/):
Valéria P Vargas