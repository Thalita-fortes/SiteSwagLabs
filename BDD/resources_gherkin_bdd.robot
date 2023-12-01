# *** Settings ***
# Documentation        Aqui estarão todos os steps de Test 
# Resource             swagLabs.robot
# Test Setup           Abrir o navegador
# Test Teardown        Fechar o navegador


# *** Test Cases ***
# Caso de Teste 01 - Realizar o Login no site 'Swag Labs'
#     [Documentation]        Essa suite irá realizar o Login no site 'Swag Labs'
#     [Tags]                 Login

#     Dado que o usuário acessa a home page do site https://www.saucedemo.com/
#     Quando o usuário preencher o campo de Login e Senha
#     E o usuário clicar em 'Login
#     Então o sistema deverá redirecionar ele para a tela inicial

# Caso de Teste 02 - Realiza a inserção de itens no carrinho
#     [Documentation]      Essa suite de teste irá realizar a inserção de produtos no carrinho  
#     [Tags]               AdicaoProd
    
#     Dado que o usuário está na tela inicial 'Products'
#     Quando o usuário adicionar o item 'Sauce Labs Backpack' no carrinho e o carrinho carrinho
#     Então o sistema deverá redirecionar ele para a tela 'Your Cart'

# Caso de Teste 03 - Realiza o pedido
#     Dado que o usuário está na tela 'Your Cart'
#     Quando o produto 'Sauce Labs Backpack' é adicionado ao carrinho
#     E o usuário clicar em 'Continue Shopping'
#     Então o sistema deverá voltar para a tela inicial 'Products'