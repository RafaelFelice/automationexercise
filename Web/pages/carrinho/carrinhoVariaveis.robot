*** Variables ***
${INPUT_EMAIL_CARRINHO}        susbscribe_email
${BTN_INSCREVER_CARRINHO}      subscribe
${BTN_QTD_PRODUTO_1}           (//td[@class='cart_quantity']/button)[1]
${BTN_QTD_PRODUTO_2}           (//td[@class='cart_quantity']/button)[2]
${TXT_PRECO_TOTAL_PRODUTO_1}   (//*[@class='cart_total_price'])[1] 
${TXT_PRECO_TOTAL_PRODUTO_2}   (//*[@class='cart_total_price'])[2]