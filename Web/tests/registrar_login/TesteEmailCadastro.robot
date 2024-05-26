*** Settings ***
Documentation         Essa suíte realiza testes de registro de usuário
Resource              ../../../base.robot
Resource              ../../pages/registro_login/registroKW.robot
Resource              ../../pages/home/homeKW.robot
Test Setup            Run Keywords
...                   Inicie o navegador
...                   User faker
Test Teardown         Fechar o navegador
# Default Tags          @regressivo


*** Test Cases ***
[T0007] - Registrar usuário com e-mail existente
    [Tags]     Regressivo    
    Clique no botão    ${MENU_INSCRICAO_LOGIN}
    Verifique se ‘Login to your account’ está visível
    Inserir texto    ${INPUT_NAME}    ${nome_cadastrado}
    Inserir texto    ${INPUT_EMAIL}    ${email_cadastro}
    Clique no botão    ${BTN_SIGNUP}
    Verifique se ‘Email Address already exist!’ está visível