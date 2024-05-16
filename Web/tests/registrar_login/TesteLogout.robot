*** Settings ***
Documentation         Essa suíte realiza testes de registro de usuário
Resource              ../../../base.robot
Resource              ../../pages/registro_login/registroKW.robot
Resource              ../../pages/home/homeKW.robot
Task Setup            Inicie o navegador
Test Teardown         Fechar o navegador
Default Tags          @regressivo


*** Test Cases ***
[T0006] - Logout usuário
    Clique no botão    ${MENU_INSCRICAO_LOGIN}
    Verifique se ‘Login to your account'’ está visível
    Digite endereço de email e senha
    Clique no botão    ${BTN_LOGIN}
    Verifique se ‘Logged in as’ está visível
    Clique no botão    ${BTN_LOGOUT}
    Verifique se ‘Login to your account’ está visível