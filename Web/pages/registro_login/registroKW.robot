*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary
Library    String

*** Variables ***
${INPUT_NAME}             //input[@name='name']
${INPUT_EMAIL}            //input[@name='email']
${BTN_SIGNUP}             //button[text()='Signup']
${INPUT_EMAIL_LOGIN}      //form[@action='/login']//input[@name='email']
${INPUT_PASSWORD_LOGIN}   //form[@action='/login']//input[@name='password']
${BTN_LOGIN}              //button[text()='Login']
${BTN_MR.}                id_gender1
${REGISTER_NAME}          name
${REGISTER_EMAIL}         email
${REGISTER_PASSWORD}      password
${TXT_Logged}             //a[text()=' Logged in as ']//i[@class='fa fa-user']
${BTN_DELETE_ACCOUNT}     //i[@class='fa fa-trash-o']
${TXT_ACCOUNT_DELETED}    //b[text()='Account Deleted!']




*** Keywords ***
Verifique '${FRASE}' é visível
    Wait Until Page Contains    text=${FRASE}
    

Digite o nome e endereço de e-mail    
    ${NOMEFAKE}                 FakerLibrary.First Name
    ${EMAILFAKE}                Set Variable          ${NOMEFAKE}@test.com
    
    Input Text                  ${INPUT_NAME}         ${NOMEFAKE}   
    Input Text                  ${INPUT_EMAIL}        ${EMAILFAKE}

Digite endereço de email e senha
    Input Text                  ${INPUT_EMAIL_LOGIN}       teste04@qa.com
    Input Text                  ${INPUT_PASSWORD_LOGIN}    teste

Digite endereço de email e senha incorretos
    ${EMAILFAKE}                FakerLibrary.Email
    ${PASSWORDFAKE}             FakerLibrary.Password        
    
    Input Text                  ${INPUT_EMAIL_LOGIN}        ${EMAILFAKE}
    Input Text                  ${INPUT_PASSWORD_LOGIN}     ${PASSWORDFAKE}   
    
Clique no botão 'Inscrever-se'
    Click Button                locator=${BTN_SIGNUP}

Clique no botão 'Login'
    Click Button                locator=${BTN_LOGIN}

Verifique se '${FRASE}' está visível
    Wait Until Page Contains    text=${FRASE}

Preencha os dados: Título, Nome, Email, Senha, Data de nascimento
    Click Element              locator=${BTN_MR.}
    Should Not Be Empty        item=${REGISTER_NAME}
    Should Not Be Empty        item=${REGISTER_EMAIL}
    Input Text                 locator=${REGISTER_PASSWORD}    text=123456

Verifique se ‘${FRASE}’ está visível
    Wait Until Page Contains    text=${FRASE}
Clique no botão ‘Excluir conta’
    Click Element    locator=${BTN_DELETE_ACCOUNT}

Verifique se '${FRASE}' é visível
    Wait Until Page Contains    text=${FRASE}

Verifique o erro '${FRASE}' é visível
    Wait Until Page Contains    text=${FRASE}
