# COMO CONFIGURAR UM SERVIDOR SFTP NO LINUX

Fonte: https://www.fosslinux.com/39228/how-to-set-up-an-sftp-server-on-linux.htm

**1. Atualizar repositório:**  
```
apt update
apt upgrade
```
**2. Adicionar um grupo:**  
`sudo addgroup sftp_nome_do_grupo`

**3. Criar um usuário e adicionar ao grupo criado:**  
```
sudo useradd -m sftpnome_usuario -g sftp_nome_do_grupo
sudo passwd sftpnome_usuario
```

**4. Permitir acesso ao usuário à pasta home:**  
`sudo chmod 700 /home/sftpnome_usuario`

**5. Instalar o SSH:**  
`sudo apt install ssh`

**6. Configurar o arquivo sshd_config:**  
`sudo nano /etc/ssh/sshd_config`

. No final do arquivo, adicione o seguinte texto:
  ```
  Match group sftp_fosslinux 
  ChrootDirectory /home 
  X11Forwarding no 
  AllowTcpForwarding no 
  ForceCommand internal-sftp
  ```
. Salve e feche o arquivo.

**7. Reinicie o ssh:**  
`sudo systemctl restart ssh`

**8. Logar no SFTP:**  
```
sftp sftpnome_usuario@127.0.0.1
yes
```
. Coloque a senha do usuário.

**9. Entre no diretório home do usuário:**  
`cd sftpnome_usuario`

**10. Criar um novo diretório dentro da home do usuário:**  
`mkdir sftpdir`

**. Sair da conexão SFTP:**  
`exit`
