*** Settings ***
Library           OperatingSystem
Library           String

*** Variables ***
${VALID_FILE_PATH}  /path/to/valid/file.txt
${INVALID_FILE_PATH}  /path/to/invalid/file.txt

*** Test Cases ***

# Test Case 1: This should pass, file exists
Test Case 1 - Pass
    [Tags]    high
    File Should Exist    ${VALID_FILE_PATH}

# Test Case 2: This should fail, file does not exist
Test Case 2 - Fail
    [Tags]    high
    File Should Exist    ${INVALID_FILE_PATH}

# Test Case 3: String length should match
Test Case 3 - Pass
    [Tags]    high, validation
    ${result}=    Get Length    Hello World
    Should Be Equal As Numbers    ${result}    11

# Test Case 4: String length mismatch (this will fail)
Test Case 4 - Fail
    [Tags]    high, validation
    ${result}=    Get Length    Hello World
    Should Be Equal As Numbers    ${result}    10

# Test Case 5: This should pass (directory exists)
Test Case 5 - Pass
    [Tags]    high
    Directory Should Exist    /home/user

# Test Case 6: This should fail (directory doesn't exist)
Test Case 6 - Fail
    [Tags]    high
    Directory Should Exist    /nonexistent/directory

# Test Case 7: File reading successful (should pass)
Test Case 7 - Pass
    [Tags]    high, file_operations
    ${file_content}=    Get File    ${VALID_FILE_PATH}
    Should Not Be Empty    ${file_content}

# Test Case 8: File reading unsuccessful (should fail)
Test Case 8 - Fail
    [Tags]    high, file_operations
    ${file_content}=    Get File    ${INVALID_FILE_PATH}
    Should Not Be Empty    ${file_content}

