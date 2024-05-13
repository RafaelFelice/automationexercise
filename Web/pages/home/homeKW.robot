*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${MENU_INSCRICAO_LOGIN}        //a[@href='/login']

*** Keywords ***
Clique no botão 'Inscreva-se / Login'
    Click Element    ${MENU_INSCRICAO_LOGIN}