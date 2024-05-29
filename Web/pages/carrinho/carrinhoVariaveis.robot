*** Settings ***
Resource           ../../../base.robot
Resource              ../../pages/produtos/produtosKW.robot

*** Variables ***
${INPUT_EMAIL_CARRINHO}        susbscribe_email
${BTN_INSCREVER_CARRINHO}      subscribe
${QUANTIDADE_CARRINHO}         //button[contains(@class, 'disabled') and text()='${QUANTIDADE}']
${BTN_EXCLUIR}                 //a[@class='cart_quantity_delete']