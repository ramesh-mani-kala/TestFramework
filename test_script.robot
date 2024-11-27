*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created By ' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    headlesschrome
${SLEEP}    3
${APjFqb_textarea}    youtube

*** Test Cases ***
New Tab test
    Wait Until Keyword Succeeds    1 min    5 seconds    Open Browser    chrome://newtab/    ${BROWSER}
    Sleep    ${SLEEP}
    Wait Until Keyword Succeeds    1 min    5 seconds    Wait Until Page Contains Element    //textarea[@id="APjFqb"]
    Wait Until Keyword Succeeds    1 min    5 seconds    Input Text    //textarea[@id="APjFqb"]    ${APjFqb_textarea}
    Sleep    ${SLEEP}
    Wait Until Keyword Succeeds    1 min    5 seconds    Wait Until Page Contains Element    //div[@class="pcTkSc"]
    Wait Until Keyword Succeeds    1 min    5 seconds    Click Element    //div[@class="pcTkSc"]
    Sleep    ${SLEEP}
    Wait Until Keyword Succeeds    1 min    5 seconds    Wait Until Page Contains Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Wait Until Keyword Succeeds    1 min    5 seconds    Click Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Sleep    ${SLEEP}

    Close Browser