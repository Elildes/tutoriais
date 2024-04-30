# INSTALAR O ANACONDA NAVIGATOR NO LINUX

# Í N D I C E

1. [Instalar o Anaconda](#instalar)

# Passo a passo

<div id='instalar'/>

1. Baixar o Miniconda (conda + Python): https://docs.conda.io/en/latest/miniconda.html  

2. Instalar o Miniconda:  

```bash
bash <nome_do_arquivo.sh>
```  

3. Atualizar o Miniconda:  

```bash
conda update conda
```

4. Baixar/instalar o Anaconda Navigator (Modo gráfico)  

```bash
conda install -c anaconda anaconda-navigator
```

ou:  

4. Baixar o arquivo.sh do site: https://www.anaconda.com/distribution/#linux  

5. Instalar o Anaconda navigator:  

```bash
sudo bash nome_do_arquivo.sh
```

**Obs.:** caso queira atualizar digite o comando:  

```bash
bash nome_do_arquivo.sh -u
```

6. Abrir o Anaconda Navigator:  

```bash
<abrir o terminal>
anaconda-navigator
```

Fontes: https://anaconda.org/anaconda/anaconda-navigator  
