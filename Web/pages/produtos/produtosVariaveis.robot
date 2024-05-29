*** Variables ***
${BTN_VER_PRODUTOS}        //*[text()='View Product']
${LISTA_MARCAS}            //div[@class='brands_products']
${NOME_PRODUTO}            (//*[@class='product-image-wrapper']//p)[1]
${INPUT_BUSCA_PRODUTOS}    search_product
${BTN_LUPA_PESQUISAR}      submit_search  
${INPUT_QUANTIDADE}        quantity
${BTN_ADD_CARRINHO}        //button[@class='btn btn-default cart']
${MODAL}                   //div[@class='modal-content']
${LINK_VER_CARRINHO}       //p[@class='text-center']/a[@href='/view_cart']