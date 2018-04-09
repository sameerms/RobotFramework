*** Settings ***
Documentation   Demo testcase for robotframework
Library         Selenium2Library
Library         BuiltIn

*** Variables ***
${URL}      https://www.sogeti.no/
${timeout}  3s

*** Test Cases ***
TestCase1
    [Tags]    DEBUG
    [Setup]
        Åpne Sogeti sin nettside i chrome
        Sleep   ${timeout}
        Finn og navigere til Menyvalget, "Hvorfor oss?"
        Sleep   ${timeout}
        Finn og navigere til Menyvalget, "Globale kunder"
        Sleep   ${timeout}
    [Teardown]  Close Browser

*** Keywords ***
Åpne Sogeti sin nettside i chrome
   Open Browser     url=${URL}  browser=chrome
   Log to console   Navigerte til Sogeti Norge sin nettside
Finn og navigere til Menyvalget, "Hvorfor oss?"
   Click Element    css:#header > nav > ul > li:nth-child(2) > div > span
   Log to console   Fant hvorfor oss menyen
Finn og navigere til Menyvalget, "Globale kunder"
   Click Link    xpath=//a[@href="https://www.sogeti.no/hvorfor-oss/globale-kunder/"]
   Log to console   Navigerte til globale kunder