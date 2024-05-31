*** Settings ***
Documentation         Essa suíte realiza adição de produtos ao carrinho de compras
Resource              ../../../base.robot
Resource              ../../pages/produtos/produtosVariaveis.robot
Resource              ../../pages/carrinho/carrinhoVariaveis.robot    
Test Setup            Inicie o navegador    
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0014] - Adicionar produtos ao carrinho
    Clique no botão    ${MENU_PRODUCTS}
    Verifique se ‘All Products’ está visível
    Capturar Texto    ${NOME_PRODUTO_1}
    Set Test Variable    ${produto1}
    Capturar Texto    ${TXT_PRECO_PROD_1}
    Set Test Variable    ${preco1}
    Rolar scroll até elemento ficar visível    ${BTN_VER_PRODUTOS}
    Movimentar mouse até elemento    ${IMG_PRODUTO_1}
    Wait Until Element Is Visible    ${BTN_ADD_TO_CART_1}
    Clique no botão    ${BTN_ADD_TO_CART_1}
    Wait Until Element Is Visible    ${BTN_CONTINUE_SHOPPING}
    Clique no botão    ${BTN_CONTINUE_SHOPPING}
    Capturar Texto    ${NOME_PRODUTO_2}
    Set Test Variable    ${produto2}
    Capturar Texto    ${TXT_PRECO_PROD_2}
    Set Test Variable    ${preco2}
    Movimentar mouse até elemento    ${IMG_PRODUTO_2}
    Wait Until Element Is Visible    ${BTN_ADD_TO_CART_2}
    Clique no botão    ${BTN_ADD_TO_CART_2}
    Wait Until Element Is Visible    ${BTN_VER_CARRINHO}
    Clique no botão    ${BTN_VER_CARRINHO}
    Verifique se ‘${produto1}’ está visível
    Verifique se ‘${produto2}’ está visível
    Verifique se ‘${preco1}’ está visível
    Verifique se ‘${preco2}’ está visível

    Capturar Texto    ${BTN_QTD_PRODUTO_1}
    Set Test Variable    ${quantidade1}
    Capturar Texto    ${TXT_PRECO_TOTAL_PRODUTO_1}
    Set Test Variable    ${precoTotal1}
    Operação de multiplicação    ${quantidade1}    ${preco1}
    Set Test Variable    ${resultado1}
    Should Be Equal    ${resultado1}    ${precoTotal1}

    Capturar Texto    ${BTN_QTD_PRODUTO_2}
    Set Test Variable    ${quantidade2}
    Capturar Texto    ${TXT_PRECO_TOTAL_PRODUTO_2}
    Set Test Variable    ${precoTotal2}
    Operação de multiplicação    ${quantidade2}    ${preco2}
    Should Be Equal    ${resultado2}    ${precoTotal2}
    