*** Settings ***
Library            SeleniumLibrary
Resource           ../home/homeVariaveis.robot
Resource           ../formularioContato/formularioContatoVariaveis.robot
Resource           ../../../base.robot

*** Keywords ***
Digite nome, email, assunto e mensagem
    Input Text    locator=${INPUT_NAME_CONTATE}             text=Nome
    Input Text    locator=${INPUT_EMAIL_CONTATE}            text=email@email.com
    Input Text    locator=${INPUT_ASSUNTO}                  text=teste
    Input Text    locator=${TEXTAREA_MENSAGEM}              text=Mensagem

Clique no botão OK
    Handle Alert