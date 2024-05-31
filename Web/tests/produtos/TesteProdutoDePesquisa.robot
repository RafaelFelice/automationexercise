*** Settings ***
Documentation         Essa suíte realiza pesquisa de produtos através do campo de busca
Resource              ../../../base.robot
Resource              ../../pages/produtos/produtosVariaveis.robot  
Test Setup            Inicie o navegador    
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0011] - Produto de pesquisa
    Clique no botão    ${MENU_PRODUCTS}
    Verifique se ‘All Products’ está visível
    Capturar Texto    ${NOME_PRODUTO_1}
    Set Test Variable    ${produto1}
    Inserir texto    ${INPUT_BUSCA_PRODUTOS}   ${produto1}
    Clique no botão    ${BTN_LUPA_PESQUISAR}
    Verifique se ‘Searched Products’ está visível
    Verifique se ‘${produto1}’ está visível
    Capture Page Screenshot