*** Settings ***
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}        headlesschrome
${SLEEP}          3
${OPTIONS}        --headless --disable-gpu --no-sandbox --remote-debugging-port=9222

*** Test Cases ***
New Tab test
    Open Browser    https://www.google.com    ${BROWSER}    options=${OPTIONS}
    Sleep    ${SLEEP}
    Wait Until Keyword Succeeds    1 min    5 seconds    Wait Until Page Contains Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Wait Until Keyword Succeeds    1 min    5 seconds    Click Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Sleep    ${SLEEP}
    Close Browser
