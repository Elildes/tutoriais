## CRIAR ATALHO NO LINUX

### Dicas de como criar atalhos no Linux.

1. Verifique se o seu linux tem o gnome-panel instalado:  
`gnome-panel --version`

2. Instalar o pacote gnome-panel:  
`sudo apt-get install gnome-panel`

3. Criar um novo item de atalho:  
`gnome-desktop-item-edit –create-new ~/Área\ de\ Trabalho/nome_atalho.desktop`

**Obs.:** `gnome-desktop-item-edit Área\ de\ Trabalho/ --create-new`  

4. Será aberto a caixa *Criar lançador*:  
4.1 Tipo: Aplicativo  
4.2 Nome: Nome_do_atalho. Ex.: IRPF-2020  
4.3 Comando: <comando> /diretorio/programa.ext. Ex.: java -jar /home/user/ProgramasRFB/IRPF2020/irpf.jar  
4.4 Navegar: (selecionar o "/diretório/programa.ext")  
4.5 Comentário: Ex.: Atalho para o programa IRPF-2020  
**Obs.:** para colocar a imagem do ícone basta clicar na área do ícone e escolher a imagem.  
4.6 Por último clicar em "ok"
