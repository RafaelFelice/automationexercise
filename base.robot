*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary
Resource           Web/pages/registro_login/registroVariaveis.robot
*** Variable ***
${IMAGE_AUTOMATIONEXERCISE}                      //div[@class='logo pull-left']
${URL_DEV}                                       https://automationexercise.com/
${NAMEFAKE}                 FakerLibrary.First Name

*** Keywords ***
Inicie o navegador
    Open Browser                            browser=chrome
    Maximize Browser Window
    Go To                                   ${URL_DEV}
    Wait Until Element Is Visible           ${IMAGE_AUTOMATIONEXERCISE}
Fechar o navegador
    Close Browser

Digite o nome e endereço de e-mail    
    ${NAMEFAKE}                 FakerLibrary.First Name
    ${LASTNAMEFAKER}            FakerLibrary.Last Name
    ${EMAILFAKE}                Set Variable          ${NAMEFAKE}@test.com
    ${COMPANYFAKER}             FakerLibrary.Company
    ${ADDRESS1FAKER}            FakerLibrary.Address
    ${ADDRESS2FAKER}            FakerLibrary.Address
    ${ZIPCODEFAKER}             FakerLibrary.Zipcode
    ${MOBILENUMBERFAKER}        FakerLibrary.Phone Number

    Input Text                  locator=${INPUT_NAME}         text=${NAMEFAKE}
    Input Text                  locator=${INPUT_EMAIL}        text=${EMAILFAKE}

    Set Global Variable                      ${NAMEFAKE} 
    Set Global Variable                      ${LASTNAMEFAKER}
    Set Global Variable                      ${EMAILFAKE}
    Set Global Variable                      ${COMPANYFAKER}
    Set Global Variable                      ${ADDRESS1FAKER}
    Set Global Variable                      ${ADDRESS2FAKER}
    Set Global Variable                      ${ZIPCODEFAKER}
    Set Global Variable                      ${MOBILENUMBERFAKER}

