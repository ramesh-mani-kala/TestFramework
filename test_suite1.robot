*** Settings ***
Library  SeleniumLibrary  timeout=10
*** Variables ***
${BROWSER}  headlesschrome
*** Test Cases ***
New Tab test  
  Open Browser  https://www.google.com  ${BROWSER}  
  Close Browser