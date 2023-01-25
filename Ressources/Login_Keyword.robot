*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_Object/Locators.py



*** Keywords ***
Ouvrir le Navigateur
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser     ${URL}    ${BROWSER}
    Maximize Browser Window

Saisir le Nom d utilisateur
    [Arguments]    ${user}
    Input Text    ${txt_LoginuserName}    ${user}

Saisir le mot de Pass
    [Arguments]    ${Pass}
    Input Text    ${txt_LoginPass}    ${Pass}
Cliquer sur Bouton Login
    Click Button   ${Btn_LoginBtn} 

Valider que le mot Dashboard s affiche
    Page Should Contain    Dashboard

Fermer le Navigateur
    Sleep    3
    Close Browser    