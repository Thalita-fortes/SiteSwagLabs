*** Settings ***
Documentation        Essa automação é para testar minhas habilidades em robot
Library              SeleniumLibrary
Library              FakerLibrary
Resource             ../Variaveis/variaveisSwagLabs.robot

*** Keywords ***
# Aqui começa o Test Case 01
Abrir o navegador
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar o navegador
    Close All Browsers

Acessar a home page do site https://www.saucedemo.com/
    Go To              ${URL}

Visualizar o titulo da Pagina 'Swag Labs'
    Title Should Be    title=${Titulo_from}

Realizar o login
    Input Text        id=user-name        standard_user 
    Input Password    id=password         secret_sauce

Clicar no botão de 'Login'
    Click Button      id=login-button

Visualizar o titulo da pagina 'Products'
    Wait Until Element Is Visible    ${Products}

# Aqui começa o Test case 02
Visualizar o titulo da tela de 'Products'
    Realizar o login
    Clicar no botão de 'Login'
    Wait Until Element Is Visible    ${Products}

Adicionar o produto
    Wait Until Element Is Visible    ${BackPack}
    Click Element                    name=add-to-cart-sauce-labs-backpack

Acessar o carrinho
    Click Element                     ${ButtonCart}

Visualizando o produto no carrinho
    ${Produto}        Get Text                         ${BackPack}
    Should Be Equal As Strings       ${Produto}        Sauce Labs Backpack

# Aqui começa o Test Case 03
Usuário está na tela 'Your Cart'
    Realizar o login
    Clicar no botão de 'Login'
    Adicionar o produto

Verificar se o produto 'Sauce Labs Backpack' foi adicionado no carrinho
    Acessar o carrinho
    Visualizando o produto no carrinho

Clicar no botão 'Continue Shopping'
    Click Element    ${ButtonShopping}
    
Verificar se voltou para a tela inicial 'Products'
    Wait Until Element Is Visible    ${Products}

# Aqui começa o Test Case 04
Está na tela 'Your Cart'
    Realizar o login
    Clicar no botão de 'Login'
    Adicionar o produto
Ter o produto 'Sauce Labs Backpack' adicionado no carrinho
    Acessar o carrinho
    Visualizando o produto no carrinho

Finalizar o pedido
    Click Element           id=checkout

# Gerando dados fakes
    ${nome}            FakerLibrary.First Name
    Input Text         id=first-name        ${nome}

    ${sobrenome}       FakerLibrary.Last Name    
    Input Text         id=last-name         ${sobrenome}

    Input Text         id=postal-code        21721450

    Click Element      id=continue

    Wait Until Element Is Visible   ${BackPack}

    Click Element      id=finish

Validar mensagem de pedido realizado com sucesso
    ${mensagem}    Get Text    //h2[@class='complete-header'][contains(.,'Thank you for your order!')]
    Should Be Equal As Strings    ${mensagem}    Thank you for your order!

