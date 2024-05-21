## Como Configurar e Utilizar o Serviço Área de Trabalho Remota de um coputador Windows

### 1. Na máquina Cliente

**Abrir aplicativo da Área de trabalho Remoto**:  
- `Botão Win > área de trabalho remoto > abrir`  

**Inserir IP, usuário e credenciais de acesso**:  
- `Computador`: `IP` local da máquina ou `hostname` de um servidor DDNS + `porta`. Ex.: `191.168.1.65` se for acesso remoto local ou `myhost.ddns.net:3389` se o acesso for externo.  

- `Nome de usuário`: nome de usuário da máquina server remoto.  

- `Senha de acesso`: senha da máquina server remoto.  

**Obs.:** caso não for usado um DDNS, deverá ser utilizado um IP público no local do `hostname`.  

### 2. Na máquina Server

**Ativar RDP Server**:  
- `Configurações > Sistemas > Área de Trabalho Remoto: Ativar`  

**Verificar a porta da área de trabalho remota**:  
- `Exemplo`: 3389  

### 3. No roteador onde a Máquina Server está conectado  

**Configurar o mapeamento/redirecionamento da porta RDP**:  
- Acessar o console do seu roteador ou modem.  
- Nas configurações de `Encaminhamento de portas ou port forwarding`:  
  - `Nome do serviço`: colocar um nome para o serviço.  
  - `Endereço IP do Servidor:`  IP local da máquina server. EX.: 192.168.0.30.  
  - `Porta externa inicial`: porta RDP. EX.: 3389.  
  - `Porta externa final`: porta RDP. EX.: 3389.  
  - `Porta Protocolo`: protocolo de comunicação do serviço. EX.: TCP/UDP.  
  - `Porta interna inicial`: porta RDP. EX.: 3389.  
  - `Porta interna final`: porta RDP. EX.: 3389.  

**Configurar o gatilho de portas - port trigger**:  
  - `Nome do serviço`: colocar um nome para o serviço.  
  - `Gatilho porta inicial`: porta RDP. EX.: 3389.  
  - `Gatilho porta final`: porta RDP. EX.: 3389.  
  - `Gatilho Protocolo`: protocolo de comunicação do serviço. EX.: TCP/UDP.  
  - `Alvo Porta inicial`: porta RDP. EX.: 3389.  
  - `Alvo Porta final`: porta RDP. EX.: 3389.  
  - `Alvo Protocolo`: protocolo de comunicação do serviço. EX.: TCP/UDP.  

**Configurar um Serviço de DDNS Dinâmico**:  
- `D-DNS provider`: adicionar o provedor DDNS. Ex.: `noip.com`  
- `Interface`: adicionar a interface do DDNS. Ex.: `wan-ip-interface/wanbridge`.  
- `Nome do host`: adicionar o nome do host criado no provedor DDNS. Ex.: `myhost.ddns.net`  

**Configurações DynDNS - provedor DDNS**:  
- Nome de usuário: usuário do site do provedor DDNS. Ex.: `user_name_no_ip`.  
- Senha: senha do provedor DDNS. Ex.: `pass_no_ip`.  
- Verificar se a configuração DDNS tá ok. Ex.: se o `STATUS` exibir `Request succcessfull`, tá ok.  

**Obs.:** as configurações dos roteadores podem ser diferentes entre cada marca.  

### 4. No site do provedor de DDNS

**Criar um DDNS Dinâmico no site do provedor do DDNS**:  
- Criar conta e usuário no site do provedor: Ex.: https://noip.com  
- Criar um hostname com tipo de registro `DNS Host(A)`.  Ex.: `myhost.ddns.net`.  
- Adicionar o hostname criado em  `Configurar um Serviço de DDNS Dinâmico` do roteador.  Ex.: `myhost.ddns.net`.  

**Obs.:** para maior segurança, usar uma VPN quandor for acessar uma máquina server fora da rede local.  

[Vídeo - Como Configurar e Utilizar o Serviço Área de Trabalho Remota](https://www.youtube.com/watch?v=S_MNVoyD8UI)  
