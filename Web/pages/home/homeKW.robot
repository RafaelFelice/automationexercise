*** Settings ***
Library            SeleniumLibrary
Resource           ../home/homeVariaveis.robot

*** Keywords ***
Clique no botão 'Inscreva-se / Login'
    Click Element    ${MENU_INSCRICAO_LOGIN}