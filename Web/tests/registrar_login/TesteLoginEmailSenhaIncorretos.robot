*** Settings ***
Documentation         Essa suíte realiza testes de registro de usuário
Resource              ../../../base.robot
Resource              ../../pages/registro_login/registroKW.robot
Resource              ../../pages/home/homeKW.robot
Task Setup            Inicie o navegador
Test Teardown         Fechar o navegador


*** Test Cases ***
[T0005] - Usuário de login com e-mail e senha incorretos
    Clique no botão 'Inscreva-se / Login'
    Verifique 'Login to your account' é visível
    Digite endereço de email e senha incorretos
    Clique no botão 'Login'
    Verifique o erro 'Your email or password is incorrect!' é visível