***Settings***

Documentation       Cenários de login

Resource            ../resources/support/base.robot

Test Setup          Open Session
Test Teardown       Close Session

***Test Cases***

Deve realizar login com sucesso
    Acessar Pagina de Login
    Informar Usuario
    Clicar Em Continuar
    Informar Senha 
    Visualizar Pagina Inicial
    