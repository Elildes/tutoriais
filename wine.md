# Tutorial para instalação e execução do Wine no Ubuntu

Fontes:  
[Como instalar Wine no Ubuntu 20.04 LTS](https://www.edivaldobrito.com.br/wine-no-ubuntu-1804-lts/)  
[Instalar Meta Trader no Linux](https://www.mql5.com/pt/articles/625?utm_source=www.metatrader5.com&utm_campaign=download.mt5.linux)

**Introdução**

Wine permite executar programas da plataforma Windows dentro do Linux.

**Preliminares**

Abra o terminal:  
`ctrl+alt+T`

Confira se seu sistema é 32 ou 64 bits:  
`uname -m`

Se seu sistema for 64 bits, ative suporte a 32 bits:  
`sudo dpkg --add-architecture i386`

**Instalação do Wine**

Para instalação da versão estável:  
`sudo apt-get install wine-stable`

Se houver erro ou se não houver repositório na sua versão do Ubuntu, execute os seguintes comendos:
```
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
```
Atualize as informações do pacote:  
`sudo apt-get update`

Instale o wine com o seguinte comando:  
`sudo apt-get install --install-recommends winehq-stable`

Para instalar e rodar aplicativos para Windows no Linux com Wine:
1. Abra o gerenciador de arquivos.
2. Vá até a pasta que tem o arquivo de programa.
3. Clique com o botão direito do mouse.
4. No menu clique em `Open with Wine`; ou 

Abra o terminal:  
`ctrl+alt+T`

Vá até a pasta onde está o programa e execute:  
`wine programa`

Se tiver compilado para 64 bits, use o comando abaixo:  
`wine64 programa`

*Obs.:* `programa` =  nome do executável Windows.


