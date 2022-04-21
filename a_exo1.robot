*** Settings ***
Library


*** Variables ***
${nom}    abcde


*** Test Cases ***
Demo
    #BuiltIn.Log    Hello World    
    #BuiltIn.Log To Console    Hello World
    BuiltIn.Log   <b>Hello</b>, World!    level=WARN    html=True    console=True
    

Exo3
    KW1    Alexandre
    

*** Keywords ***
KW1
    [Arguments]    ${prenom}=Alex    ${nom}=aa
    BuiltIn.Log    Bonjour ${prenom}  

