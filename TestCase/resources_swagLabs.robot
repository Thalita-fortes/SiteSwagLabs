*** Settings ***
Documentation        Aqui estarão todos os steps de Test 
Resource             ../TestSucesso/swagLabs.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Realizar o Login no site 'Swag Labs'
    [Documentation]        Essa suite irá realizar o Login no site 'Swag Labs'
    [Tags]                 Login

    Acessar a home page do site https://www.saucedemo.com/
    Visualizar o titulo da Pagina 'Swag Labs'
    Realizar o login
    Clicar no botão de 'Login'
    Visualizar o titulo da pagina 'Products'

Caso de Teste 02 - Realiza a inserção de itens no carrinho
    [Documentation]      Essa suite de teste irá realizar a inserção de produtos no carrinho  
    [Tags]               AdicaoProd
    
    Visualizar o titulo da tela de 'Products'
    Adicionar o produto 
    Acessar o carrinho
    Visualizando o produto no carrinho

Caso de Teste 03 - Testa o botão de 'Continue Shopping'
    [Documentation]           Essa suite de teste irá realizar verificação do produto no carrinho 
    ...                       E acessará o carrinho, após verificar o item no carrinho, irá voltar para a tela principal
    [Tags]            ContinueShopping
    
    Usuário está na tela 'Your Cart'
    Verificar se o produto 'Sauce Labs Backpack' foi adicionado no carrinho
    Clicar no botão 'Continue Shopping'
    Verificar se voltou para a tela inicial 'Products'

Caso de teste 04 - Realiza o pedido com sucesso
    [Documentation]       Essa suite de Teste irá realizar o pedido com sucesso
    [Tags]                Pedido
    
    Está na tela 'Your Cart'
    Ter o produto 'Sauce Labs Backpack' adicionado no carrinho
    Finalizar o pedido
    Validar mensagem de pedido realizado com sucesso