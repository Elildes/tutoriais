# Configurações Básicas do Virtual Box

## Í N D I C E


[Kali Linux com Tela Cheia](#kali-linux-com-tela-cheia)  
[Configurar Pasta Compartilhada no VirtualBox](#configurar-pasta-compartilhada-no-virtualbox)  
[Instalar Adicionais para Convidados](#adicionais-para-convidados)  



<div id='kali-linux-com-tela-cheia'/>

## Kali Linux com Tela Cheia

[Fonte: Kali Linux](https://www.kali.org/docs/virtualization/install-virtualbox-guest-additions/)  

- Entrar na VM Kali Linux  
- Comandos via terminal:  

```bash
apt-get update
```

```bash
apt-get install -y virtualbox-guest-x11
```

```bash
reboot
```

<div id='configurar-pasta-compartilhada-no-virtualbox'/>

## Configurar Pasta Compartilhada no VirtualBox

1. Abrir o VirtualBox e configurar a pasta a ser compartilhada em:  
**VirtualBox > Configurações > Pastas compartilhadas...**
    - Marcar a opção **Montar automaticamente** (recomendado)

2. Iniciar a Máquina Virtual

3. Ir em **Dispositivos > Inserir imagem de CD dos adicionais para convidado**

4. Reiniciar o Linux na máquina virtual

5. Comandos no Terminal

```bash
$ groups
seu_usuario cdrom floppy sudo audio dip video plugdev users netdev bluetooth scanner

$ sudo gpasswd -a seu_usuario vboxsf
[sudo] password for seu_usuario: 
Adding user seu_usuario to group vboxsf

$ cd sf_PastaCompartilhada/
bash: cd: sf_PastaCompartilhada/: Permission denied

Reniciar o Linux
```

**Fonte**: [VirtualBox: como criar uma pasta de compartilhamento no Linux Mint](https://www.youtube.com/watch?v=U_ZI45Ui8Ok)

---

<div id='adicionais-para-convidados'/>

Para instalar os **Adicionais para Convidado** (Guest Additions) em sua máquina virtual Linux no VirtualBox, siga estes passos detalhados:

1.  **Inserir o CD Virtual:** Com a máquina virtual ligada, vá ao menu superior, clique em **Dispositivos** e selecione **Inserir imagem de CD dos Adicionais para Convidado...**.  
2.  **Acessar os arquivos:** Abra o disco virtual que aparecerá no sistema.  
3.  **Abrir o terminal:** Clique com o botão direito em uma área vazia dentro da pasta do disco e selecione **Abrir terminal**.  
4.  **Logar como superusuário (root):** No terminal, digite `sudo su` (ou `su root` em distribuições como Debian) e insira sua senha de administrador.  
5.  **Tornar o arquivo executável:** Digite `chmod +x vbox-linux-additions.run` (use a tecla **Tab** para completar o nome do arquivo automaticamente) e pressione **Enter**.  
6.  **Executar a instalação:** Digite `./vbox-linux-additions.run` (novamente, use o **Tab** para facilitar) e pressione **Enter**.  
7.  **Finalizar:** Aguarde o processo terminar. A tela pode piscar durante a instalação e, ao concluir, a resolução será ajustada automaticamente para tela cheia.  

Os recursos adicionais que estarão disponpiveis podem ser executados em **Dispositivos**.  

Fonte: [Como Instalar Adicionais para Convidado para Linux no VirtualBox](https://www.youtube.com/watch?v=8VtX0aM2Z30)  


