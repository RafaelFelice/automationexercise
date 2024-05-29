*** Settings ***
Library            SeleniumLibrary
Library            String
Library            Collections
Library            FakerLibrary
Library            OperatingSystem
Resource           ../carrinho/carrinhoVariaveis.robot
Resource           ../../../base.robot

*** Keywords ***
Verificar quantidade
    [Arguments]    ${locator}    ${quantidade}
    Element Text Should Be    ${locator}    ${quantidade}