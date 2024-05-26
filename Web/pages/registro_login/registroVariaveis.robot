*** Variables ***
${INPUT_NAME}             //input[@name='name']
${INPUT_EMAIL}            //form[@action='/signup']/input[@name='email']  
${BTN_SIGNUP}             //button[text()='Signup']
${RADIO_MR.}              id_gender1
${REGISTER_NAME}          name
${REGISTER_EMAIL}         email
${REGISTER_PASSWORD}      password
${CHECKBOX_NEWSLETTER}    newsletter
${CHECKBOX_OFFERS}        optin  
${INPUT_FIRSTNAME}        //input[@id='first_name']
${INPUT_LASTNAME}         //input[@id='last_name']   
${INPUT_COMPANY}          //input[@id='company']  
${INPUT_ADDRESS}          //input[@id='address1']
${INPUT_ADDRESS2}         //input[@id='address2']
${SELECT_COUTRY}          //select[@id='country']  
${INPUT_STATE}            //input[@id='state']
${INPUT_CITY}             //input[@id='city']
${INPUT_ZIPCODE}          //input[@id='zipcode']
${MOBILE_NUMBER}          //input[@id='mobile_number']  
${BTN_CREATE_ACCOUNT}     //button[text()='Create Account']  
${BTN_CONTINUE}           //*[text()='Continue']
${BTN_LOGIN}              //button[text()='Login']
${INPUT_EMAIL_LOGIN}      //form[@action='/login']//input[@name='email']
${INPUT_PASSWORD_LOGIN}    //form[@action='/login']//input[@name='password']
${BTN_DELETE_ACCOUNT}     //i[@class='fa fa-trash-o']
${BTN_LOGOUT}             //*[text()=' Logout']
${BTN_FECHAR_POPUP}       ismiss-button
${nome_cadastrado}        Nome Cadastrado
${email_cadastro}         email@teste.com
${email_incorreto}        email-incorreto@teste.com
${password_incorreto}     password-incorreto