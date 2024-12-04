*** Settings ***
Documentation     A test suite with a single test for VVDN_SFIT_JENKINS_BUILD_STATUS - Chat
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}   headlesschrome
${SLEEP}    3

*** Test Cases ***
VVDN_SFIT_JENKINS_BUILD_STATUS - Chat test
    Open Browser    https://mail.google.com/mail/u/0/?tab=rm&ogbl#chat/space/AAAAEdczv58    ${BROWSER}

    Close Browser