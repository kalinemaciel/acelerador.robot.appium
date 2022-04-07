***Settings***
Documentation       Criação de dados dinâmicos e acessar dados estáticos

Library             OperatingSystem
Library             FakerLibrary  

***Keywords***

Get JSON
    [Arguments]    ${file_name}

    ${file}         Get File    ${EXECDIR}/resources/fixtures/${file_name}
    ${super_var}    Evaluate    json.loads($file)       json

    [return]        ${super_var}