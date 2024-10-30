#language: pt

    Funcionalidade: Pesquisar produtos
    Para averiguar informacoes
    o usuario do sistema
    Deseja poder consultar informacoes sobre os produtos

    @Cenario1
    Cenario: Buscar informacoes de produto
    Dado que o usuario consulte as informacoes de um produto
    Quando ele realizar a Pesquisa
    Entao uma lista de produtos deve ser exibida


    
    @Cenario2
    Cenario: Cadastrar novo produto
    Dado que o usuario cadastre um novo produto
    Quando ele enviar as informacoes de cadastro
    Entao esse produto sera cadastrado



    @Cenario3
    Cenario: Alterar dados de produto
    Dado que o usuario altere os dados de um produto
    Quando ele enviar os dados alterados
    Entao as alteracoes serao salvas



    @Cenario4
    Cenario: Excluir um produto
    Dado que o usuario queira excluir um produto
    Quando ele enviar o id do produto
    Entao o produto sera excluido