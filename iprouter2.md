# IPROUTE2

O iproute2 é o kit de ferramentas padrão para configuração de redes no Linux desde o ano 2000, ele substitui o antigo net-tools.  

## Principais comandos

Exibir todas as interfaces de rede:
```bash
ip link show
# ou:
ip address show
```

Exibir informações de uma interface de rede (eth0):
```bash
ip address eth0
```

Habilitar interface de rede:
```bash
ip link set up eth1
```

Desabilitar interface de rede:
```bash
ip link set down eth1
```

Definir IP/Mascára de rede:
```bash
ip addr add 192.168.0.1/24 dev eth1
```

Remover definição de IP/Mascára de rede:
```bash
ip addr del 192.168.0.1/24 dev eth1
```

Informações específicas de uma interface:
```bash
ip addr show dev eth1
```

Mudando o MAC-ADDRESS:
```bash
ip link set dev eth1 address 00:52:bc:33:25:a1
```

Exibir tabela de roteamento:
```bash
ip route show
```

Adicionando rota padrão:
```bash
ip route add default via 192.168.0.1
```

Adicionando rota estática:
```bash
ip route add 192.168.0.1/24 dev eth1
```

Manipulação e consulta de rede:
```bash
ethtool
```

Exibir informações da Wlan:
```bash
iw [options] command
```

## Exemplos:

```bash
iw --debug dev <devname> link
iw --debug commands (lista todos comandos)
iw --debug dev (lista todas interfaces de redes para hardware sem fio)
iw --debug dev <devname> info (mostra informações para esta interface)
iw --debug dev <devname> link
iw --debug list (Listar todos os dispositivos sem fio e seus recursos)
```
