# Resumo de Comandos Nmap: Descoberta de Portas, Serviços e Alvos

### 1. Definição de Alvos e Escopo (Single Host ou Domínio)
*Formatos básicos para direcionar a varredura a uma única entidade.*
* `sudo nmap <ip>`
  > **Análise por IP:** Alvo direto via endereço lógico.
* `sudo nmap <dominio>`
  > **Análise por Domínio:** Resolve o nome DNS antes de iniciar o mapeamento.
* `sudo nmap -v <ip>`
  > **Análise Detalhada (Verbose):** Exibe informações adicionais sobre o progresso e descobertas durante a execução.

### 2. Varredura de Múltiplos IPs e Sub-redes
*Estratégias para expandir o escopo e varrer blocos inteiros de rede de uma só vez.*
* `sudo nmap <ip_1> <ip_2> <ip_3>`
  > **Múltiplos IPs Isolados:** Varre alvos específicos separando-os por espaço.
* `sudo nmap 192.168.1.1,2,3`
  > **Inclusão por Vírgula:** Atalho para varrer IPs finais específicos dentro de um mesmo octeto.
* `sudo nmap 192.168.1.1-20`
  > **Seleção por Intervalo (Range):** Varre uma sequência linear de IPs (do final .1 ao .20).
* `sudo nmap 192.168.1.*`
  > **Seleção por Wildcard (Curinga):** O caractere `*` define a varredura de todo o bloco correspondente ao octeto (de 0 a 255).
* `sudo nmap <ip_rede>/<mascara>`
  > **Rede Completa (CIDR):** Varre uma sub-rede inteira baseada na máscara de rede (Exemplo para sua rede: `192.168.68.0/22`).

### 3. Descoberta Rápida de IPs Ativos
*Antes de varrer portas, descubra quais máquinas estão ligadas para não perder tempo com IPs vazios.*
* `sudo nmap -sn <ip>`
  > **Ping Scan:** Envia pacotes ICMP/TCP para descobrir se o host está online, sem tocar nas portas.

### 4. Mapeamento de Portas Abertas
*Identifica quais "portas" de entrada estão escancaradas no sistema.*
* `sudo nmap <ip>`
  > **Scan Padrão:** Varre as 1.000 portas mais comuns. Rápido e direto.
* `sudo nmap -p- <ip>`
  > **Scan Total (65.535 portas):** Invasores procuram portas altas e não convencionais (ex: 8080, 5000, 9000). Este comando garante que nenhuma porta passe despercebida. *Nota: Demora mais para rodar.*

### 5. Identificação de Serviços e Versões (Banner Grabbing)
*Saber que a porta 80 está aberta é bom; saber que ela roda um "Apache 2.4.41 obsoleto" é o que permite ao invasor encontrar um exploit.*
* `sudo nmap -sV <ip>`
  > **Detecção de Versão:** Interroga a porta para extrair o nome exato e a versão do serviço que está rodando.
* `sudo nmap -sV --version-intensity 9 <ip>`
  > **Versão Agressiva:** Aumenta a agressividade da busca para tentar identificar serviços camuflados em portas estranhas.

### 6. Varredura de Vulnerabilidades Automatizada (NSE)
*O Nmap possui um motor de scripts (Nmap Scripting Engine) capaz de testar falhas conhecidas diretamente.*
* `sudo nmap --script vuln <ip>`
  > **Vulnerability Scan:** Cruza os serviços encontrados com um banco de dados de CVEs e vulnerabilidades públicas conhecidas para apontar falhas críticas imediatamente.

### 7. O Combo do Atacante (Modo Agressivo)
*Reúne as principais técnicas de reconhecimento em uma única linha de comando.*
* `sudo nmap -A -v <ip>`
  > **Modo Agressivo (-A):** Ativa simultaneamente a detecção de Sistema Operacional, detecção de Versões, scripts básicos de teste e rota (traceroute).
  > **Modo Verbose (-v):** Mostra os resultados na tela em tempo real à medida que são encontrados.

---

### 💡 Dica de Ouro para Auditoria (Exportação)
Para documentar o que você encontrou e salvar os resultados estruturados diretamente em um arquivo de texto, adicione `-oN <nome_do_arquivo.txt>` ao final de qualquer um dos comandos acima.

* **Exemplo prático:** `sudo nmap -sV <ip> -oN relatorio.txt`

---
*Fonte de complementos técnicos: [Viva o Linux](https://www.vivaolinux.com.br/artigo/Nmap-30-Exemplos-para-Analises-de-Redes-e-Portas)*
