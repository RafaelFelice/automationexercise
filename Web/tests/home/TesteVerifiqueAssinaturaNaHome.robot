*** Settings ***
Documentation         Essa suíte simula o funcionamento do scroll na home page
Resource              ../../../base.robot              
Test Setup            Run Keywords
...                   Inicie o navegador
...                   User faker    
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0012] - Verifique a assinatura na página inicial
    Rolar scroll até elemento ficar visível    ${INPUT_EMAIL_HOME}
    Verifique se ‘Subscription’ está visível
    Inserir texto      ${INPUT_EMAIL_HOME}    ${EMAILFAKE}
    Clique no botão    ${BTN_INSCREVER_HOME}
    Verifique se ‘You have been successfully subscribed!’ está visível
    Capture Page Screenshot