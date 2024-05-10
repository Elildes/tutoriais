# Tutorial dos comandos básicos do editor de texto Vim

## Modos de operação do Vim

- Modo Normal: modo de comandos ao abrir o Vim.  
- Modo Visual: no modo Normal diditar 'v' para visualizar e realizar comandos e não digitar.  
- Modo Insert: digitar 'i' para editar.  

Obs.: os comandos acontecem quando está no Modo Normal ou Visual.  

## Quando está no Modo Normal

- Editar: digitar 'i' (entra Modo Insert)  
- Entrar Modo Visual: digitar 'v'  

- Apagar linha inteira:
	- posicionar o cursor na linha  que quer apagar  
	- digitar 'dd'  
- Copiar e colar texto do próprio Vim:  
	- posicionar o cursor onde quer copiar  
	- digitar 'v'  
	- selecionar texto (setas)  
	- digitar 'y' (copiar)  
	- posicionar cursor onde quer colar  
	- digitar 'p' (colar, quantas vezes quiser)  
- Copiar e colar texto externo:  
	- copiar o texto externo  
	- posicionar o cursor onde quer copiar  
	- clicar com 'botão direito do mouse' ou 'scroll'  
	- digitar 'i' para editar  
- Apagar texto (melhor opção):  
	- posicionar o cursor onde quer apagar  
	- digitar 'v'  
	- selecionar texto (setas)  
	- digitar 'd' (deletar) ou 'x'    
- Buscar palavra 1:
	- Digitar: '/nome_palavra'
- Buscar palavra 2:
	- Digitar: ':%s/nome_palavra'
- Buscar e substituir palavras:
	- Digitar: ':%s/nome_palavra/nova_palavra' + 'enter'  
	Obs.:  
		Substitui apenas uma palavra de cada linha.  
		Faz diferença de maiúscula e minúscula.  
- Buscar e substituir parte de uma palavra:  
	- Digitar: ':%s/parte_palavra/nova_parte' + 'enter'  
- Salvar e sair:  
 	- digitar ':wq' + 'enter'  
- Sair sem salvar:  
 	- digitar ':q!' + 'enter'  
- Salvar:  
	- digitar ':w' + 'enter'  
- Sair:  
	- digitar ':q' + 'enter'
	
## Quando está no Modo Visual

- Editar: digitar 'i' (entra Modo Insert)  
- Sair Modo Visual: digitar 'esc' (vai para o Modo Normal)  

- Copiar e colar texto do próprio Vim:  
    - a partir do Modo Normal:
	- posicionar o cursor onde quer copiar  
	- digitar 'v'  
	- selecionar texto (setas)  
	- digitar 'y' (copiar)  
	- posicionar cursor onde quer colar  
	- digitar 'p' (colar, quantas vezes quiser)  
- Copiar e colar texto externo:  
    - a partir do Modo Normal:
	- posicionar o cursor onde quer colar  
	- digitar 'v'  
	- copiar texto externo  
	- clicar com 'botão direito do mouse' ou 'scroll'  
	- digitar 'i' para editar  
- Apagar texto (melhor opção):  
    - a partir do Modo Normal:
	- posicionar o cursor onde quer colar  
	- digitar 'v'  
	- posicionar o cursor onde quer apagar  
	- digitar 'v'  
	- selecionar texto (setas)  
	- digitar 'd' (deletar) ou 'x'    

## Quando está no Modo Insert

- Copiar e colar texto externo:  
	- copiar o texto externo  
	- posicionar o cursor onde quer copiar  
	- clicar com 'botão direito do mouse' ou 'scroll'  
- Apagar texto (letra a letra):  
	- posicionar cursor onde quer apagar texto  
	- teclar 'delete' ou 'backspace'  
- Salvar e sair:  
 	- digitar ':wq' + 'enter'  
- Sair sem salvar:  
 	- digitar ':q!' + 'enter'  
- Salvar:  
	- teclar 'esc' (sai Modo Insert)  
	- digitar ':w' + 'enter'  
- Sair:  
	- teclar 'esc' (sai modo visual)  
	- digitar ':q' + 'enter'  

Obs.: não conseguimos selecionar texto no modo insert.  
