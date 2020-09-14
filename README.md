# Safra Dreams <img src = "https://user-images.githubusercontent.com/7032799/93025272-e7da4480-f5d2-11ea-9280-cace7cb3f390.png" width='147' height="160" align="right"/>

![Badge](https://img.shields.io/github/issues/douglasakassaka/SafraDreams)
<img src= "https://img.shields.io/github/forks/douglasakassaka/SafraDreams"/>
<img src= "https://img.shields.io/github/stars/douglasakassaka/SafraDreams"/>
<img src= "https://img.shields.io/github/license/douglasakassaka/SafraDreams"/>

## Quem somos
> O Safra Dreams é um aplicativo que oferece a possibilidade de compartilhar sonhos com outras pessoas de forma personalizada, segura e pratica.
No Safra Dreams você abre a sua conta com a ajuda do nosso dreamy bot e já pode começar a sonhar. Você precisa apenas escolher um nome para o seu sonho, o valor e a data planejada. Depois é só decidir se você vai sonhar sozinho ou se vai querer um parceiro nessa jornada!
Segurança é importante para a gente, um dreamer só poderá sacar todo o dinheiro do sonho compartilhado se todos os outros dreamers aprovarem a operação no aplicativo com a suas senhas pessoais. Caso algum dos dreamers desista da iniciativa ele pode retirar a sua parte aplicada a qualquer momento e todos os demais serão notificados da desistência. 

<p align="center">
  Safra dreams, porque sonhar junto é sonhar mais!<br />
  <img src = "https://user-images.githubusercontent.com/7032799/93025272-e7da4480-f5d2-11ea-9280-cace7cb3f390.png" width='40' height="50" />
</p>

Tabela de conteúdo
==================
<!--ts-->
  - [O Projeto](#getting-started)
  - [Pré-requisitos](#pre-requisitos)
  - [Roadmap](#roadmap)
  - [Tecnologias](#tecnologias)
       - [Documentação Técnica](#documentação-técnica)
       - [Design da Solução](#design-solucao) 
       - [Estrutura Sequencial do Aplicativo](#estrutura-screen) 
       - [Chatbot](#chat-bot)
       - [Infraestrutura](#infra)
       - [Banco de dados](#banco)
  - [Links Úteis](#links-uteis)
  - [Autores](#autores)
<!--te-->

## O Projeto
Safra Dreams é um projeto que foi desenvolvido durante o hackaton do processo seletivo Programa Technee Banco Safra 2020, cujo desafio proposto foi "Como podemos inovar e nos diferenciar criando experiência simples, transparente e instantâneas para os nossos clientes e parceiros, com soluções digitais disruptivas em cenários de crescimento exponencial?"
Tendo em vista isso, foi criado Safra Dreams, que é um aplicativo que oferece a possibilidade de compartilhar sonhos com outras pessoas de forma personalizada, segura e prática. 

## Pré-requisitos
- Sistema operacional Windows, Linux ou macOS
- MySQL Worbench
[Clique aqui para realizar o download](https://downloads.mysql.com/archives/workbench/)
- Delphi (Versão utilizada: Delphi 10.2 - Tokyo)
[Clique aqui para realizar o download](https://www.embarcadero.com/br/products/delphi)

## Roadmap 
1) Design Thinking

<img src = "https://user-images.githubusercontent.com/62389820/93034385-470a7a00-f610-11ea-9fbe-837368cad0a2.png" width="850" height="500" align="center"/>

2) Brainstorming

<img src = "https://user-images.githubusercontent.com/62389820/93034630-16771000-f611-11ea-94c2-e5f33e1876bc.png" height="500" align="center"/>

3) Canvas

Canvas é uma linguagem compartilhada para *descrever*, *visualizar*, *avaliar* e *mudar* modelos de negócio.
O Canvas é dividido em 9 blocos de construção.

O primeiro bloco abordamos para quem queremos criar o valor e quem serão os nossos clientes mais importantes.

O segundo bloco abordamos o que iremos oferecer para os nossos clientes e quais problemas estamos ajudando a resolver.

O terceiro bloco abordamos quais canais de comunicação, distribuição e venda usaremos para entregar a proposta de valor.

O quarto bloco abordamos que tipo de relacionmaneto queremos manter com os clientes e como este relacionamento está integrado ao modelo de negócio.

O quinto bloco de receitas abordamos quanto os clientes querem pagar pela nossa proposta de valor e como os nossos clientes preferem pagar.

O sexto bloco abordamos quais recursos são necessários para fazer o negócio funcionar e quais são os ativos mais importantes para o modelo de negócio.

O sétimo bloco abordammos quais atividades importantes para o negócio funcionar e o que precisa ser feito para que o negócio opere com sucesso.

O oitava bloco abordamos quais as parceirias necessárias para criar e entregar a proposta de valor ao cliente.

E por último, o nono bloco abordamos quais são os custos mais importantes relacionados a operação do modelo de negócio.

<img src = "https://user-images.githubusercontent.com/62389820/93033500-e9c0f980-f60c-11ea-99e2-5da6f294fd6c.JPG" width="850" height="500" align="center" />

## Tecnologias

### Documentação Técnica

Para o desenvolvimento desse aplicativo para Android, utilizamos o Delphi na sua versão 10.2 Tokyo que gera código nativo para Android e iOS através da biblioteca FireMonkey, ou seja, não depende das bibliotecas desses sistemas.

Por enquanto, por conta do curto tempo para desenvolver um app completo, o frontend e backend foram desenvolvidos em um monolito. Desta forma, a conexão com o banco de dados na nuvem não está sendo realizada e os dados estão mockados.

A classe TIntegracaoAPIClass é a responsável por realizar a comunicação com as APIs disponibilizadas pelo Banco Safra. Abaixo é possível verificar uma breve descrição de cada método público desta classe.

    class function AmbienteEstaAcessivel: boolean;         -> Retorna True caso o endpoint do Health Check retorne 200-OK, senão, retorna False;
    class function RetornarChaveAuth2: string;             -> Realiza a autenticação OAuth2 e retorna o token recebido do endpoint;
    class function RetornarDadosDaConta: TDadosDaConta;    -> Retorna um record com os dados da conta corrente;
    class function RetornarSaldosDaConta: TSaldosDaConta;  -> Retorna um record com os saldos disponíveis na conta corrente; 

Para saber mais sobre a API e seus endpoints, acesse https://github.com/banco-safra/technee.

### Design da Solução

No diagrama abaixo estão representadas as interações sequenciais e, também, dos atributos que serão coletados em cada etapa que o usuário interagir com o protótipo.

<img src = "https://user-images.githubusercontent.com/7032799/93026808-2118b180-f5df-11ea-8426-0488d3a495a8.jpg" width="400" height="500" align="center"/>

### Estrutura Sequencial do Aplicativo 

<img src = "https://user-images.githubusercontent.com/7032799/93027292-4b1fa300-f5e2-11ea-99b2-1f85e8606bc3.JPG" width="800" height="800" align="center"/>

### Chatbot

<img src = "https://user-images.githubusercontent.com/7032799/93027601-5d9adc00-f5e4-11ea-9025-5162f4875f77.png"/>

### Infraestrutura

<img src = "https://user-images.githubusercontent.com/7032799/93027383-bff2dd00-f5e2-11ea-86e4-5b3ecb97edf6.JPG"/>

### Banco de dados

A estruturação e implementação do banco de dados relacional foi feita no MySQL, ele foi escolhido na solução devido a disponibilidade e por ser um dos componentes centrais da maioria das aplicações públicas da Internet. No MySQL Workbench foram definidas as entidades, atributos e os relacionamento. Ou seja, criamos uma schema 'safradreams' contendo as tabelas Cliente, Extrato, Saldo, Sonho e SonhoLista, com seus respectivos atributos e relacionamentos, como pode ser observado no diagrama abaixo.


<img src = "https://user-images.githubusercontent.com/7032799/93027348-828e4f80-f5e2-11ea-8ddc-7d48d3d448da.JPG" width="800" height="500" align="center"/>


<img src = "https://user-images.githubusercontent.com/7032799/93033261-e11bf380-f60b-11ea-8faf-3f70f4a61962.JPG">



## Links Úteis
- APIs complementares disponíveis no GitHub do Safra
[Clique aqui para acessar](https://github.com/banco-safra/technee)

## Autores
- Brendon Andrade
- David Pega
- Douglas Akassaka
- Gabriel Agostini
- Julio Gomes

