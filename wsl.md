# Recursos possíveis de serem usados no WSL/Linux

## Terminal Tilix:
```sudo apt update && sudo apt install --yes tilix```


## VS Code:

Extensão **"Remote - SSH"**: usar pastas remotas de qualquer máquina. Ex.: WSL/Linux.

Extensão **"Remote Development"**: usar WSL, Containers, SSH, etc remoto no WSL/Linux.

```code . &```:	no terminal WSL/Linux, usar VS Code do Windows para acessar pastas do WSL/Linux.

## Limitar recursos no WSL

Pode ser usado, por exemplo, quando for usado o Docker, porque ele tem um consumo alto de recursos computacionais.

Para limitar este consumo no WSL, pode ser criado um arquivo `.wslconfig` na sua pasta pessoal do Windows ou um arquivo `wsl.conf` no diretório `/etc` da distribuição Linux no WSL.

**1. Configurações para ".wslconfig"**

O arquivo `.wslconfig` é usado para definir as configurações globais em todas as distribuições instaladas em execução no WSL 2.

Exemplo de arquivo `C:\Users\<seu_usuario>\.wslconfig`:
```
[wsl2]
memory=4GB
processors=2
swap=2GB
```

Na sequência, desligue a VM do WSL2 com `wsl --shutdown`, caso não esteja desligado.  
E depois reinicie a instância do WSL.

[Fonte](https://learn.microsoft.com/pt-br/windows/wsl/wsl-config#wslconfig):
Exemplo de arquivo `.wslconfig`

**2. Configurações para "wsl.conf"**

O arquivo `wsl.conf` é usado para definir as configurações locais por distribuição para cada distribuição do Linux em execução no WSL 1 ou WSL 2.

Exemplo de arquivo `/etc/wsl.conf`, favor acessar fonte abaixo.

[Fonte](https://learn.microsoft.com/pt-br/windows/wsl/wsl-config):
Configurações para `wsl.conf`
