# Automação backend com Ruby e HTTParty

![Ruby](https://img.shields.io/badge/Ruby-v3.0.0-red.svg) ![HTTParty](https://img.shields.io/badge/HTTParty-v0.18.1-blue.svg)

Este repositório contém uma automação desenvolvida em Ruby, utilizando a gem HTTParty, para testar APIs RESTful de maneira eficaz. O principal objetivo deste projeto é validar o correto funcionamento das operações HTTP fundamentais, incluindo GET, POST, PUT e DELETE. 

A automação é estruturada para assegurar que cada operação não apenas retorne os códigos de status esperados, mas também que os dados manipulados estejam de acordo com as especificações definidas. Este processo permite uma verificação abrangente da integridade e da funcionalidade das APIs, garantindo que elas atendam às necessidades do usuário final.


## Índice

- [Sobre](#sobre)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Pré-Requisitos](#pré-requisitos)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Melhorias Futuras](#melhorias-futuras)


## Sobre

Este projeto foi desenvolvido com o intuito de automatizar a verificação de requisições HTTP, assegurando que cada uma delas retorne os códigos de status corretos. Utilizando o BDD (Behavior Driven Development), os testes são escritos de forma legível e estruturada.

## Tecnologias Utilizadas

- **Ruby**: Linguagem de programação utilizada.
- **HTTParty**: Gem para facilitar o envio de requisições HTTP.
- **Cucumber**: Ferramenta de BDD para execução dos testes.

## Pré-requisitos

Antes de rodar o projeto, certifique-se de ter as seguintes ferramentas instaladas:

- [Ruby](https://www.ruby-lang.org/en/downloads/) versão 2.7 ou superior
- [Bundler](https://bundler.io/) para gerenciar dependências do Ruby
- Documentacao da API utilizada: [fakestoreAPI](https://fakestoreapi.com/docs)

## Estrutura do Projeto

- **features/**: Pasta principal que contém todos os testes
  - **assertions/**: Contém as validações dos resultados das requisições
    - `assertions.rb`: Validações específicas para produtos
  - **bdd/**: Contém os cenários de teste escritos em Gherkin
    - `products.feature`: Cenários de teste para operações de produtos
  - **requests/**: Contém as definições das requisições HTTP
    - `product_requests.rb`: Métodos para requisições relacionadas a produtos
  - **step_definitions/**: Define os passos que interagem com os testes
    - `product_steps.rb`: Passos de teste para operações de produtos
  - **support/**: Contém arquivos de suporte e configuração
    - `env.rb`: Configurações iniciais do ambiente de testes
      - `base_url/`: Contém as URLs base utilizadas nas requisições
         - `DATABASE/`: Contém dados fictícios para testes
  - `Gemfile`: Declara as dependências do projeto
 
## Melhorias Futuras


- **Cobertura de Testes**: Aumentar a cobertura de testes, incluindo cenários adicionais para garantir que todas as funcionalidades sejam testadas de forma abrangente.

- **Integração Contínua**: Configurar um pipeline de integração contínua (CI) para automatizar a execução dos testes em diferentes ambientes e facilitar a detecção de problemas.

- **Documentação**: Melhorar a documentação do projeto, incluindo exemplos de uso e guias para contribuir com o desenvolvimento.

- **Refatoração**: Revisar e refatorar o código existente para melhorar a legibilidade e a manutenção, seguindo boas práticas de desenvolvimento.


