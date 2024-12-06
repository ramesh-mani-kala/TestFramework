*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.google.com/

*** Test Cases ***
Open Browser in Headless Mode
    ${chrome_options}=    Evaluate    sys.modules["selenium.webdriver"].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --no-sandbox

    Wait Until Keyword Succeeds    1 min    5 seconds    Open Browser    ${URL}    ${BROWSER}    options=${chrome_options}

    [Teardown]    Close Browser

