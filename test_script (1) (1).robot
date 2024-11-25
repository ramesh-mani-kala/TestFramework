*** Settings ***
Library           SeleniumLibrary    

*** Variables ***
${BROWSER}    headlesschrome

*** Test Cases ***
New Tab test
    Wait Until Keyword Succeeds    1 min    5 seconds    Open Browser    https://www.google.com    ${BROWSER}
     Close Browser
