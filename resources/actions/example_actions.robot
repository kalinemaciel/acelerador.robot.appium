***Settings***

Resource            ../_elements/elementos.robot
Resource            ../support/base.robot

***Keywords***

Acessar Pagina de Login
    Wait Until Element Is Visible   ${BTN_LOGIN} 
    Click Element                   ${BTN_LOGIN}
    Wait Until Page Contains        Informe o seu usuário
    
Informar Usuario
    ${DADOS}        Get JSON        sensitive.json
    Wait Until Element Is Visible   ${CAMPO_USUARIO}
    Input Text                      ${INFORMAR_TEXTO}       ${DADOS["valido"]["username"]}

Clicar Em Continuar
    Click Element                   ${BTN_CONTINUE}

Informar Senha 
    ${DADOS}        Get JSON        sensitive.json
    Wait Until Element Is Visible   ${CAMPO_SENHA}
    Input Text                      ${INFORMAR_TEXTO}       ${DADOS["valido"]["password"]}
    Click Element                   ${BTN_CONTINUE}

Visualizar Pagina Inicial
    Wait Until Page Contains        Olá, Usuário.    


####Dados Dinâmicos

Informar Usuário Fake                

    ${USUARIO_FAKE}                 FakerLibrary.Name     

    Wait Until Element Is Visible   ${CAMPO_USUARIO}
    Input Text                      ${INFORMAR_TEXTO}       ${USUARIO_FAKE}       

Informar Senha Fake 

    ${SENHA_FAKE}                   FakerLibrary.Password       length=14    special_chars=True     digits=True     upper_case=True     lower_case=True 

    Wait Until Element Is Visible   ${CAMPO_SENHA}   
    Input Text                      ${INFORMAR_TEXTO}       ${SENHA_FAKE}