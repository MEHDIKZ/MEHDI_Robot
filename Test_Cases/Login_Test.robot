*** Settings ***
Resource    ../Ressources/Login_Keyword.robot
Test Setup    Ouvrir le Navigateur    ${URL}    ${Browser}   
Test Teardown    Fermer le Navigateur
Suite Setup    Log To Console    J execute avant tout les Tests
Suite Teardown    Log To Console    J execute apres tout les Tests 


*** Variables ***
${URL}=    https://admin-demo.nopcommerce.com/
${Browser}=    chrome
${User_Name}=    admin@yourstore.com
${Password}=    admin

*** Test Cases ***
Login test01
    When Saisir le Nom d utilisateur    ${User_Name}
    And Saisir le mot de Pass    ${Password} 
    And Cliquer sur Bouton Login
    Then Valider que le mot Dashboard s affiche

Login test02
    When Saisir le Nom d utilisateur    ${User_Name}
    And Saisir le mot de Pass    ${Password} 
    And Cliquer sur Bouton Login
    Then Valider que le mot Dashboard s affiche
    




