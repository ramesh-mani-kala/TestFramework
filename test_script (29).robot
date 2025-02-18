*** Settings ***
Documentation     A test suite with a single test for New Tab
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
New Tab test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    about:blank    ${BROWSER}    options=${options}
    Sleep    ${SLEEP}    # Adding sleep to wait for the page to load
    Wait Until Element Is Enabled    xpath=//div[@title="User"]    timeout=10
    Click Element    xpath=//div[@title="User"]
    Wait Until Element Is Visible    xpath=//h3[@class="LC20lb"]    timeout=5
    Click Element    xpath=//h3[@class="LC20lb"]
    Close Browser
