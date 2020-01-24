*** Settings ***
Resource     base.robot

*** Keywords ***
Dado que "${email}" e o meu email
    Set Global Variable     ${email}

Quando eu entro com este email
    Input text                      id:email        ${email}
    Click Element                   css:button[type=submit]

Entao devo ver a area logada
    Sleep                           5
    Page Should Contain Element     class:dashboard

Entao devo ver o alerta "${expect_alert}"
    Element Text Should Be      class:alert     ${expect_alert}