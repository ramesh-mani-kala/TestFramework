*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created By ' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${REMOTE_URL}    http://localhost:4444/wd/hub    # Replace with your Selenium server URL if remote
${HEADLESS_OPTIONS}    add_argument:--headless    add_argument:--no-sandbox    add_argument:--disable-dev-shm-usage    add_argument:--disable-gpu    add_argument:--window-size=1920,1080
${SLEEP}    3
${APjFqb_textarea}    youtube

*** Test Cases ***
New Tab test
    # Use headless Chrome with desired options
    Open Browser    chrome://newtab/    ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=${HEADLESS_OPTIONS}
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