*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary
Library    String

*** Variables ***
${INPUT_NAME}             //input[@name='name']
${INPUT_EMAIL}            //input[@name='email']   
${BTN_SIGNUP}             //button[text()='Signup']
${BTN_MR.}                id_gender1
${REGISTER_NAME}          name
${REGISTER_EMAIL}         email
${REGISTER_PASSWORD}      password



*** Keywords ***
Verifique '${FRASE}' é visível
    Wait Until Page Contains    text=${FRASE}
    

Digite o nome e endereço de e-mail    
    ${NOMEFAKE}                 FakerLibrary.First Name
    ${EMAILFAKE}                Set Variable          ${NOMEFAKE}@test.com
    
    Input Text                  ${INPUT_NAME}         ${NOMEFAKE}   
    Input Text                  ${INPUT_EMAIL}        ${EMAILFAKE}

Clique no botão 'Inscrever-se'
    Click Button                locator=${BTN_SIGNUP}

Verifique se '${FRASE}' está visível
    Wait Until Page Contains    text=${FRASE}

Preencha os dados: Título, Nome, Email, Senha, Data de nascimento
    Click Element              locator=${BTN_MR.}
    Should Not Be Empty        item=${REGISTER_NAME}
    Should Not Be Empty        item=${REGISTER_EMAIL}
    Input Text                 locator=${REGISTER_PASSWORD}    text=123456
    