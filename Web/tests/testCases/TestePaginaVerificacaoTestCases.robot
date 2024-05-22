*** Settings ***
Documentation         Essa suíte realiza testes na página de test cases
Resource              ../../../base.robot
Resource              ../../pages/formularioContato/formularioContatoVariaveis.robot
Resource              ../../pages/home/homeKW.robot
Resource              ../../pages/formularioContato/formularioContatoKW.robot
Test Setup            Inicie o navegador    
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0009] - Página de verificação de casos de teste
    Clique no botão    ${MENU_TEST_CASES}
    Verifique se ‘Test Cases’ está visível