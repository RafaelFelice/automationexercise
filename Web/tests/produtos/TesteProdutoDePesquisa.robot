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
    Capturar Texto    ${NOME_PRODUTO}
    Inserir texto    ${INPUT_BUSCA_PRODUTOS}   ${texto}
    Clique no botão    ${BTN_LUPA_PESQUISAR}
    Verifique se ‘Searched Products’ está visível
    Verifique se ‘${texto}’ está visível
    Capture Page Screenshot