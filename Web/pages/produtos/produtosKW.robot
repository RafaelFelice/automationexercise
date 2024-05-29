*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary
Resource           ../home/homeVariaveis.robot

*** Keywords ***
Product
    ${QUANTIDADE}                           FakerLibrary.Random Number

    Set Global Variable                     ${QUANTIDADE}