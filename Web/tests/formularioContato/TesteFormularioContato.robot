*** Settings ***
Documentation         Essa suíte realiza testes para contactar o suporte
Resource              ../../../base.robot
Resource              ../../pages/formularioContato/formularioContatoVariaveis.robot
Resource              ../../pages/home/homeKW.robot
Resource              ../../pages/formularioContato/formularioContatoKW.robot
Test Setup            Inicie o navegador    
Test Teardown         Fechar o navegador
Default Tags          @regressivo

*** Test Cases ***
[T0008] - Formulário de contato
    Clique no botão    ${MENU_CONTATE_NOS}
    Verifique se ‘Get In Touch’ está visível
    Digite nome, email, assunto e mensagem
    Clique no botão    ${BTN_ENVIAR}
    Clique no botão OK
    Verifique se ‘Success! Your details have been submitted successfully.’ está visível
    Clique no botão    ${MENU_HOME}
    # verifique se foi direcionado para a página inicial com sucesso