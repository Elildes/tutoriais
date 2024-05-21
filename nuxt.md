# Framework Nuxt 3

**O Intuitivo**  
**Estrutura Vue**  

[Site Oficial do Nuxt 3](https://nuxt.com/)  

Nuxt é uma estrutura de código aberto que torna o desenvolvimento web intuitivo e poderoso.  
Crie aplicativos da web e sites full-stack de alto desempenho e nível de produção com confiança.  

## Instalando Bootstrap no Nuxt 3

### 1. Instalar bootstrap via npm:  

Dentro da pasta do projeto, via terminal, digitar o código:  
```bash
npm install bootstrap@5.2.3
```

**Obs.:** escolha a versão conforme sua escolha. Ex.: **@5.2.3**.  

### 2. Criar pasta `plugins` e configurar (bootstrap/js) no arquivo `useBootstrap.client.ts`:  

Arquivo `useBootstrap.client.ts`:  
```bash
import bootstrap from 'bootstrap/dist/js/bootstrap.bundle'
export default defineNuxtPlugin(nuxtApp => { nuxtApp.provide('bootstrap', bootstrap)})
```

### 3. Configurar (bootstrap/css) arquivo nuxt.config.ts:  

Arquivo `nuxt.config.ts`:  
```bash
export default defineNuxtConfig({
  ...,
  css: ['bootstrap/dist/css/bootstrap.min.css']
})
```

### 4. Rodar a aplicação, inserir códigos html do bootstrap e verificar se deu certo:  

Comando , no terminal, para rodar a aplicação:  
```bash
npm run dev
```

Site para testar códigos bootstrap:  
[Site ofical do booststrap 5.2.x](https://getbootstrap.com/docs/5.2/utilities/flex/)  


[Fonte: Vídeo Instalando Bootstrap e Sass no Nuxt 3](https://www.youtube.com/watch?v=Mmdn23dqB0I)  
