## CRIAR ATALHO NA ÁREA DE TRABALHO NO LINUX COM O GNOME-PANEL

1. Verifique se o seu linux tem o gnome-panel instalado:  
`gnome-panel --version`

2. Instalar o pacote gnome-panel:  
`sudo apt-get install gnome-panel`

3. Criar um novo item de atalho:  
`gnome-desktop-item-edit –create-new ~/Área\ de\ Trabalho/nome_atalho.desktop`

**Obs.:** `gnome-desktop-item-edit Área\ de\ Trabalho/ --create-new`  

4. Será aberto a caixa *Criar lançador*:  
4.1 **Tipo**: Aplicativo  
4.2 **Nome**: Nome_do_atalho. Ex.: IRPF-2020  
4.3 **Comando**: <comando> /diretorio/programa.ext. Ex.: java -jar /home/user/ProgramasRFB/IRPF2020/irpf.jar  
4.4 **Navegar**: (selecionar o "/diretório/programa.ext")  
4.5 **Comentário**: Ex.: Atalho para o programa IRPF-2020  
**Obs.:** para colocar a imagem do ícone basta clicar na área do ícone e escolher a imagem.  
4.6 Por último clicar em `ok`


## CRIAR ATALHO NA ÁREA DE TRABALHO NO LINUX UBUNTU 20.04

Fonte: [Criar atalho no Ubuntu 20.04](https://goto-linux.com/pt/2019/11/3/como-criar-o-iniciador-de-atalhos-da-area-de-trabalho-no-ubuntu-20.04-focal-fossa-linux/)  

### Como criar o iniciador de atalhos da área de trabalho a partir de arquivos `.desktop` existentes

**Requisitos**:  

a. Ubuntu 20.04 Focal Fossa  
b. GNOME Shell 3.34.1 ou superior

1. Abra o terminal:  
`ctrl+alt+T`  

2. Abra a pasta onde se encontra os arquivos `.desktop` existentes instalados:  
`nautilus /usr/share/applications/`; ou:  

`nautilus /var/lib/snapd/desktop/applications/`, para aplicativos instalados pelo `snap`.  

3. Encontre um aplicativo que você deseja criar um iniciador na área de trabalho.  
4. Clique com o botão direito do mouse e clique em `copiar` (ou `copy`).  
5. Na área de trabalho clique em `colar` (ou `past`).  
6. Neste arquivo que você acabou de copiar para a área de trabalho, clique com o botão direito do mouse e clique em `permitir iniciar` (ou `Allow Launching`).  

Seu novo atalho de aplicativo da área de trabalho está pronto.
