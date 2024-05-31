*** Settings ***
Documentation         Essa suíte realiza testes na página de Produtos e em detalhes do produto
Resource              ../../../base.robot
Resource              ../../pages/produtos/produtosVariaveis.robot  
Test Setup            Inicie o navegador    
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0010] - Verifique todos os produtos e página de detalhes do produto
    Clique no botão    ${MENU_PRODUCTS}
    Verifique se ‘All Products’ está visível
    O objeto está visível    ${LISTA_MARCAS}
    Capturar Texto    ${NOME_PRODUTO_1}
    Set Test Variable    ${produto1}
    Clique no botão    ${BTN_VER_PRODUTOS}
    Verificar título da página "Automation Exercise - Product Details"
    Verifique se ‘${produto1}’ está visível
    Verifique se ‘Availability:’ está visível
    Verifique se ‘Category:’ está visível
    Verifique se ‘Rs.’ está visível
    Verifique se ‘Condition:’ está visível
    Verifique se ‘Brand:’ está visível
    Capture Page Screenshot