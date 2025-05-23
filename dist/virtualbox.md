# Configurações Básicas do Virtual Box

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
