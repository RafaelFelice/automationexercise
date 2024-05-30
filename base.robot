*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary
Resource           Web/pages/registro_login/registroVariaveis.robot
Resource           Web/pages/registro_login/registroKW.robot
Resource           ../automationexercise/Web/pages/home/homeVariaveis.robot
*** Variables ***
${IMAGE_AUTOMATIONEXERCISE}                 //div[@class='logo pull-left']
${URL_DEV}                                  https://automationexercise.com/
${BROWSER}                                  chrome

*** Keywords ***
Inicie o navegador
    Open Browser                            browser=${BROWSER}
    Maximize Browser Window
    Go To                                   ${URL_DEV}
    Wait Until Element Is Visible           ${IMAGE_AUTOMATIONEXERCISE}

User faker    
    ${NAMEFAKE}                             FakerLibrary.First Name
    ${LASTNAMEFAKER}                        FakerLibrary.Last Name
    ${EMAILFAKE}                            Set Variable          ${NAMEFAKE}@test.com
    ${PASSWORDFAKER}                        Generate Password
    ${COMPANYFAKER}                         FakerLibrary.Company
    ${ADDRESS1FAKER}                        FakerLibrary.Address
    ${ADDRESS2FAKER}                        FakerLibrary.Address
    ${ZIPCODEFAKER}                         FakerLibrary.Zipcode
    ${MOBILENUMBERFAKER}                    FakerLibrary.Phone Number


    Set Global Variable                     ${NAMEFAKE} 
    Set Global Variable                     ${LASTNAMEFAKER}
    Set Global Variable                     ${EMAILFAKE}
    Set Global Variable                     ${PASSWORDFAKER}
    Set Global Variable                     ${COMPANYFAKER}
    Set Global Variable                     ${ADDRESS1FAKER}
    Set Global Variable                     ${ADDRESS2FAKER}
    Set Global Variable                     ${ZIPCODEFAKER}
    Set Global Variable                     ${MOBILENUMBERFAKER}
    Set Global Variable                     ${TEMP_DIR}

Fechar o navegador
    Close Browser

Registrar usuário
    Clique no botão    ${MENU_INSCRICAO_LOGIN}
    Verifique se ‘New User Signup!’ está visível
    Digite o nome e endereço de e-mail
    Clique no botão    ${BTN_SIGNUP}
    Verifique se ‘Enter Account Information’ está visível
    Preencha os dados: Título, Nome, Email, Senha, Data de nascimento
    Marque a caixa de seleção    Sign up for our newsletter!    ${CHECKBOX_NEWSLETTER}
    Marque a caixa de seleção    Receive special offers from our partners!    ${CHECKBOX_OFFERS}
    Preencha os dados: Nome, Sobrenome, Empresa, Endereço, Endereço2, País, Estado, Cidade, CEP, Número de celular
    Clique no botão    ${BTN_CREATE_ACCOUNT}
    Verifique se ‘Account Created!’ está visível
    Clique no botão    ${BTN_CONTINUE}
    Wait Until Element Is Visible    locator=${BTN_LOGOUT}
    Clique no botão    ${BTN_LOGOUT}

Clique no botão
    [Arguments]      ${locator}
    Click Element    ${locator}

Verifique se ‘${FRASE}’ está visível
    Wait Until Page Contains    text=${FRASE}

Interagir com Alert
    Handle Alert

O objeto está visível
    [Arguments]                      ${locator}
    Element Should Be Visible        ${locator}

Capturar Texto
    [Arguments]    ${locator}
    Get Text    ${locator}

Verificar título da página "${TÍTULO}"
    Title Should Be    title=${TÍTULO}

Inserir texto
    [Arguments]    ${locator}    ${text}
    Input Text    locator=${locator}    text=${text}

Rolar scroll até elemento ficar visível
    [Arguments]                 ${locator}
    Scroll Element Into View    ${locator}

Movimentar mouse até elemento
    [Arguments]                 ${locator}
    Mouse Over                  ${locator}

Operação de multiplicação
    [Arguments]      ${locator1}    ${locator2}
    ${resultado}=    Evaluate    ${locator1} * ${locator2}
    Log    O resultado da multiplicação é: ${resultado}