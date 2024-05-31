*** Variables ***
${BTN_VER_PRODUTOS}        //*[text()='View Product']
${LISTA_MARCAS}            //div[@class='brands_products']
${NOME_PRODUTO_1}          (//*[@class='product-image-wrapper']//p)[1]
${INPUT_BUSCA_PRODUTOS}    search_product
${BTN_LUPA_PESQUISAR}      submit_search
${BTN_ADD_TO_CART_1}       (//div[@class='overlay-content']/a/i)[1]
${BTN_CONTINUE_SHOPPING}   //*[text()='Continue Shopping']  
${IMG_PRODUTO_1}           (//*[@class='product-image-wrapper'])[1]
${IMG_PRODUTO_2}           (//*[@class='product-image-wrapper'])[2]
${BTN_ADD_TO_CART_2}       (//a[@data-product-id='2' and text()='Add to cart'])[2]
${BTN_VER_CARRINHO}        //*[text()='View Cart']   
${NOME_PRODUTO_2}          (//*[@class='product-image-wrapper']//p)[3]
${TXT_PRECO_PROD_1}        (//div[@class='productinfo text-center']/h2)[1]
${TXT_PRECO_PROD_2}        (//div[@class='productinfo text-center']/h2)[2]
${produto1}                Blue Top
${produto2}                Men Tshirt
${preco1}                  500
${preco2}                  400
${quantidade1}             1   
${quantidade2}             1   
${precoTotal1}             500   
${precoTotal2}             400
${resultado1}              500
${resultado2}              400   