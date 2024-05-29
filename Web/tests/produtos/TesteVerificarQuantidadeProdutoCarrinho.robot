*** Settings ***
Documentation         Essa suíte realiza testes na página de Produtos e em detalhes do produto
Resource              ../../../base.robot
Resource              ../../pages/produtos/produtosVariaveis.robot  
Resource              ../../pages/produtos/produtosKW.robot
Resource              ../../pages/carrinho/carrinhoKW.robot
Test Setup            Run Keywords
...                   Inicie o navegador
...                   Product
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0015] - Verifique a quantidade do produto no carrinho
    Clique no botão    ${MENU_PRODUCTS}
    Verifique se ‘All Products’ está visível
    Clique no botão    ${BTN_VER_PRODUTOS}
    Interagir com AD    ${CARD_AD}    ${BTN_FECHAR_AD}
    Verificar título da página "Automation Exercise - Product Details"
    Inserir texto     ${INPUT_QUANTIDADE}    ${QUANTIDADE}
    Clique no botão    ${BTN_ADD_CARRINHO}   
    Clique no link    ${MODAL}    ${LINK_VER_CARRINHO}
    Verificar quantidade    ${QUANTIDADE_CARRINHO}    ${QUANTIDADE}
    Clique no botão    ${BTN_EXCLUIR}