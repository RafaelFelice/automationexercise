*** Settings ***
Library            SeleniumLibrary
*** Variable ***
${IMAGE_AUTOMATIONEXERCISE}                      //div[@class='logo pull-left']
${URL_DEV}                                       https://automationexercise.com/

*** Keywords ***
Inicie o navegador
    Open Browser                            browser=chrome
    Maximize Browser Window
    Go To                                   ${URL_DEV}
    Wait Until Element Is Visible           ${IMAGE_AUTOMATIONEXERCISE}
Fechar o navegador
    Close Browser