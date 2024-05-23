*** Settings ***
Documentation         Essa suíte realiza testes de registro de usuário
Resource              ../../../base.robot
Resource              ../../pages/registro_login/registroKW.robot
Resource              ../../pages/home/homeKW.robot
Test Setup            Inicie o navegador
Test Teardown         Fechar o navegador
# Default Tags          @regressivo


*** Test Cases ***
[T0004] - Usuário de login com e-mail e senha corretos
    [Tags]    Regressivo
    Clique no botão    ${MENU_INSCRICAO_LOGIN}
    Verifique se ‘Login to your account’ está visível
    Digite endereço de email e senha
    Clique no botão    ${BTN_LOGIN}
    Verifique se ‘Logged in as’ está visível
    Clique no botão    ${BTN_DELETE_ACCOUNT}
    Verifique se ‘Account Deleted!’ está visível