*** Settings ***
Documentation         Essa suíte inscreve o email para assinar novidades da página de carrinho
Resource              ../../../base.robot
Resource              ../../pages/carrinho/carrinhoVariaveis.robot             
Test Setup            Run Keywords
...                   Inicie o navegador
...                   User faker    
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0013] - Página Verificar assinatura no carrinho
    Clique no botão    ${MENU_CARRINHO}
    Verifique se ‘Shopping Cart’ está visível
    Rolar scroll até elemento ficar visível    ${INPUT_EMAIL_CARRINHO}
    Inserir texto      ${INPUT_EMAIL_CARRINHO}    ${EMAILFAKE}
    Clique no botão    ${BTN_INSCREVER_CARRINHO}
    Verifique se ‘You have been successfully subscribed!’ está visível
    Capture Page Screenshot