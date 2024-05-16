*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary
Library            String
Library            Collections
Resource           ../registro_login/registroVariaveis.robot
Resource           ../../../base.robot


*** Keywords ***
Preencha os dados: Título, Nome, Email, Senha, Data de nascimento
    Click Element              locator=${RADIO_MR.}
    Should Not Be Empty        item=${REGISTER_NAME}
    Should Not Be Empty        item=${REGISTER_EMAIL}
    Input Text                 locator=${REGISTER_PASSWORD}    text=123456
    
    ${dates}=    Get List Items    id=days   
    ${random_index}=    Evaluate    random.randint(0, len($dates)-1)    random
    Select From List By Index        id=days    ${random_index}
    ${selected_date}=    Set Variable    ${dates}[${random_index}]

    ${months}=    Get List Items    id=months   
    ${random_index}=    Evaluate    random.randint(0, len($months)-1)    random
    Select From List By Index        id=months    ${random_index}
    ${selected_date}=    Set Variable    ${months}[${random_index}]

    ${years}=    Get List Items    id=years   
    ${random_index}=    Evaluate    random.randint(0, len($years)-1)    random
    Select From List By Index        id=years    ${random_index}
    ${selected_date}=    Set Variable    ${years}[${random_index}]

Marque a caixa de seleção
    [Arguments]    ${FRASE}    ${locator}
    Wait Until Page Contains    text=${FRASE}
    Click Element    ${locator}

Preencha os dados: Nome, Sobrenome, Empresa, Endereço, Endereço2, País, Estado, Cidade, CEP, Número de celular
    Input Text    locator=${INPUT_FIRSTNAME}    text=${NAMEFAKE}
    Input Text    locator=${INPUT_LASTNAME}     text=${LASTNAMEFAKER}
    Input Text    locator=${INPUT_COMPANY}      text=${COMPANYFAKER}
    Input Text    locator=${INPUT_ADDRESS}      text=${ADDRESS1FAKER}
    Input Text    locator=${INPUT_ADDRESS2}     text=${ADDRESS2FAKER}

    ${countries}=    Get List Items    id=country   
    ${random_index}=    Evaluate    random.randint(0, len($countries)-1)    random
    Select From List By Index    id=country    ${random_index}
    ${selected_country}=    Set Variable    ${countries}[${random_index}]

    Input Text    locator=${INPUT_ZIPCODE}      text=${ZIPCODEFAKER}
    Input Text    locator=${MOBILE_NUMBER}      text=${MOBILENUMBERFAKER}
     
Digite endereço de email e senha
    Input Text                  ${INPUT_EMAIL_LOGIN}       teste04@qa.com
    Input Text                  ${INPUT_PASSWORD_LOGIN}    teste

Digite endereço de email e senha incorretos
    ${EMAILFAKE}                FakerLibrary.Email
    ${PASSWORDFAKE}             FakerLibrary.Password        
    
    Input Text                  ${INPUT_EMAIL_LOGIN}        ${EMAILFAKE}
    Input Text                  ${INPUT_PASSWORD_LOGIN}     ${PASSWORDFAKE}   