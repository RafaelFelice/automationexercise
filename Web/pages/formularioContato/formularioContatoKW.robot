*** Settings ***
Library            SeleniumLibrary
Resource           ../home/homeVariaveis.robot
Resource           ../formularioContato/formularioContatoVariaveis.robot
Resource           ../../../base.robot

*** Keywords ***
Digite nome, email, assunto e mensagem
    Input Text    locator=${INPUT_NAME_CONTATE}             text=${NAMEFAKE}
    Input Text    locator=${INPUT_EMAIL_CONTATE}            text=${EMAILFAKE}
    Input Text    locator=${INPUT_ASSUNTO}                  text=teste
    Input Text    locator=${TEXTAREA_MENSAGEM}              text=Mensagem