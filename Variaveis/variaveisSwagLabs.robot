*** Settings ***
Documentation        Esse aquivo contem as variaveis para executar o teste

*** Variables ***
${URL}               https://www.saucedemo.com/
${Titulo_from}       Swag Labs
${Products}          //span[@class='title'][contains(.,'Products')]
${BackPack}          //a[contains(.,'Sauce Labs Backpack')]
${ButtonCart}        //a[@class='shopping_cart_link']
${TelaCart}          //span[contains(.,'Your Cart')]
${ButtonShopping}        //button[@name='continue-shopping']