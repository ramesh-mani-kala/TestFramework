*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
New Tab test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    chrome://newtab/    ${BROWSER}    options=${options}
    Click Element    //div[@id="tw-sl"]    options=${options}
    Input Text    //input[@id="sl_list-search-box"]    eng    options=${options}
    Click Element    xpath=(//div)[2835]    options=${options}
    Input Text    //textarea[@id="tw-source-text-ta"]    i don't understand    options=${options}
    Click Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Click Element    //div[@class="lv7K9c"]

    Close Browser