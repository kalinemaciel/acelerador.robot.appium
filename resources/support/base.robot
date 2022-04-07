***Settings***
Documentation       Arquivo base para configuração de ambiente

Library             AppiumLibrary

Resource            ./factory.robot
Resource            ../_elements/elementos.robot
Resource            ../actions/example_actions.robot

***Keywords***
Open Session
    Set Appium Timeout      5
    Open Application        http://localhost:4723/wd/hub 
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=nome do emulador
    ...                     app=${EXECDIR}/app/exampleAplicativo.apk 

Close Session
    Close Application