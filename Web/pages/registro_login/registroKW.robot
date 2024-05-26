*** Settings ***
Library            SeleniumLibrary
Library            String
Library            Collections
Library            FakerLibrary
Library            OperatingSystem
Resource           ../registro_login/registroVariaveis.robot
Resource           ../../../base.robot


*** Keywords ***
Digite endereço de email e senha
    ${email}    ${password} =    Ler Credenciais do Arquivo
    Input Text                  locator=${INPUT_EMAIL_LOGIN}       text=${email}
    Input Text                  locator=${INPUT_PASSWORD_LOGIN}    text=${password}
    Log    Email: ${email}
    Log    Password: ${password}
    
Preencha os dados: Título, Nome, Email, Senha, Data de nascimento
    ${PASSWORDFAKER}           FakerLibrary.Password
    Click Element              locator=${RADIO_MR.}
    Should Not Be Empty        item=${REGISTER_NAME}
    Should Not Be Empty        item=${REGISTER_EMAIL}
    Input Text                 locator=${REGISTER_PASSWORD}    text=${PASSWORDFAKER}

    Log    Password: ${PASSWORDFAKER}
    Salvar Credenciais em Arquivo    ${EMAILFAKE}    ${PASSWORDFAKER}
    
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
     
Generate Password
    [Arguments]    ${length}=10
    ${password}=    FakerLibrary.Password    ${length}    False    False    False    True
    RETURN    ${password}

Salvar Credenciais em Arquivo
    [Arguments]    ${email}    ${password}
    ${file_path} =    Set Variable    ${TEMP_DIR}/email_senha.txt
    Log    Creating file at: ${file_path}
    Create File    ${file_path}    ${email}:${password}
    Log    File created with content: ${email}:${password}

Ler Credenciais do Arquivo
    [Arguments]    ${file_path}=${TEMP_DIR}/email_senha.txt
    Log    Reading file at: ${file_path}
    ${credentials} =    Get File    ${file_path}
    Log    File content: ${credentials}
    ${email}    ${password} =    Split String    ${credentials}    :
    Log    Read email: ${email}
    Log    Read password: ${password}
    RETURN    ${email}    ${password}