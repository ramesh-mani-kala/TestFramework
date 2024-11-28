*** Settings ***
Documentation     A test suite with a single test for Item shared with you: "GCAT- Demo – 2024/10/14 16:23 IST – Recording" - ramesh.m@vvdntech.in - VVDN Technologies Mail
...               Created By ' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Item shared with you: "GCAT- Demo – 2024/10/14 16:23 IST – Recording" - ramesh.m@vvdntech.in - VVDN Technologies Mail test
    Wait Until Keyword Succeeds    1 min    5 seconds    Open Browser    https://mail.google.com/mail/u/0/?ogbl#inbox/FMfcgzQXKNKvpfksxVqKFCtLfdGlPmZC    ${BROWSER}
    Sleep    ${SLEEP}

    Close Browser