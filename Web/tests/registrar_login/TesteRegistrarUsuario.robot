*** Settings ***
Documentation         Essa suíte realiza testes de registro de usuário
Resource              ../../pages/registro_login/homeKW.robot
Resource              ../../../base.robot
Task Setup            Inicie o navegador
Test Teardown         Fechar o navegador


*** Test Cases ***
[T0003] Registrar usuário
    Clique no botão 'Inscreva-se / Login'
    # Verifique 'Inscrição de novo usuário!' é visível
    # Digite o nome e endereço de e-mail
    # Clique no botão 'Inscrever-se'
    # Verifique se 'INSERIR INFORMAÇÕES DA CONTA' está visível
    # Preencha os dados: Título, Nome, Email, Senha, Data de nascimento
    # Marque a caixa de seleção 'Inscreva-se em nosso boletim informativo!'
    # Marque a caixa de seleção 'Receber ofertas especiais de nossos parceiros!'
    # Preencha os dados: Nome, Sobrenome, Empresa, Endereço, Endereço2, País, Estado, Cidade, CEP, Número de celular
    # Clique no botão 'Criar conta'
    # Verifique se 'CONTA CRIADA!' é visível
    # Clique no botão ‘Continuar’
    # Verifique se ‘Logado como nome de usuário’ está visível
    # Clique no botão ‘Excluir conta’
    # Verifique se 'CONTA EXCLUÍDA!' está visível e clique no botão 'Continuar'