
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
[T0003] Registrar usuário
    [Tags]    Regressivo
    Clique no botão    ${MENU_INSCRICAO_LOGIN}
    Verifique se ‘New User Signup!’ está visível
    Inserir texto    ${INPUT_NAME}    ${NAMEFAKE}
    Inserir texto    ${INPUT_EMAIL}    ${EMAILFAKE}
    Clique no botão    ${BTN_SIGNUP}
    Verifique se ‘Enter Account Information’ está visível
    Preencha os dados: Título, Nome, Email, Senha, Data de nascimento
    Marque a caixa de seleção    Sign up for our newsletter!    ${CHECKBOX_NEWSLETTER}
    Marque a caixa de seleção    Receive special offers from our partners!    ${CHECKBOX_OFFERS}
    Preencha os dados: Nome, Sobrenome, Empresa, Endereço, Endereço2, País, Estado, Cidade, CEP, Número de celular
    Clique no botão    ${BTN_CREATE_ACCOUNT}
    Verifique se ‘Account Created!’ está visível
    Clique no botão    ${BTN_CONTINUE}
    Verifique se ‘Logged in as’ está visível
    Clique no botão    ${BTN_LOGOUT}
    Verifique se ‘Login to your account’ está visível
    Capture Page Screenshot