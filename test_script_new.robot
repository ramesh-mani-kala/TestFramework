*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    headlesschrome
${URL}        https://www.google.com

*** Test Cases ***
New Tab test
    [Documentation]    Open a new tab and perform a search on Google
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Wait Until Page Contains Element    name=q    timeout=10
    Input Text    name=q    test
    Press Keys    name=q    ENTER
    Wait Until Page Contains Element    //h3[contains(text(), 'test')]    timeout=10
    Close Browser