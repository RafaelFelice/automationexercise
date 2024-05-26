*** Settings ***
Documentation         Essa suíte realiza testes de registro de usuário
Resource              ../../../base.robot
Resource              ../../pages/registro_login/registroKW.robot
Resource              ../../pages/home/homeKW.robot
Task Setup            Inicie o navegador
Test Teardown         Fechar o navegador
Default Tags          @regressivo


*** Test Cases ***
[T0005] - Usuário de login com e-mail e senha incorretos
    Clique no botão    ${MENU_INSCRICAO_LOGIN}
    Verifique se ‘Login to your account’ está visível
    Inserir texto    ${INPUT_EMAIL_LOGIN}    ${email_incorreto}
    Inserir texto    ${INPUT_PASSWORD_LOGIN}    ${password_incorreto}
    Clique no botão    ${BTN_LOGIN}
    Verifique se ‘Your email or password is incorrect!’ está visível