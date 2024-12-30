*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
window.output["strings"] = window.output["strings"].concat(["*","*Furious","*/app/Furious","*.","*/app/Furious/Furious","*Dummy","*/app/Furious/Furious/dummy.robot","*Furious/dummy.robot","*Login with Valid Credentials","*Regression","*Smoke","eNptkk1PwzAMhu/9FZYmDSYB69psacsJMY5ISEziiNzE/dC6BCUZjH9Pqg1a0VxyiB/br1/7jcqtaT/JPJ0EfbhWqwKeyVqsqYCj2iv9pYCM0aaAx8boA0GFbUcSnAbr0LgC6NQ6/4Gl0uaAXfd9FwFc/0ve0udO684+COfbvWjjoPJ1QGqy6sr1Raxb9Im7huDDaOFVnDv42pXvDOLcv9MCe6GwPFqzLFu1rLWuO7q9xFsLSntK1WTAHJVqVX0DVl/0n8ftKbT2ePBBcA263+katCAM2obk3SJ6dSj2zqCgIprFEJ/WnDPKiCGjFOadu7+MOa/dfTRb/RElzwXfTIlkIDCRPJsS6UDkVZzkU4INhJRCiCmxHhOMV1NiMyKYDM3CR0q9VDklshFRpoymRD44FmNKLODYyNSYUskDyOAqrbIyiQNIMqriTQutZvBVSrlCDCCDsZSmmzKwnNV6jGQsJHczOpM0YSEtvbc8R2Ki8i/y852/u8YQyugHwywjEQ==","*    Open Browser","*SeleniumLibrary","*<p>Opens a new browser instance to the optional <code>url\x3c/code>.\x3c/p>","*${URL}    ${BROWSER}    options=${options}","*Opening browser 'Chrome' to base url '<a href=\"https://example.com\">https://example.com\x3c/a>'.","*s1-s1-s1-t1-k1","eNpVjzsOwjAQBa/ySkAoH34BUdFRUnCBJF7ISo6N1guI27MoApHC3ezM87kjtJ3EnpzwgwT2EseASVmusiJbV8t1tiumcKTUKjlwwOlwPqJW5PckuY9t7fOGQz7y9HztFCEqGivE/lYrN57wZO2gVv0Jh7O/8LK08KaqttmiWE33aO8iFNS/5uOpYxCcIGSlnoIz7SXKV/0BZ3OkCNYPVrsHJ0M02gpvO4ZBg/X3v+DMp/J6A2Y1YNc=","*Cannot capture screenshot because no browser is open.","*Input Text","*<p>Types the given <code>text\x3c/code> into the text field identified by <code>locator\x3c/code>.\x3c/p>","*id:username    ${USERNAME}","*id:password    ${PASSWORD}","*Click Button","*<p>Clicks the button identified by <code>locator\x3c/code>.\x3c/p>","*id:login","*Wait Until Element Is Visible","*<p>Waits until the element <code>locator\x3c/code> is visible.\x3c/p>","*id:dashboard    timeout=10","*Page Should Contain Element","*<p>Verifies that element <code>locator\x3c/code> is found on the current page.\x3c/p>","*id:logout","*Close Browser","*<p>Closes the current browser.\x3c/p>","*Login with Invalid Credentials","eNpt0ltLwzAUB/D3fooDg6mgrpf0Yn0S9VEQFHyU0+T0wrpEkkzntzdlGw02r+0v5/JPPqh50sM36ecDpy87KFnDCxmDHdWwl1upfiSQ1krX8NhrtSNocRhJgFVgLGpbAx0G6z5gI5Xe4Tj+3kYAl/8OP9H3u1KjeeDWtXtV2kLr6oBQZOSFnYoYezUdfO8JvrTibopjB1e7dZ2BH/uPiuM0KGz2Rm+aQW46pbqRbk7/BwNSOSU70qD3Ug6yuwajTvMf150UGrPfuZ9ge7Tn7Xo0wDWansTtVfRmkW+tRk51tIohPuStYEUR55xRBuvR3p/WXHf2PlolZ5GLquFlsRTpLBomymopMk8kcXq3FGwW1HLOlyL3BSvbpSg8UYjQLqU3B0+FWIrKEyJjtBR3c2IJz4gFEvNCTeNMlAGSeASbNA6Q1CMutNDVzLm21CaIAcLmKiwvmsDlJLlPKhYat/CeSZ6y0CxTtmWMokzytCIsj+/80/aaUER/S/MjuQ==","*s1-s1-s1-t2-k1","*id:username    invaliduser","*id:password    wrongpassword","*Page Should Contain","*<p>Verifies that current page contains <code>text\x3c/code>.\x3c/p>","*Invalid username or password","*Add Item to Cart","*E-commerce","eNptkk1LxDAQhu/9FQPCqqBum35krSdRj4Kg4FEmyfQDu4kkWV3/vSm72mJzbZ7M+86TvpK4t/0n2Ye9pA/fG13DIzmHLdWw0+/afGkga42t4a6zZkvQYD+QAm/AebS+Btr3PnxAoY3d4jB8XyUAZ/8u39PnizGDu5U+xD0Z66EJc0AZcvrUj0OcPx8vvnQEH9bI0OKQEGY3IRnkIX8wEseisN45uxa9XrfGtANdHs97B9oESrdkwe607nV7Ac4c+x/WHSl0brcNh+A79L/bdehAWnQdqavz5NmjfPcWJdXJSQrpvkrVpsyIs4JyWA3+5rjmqvU3yUn2RwjMJK+WBJsIiYpvlkQ+I3jKrpdE8UfItJRSLolyThS8WRLVlNJIFduFT4RiTKklsZkReV7QkriejOUspyJibCY1r3LFI8hklYpUsDSCsNmUIC32NJNXSssMMYJMYqkUlYg8TlbOkU0RqzuppUqwItZldMuZqBiFuoT88J+/+c4SquQH4a4gvg==","*s1-s1-s1-t3-k1","*Click Element","*<p>Click the element identified by <code>locator\x3c/code>.\x3c/p>","*css:.add-to-cart","*css:.cart-items-count","*Element Text Should Be","*<p>Verifies that element <code>locator\x3c/code> contains exact the text <code>expected\x3c/code>.\x3c/p>","*css:.cart-items-count    1","*Check API Response for Valid Data","*API","*No keyword with name 'Create Session' found.","*Create Session","*MyAPI    ${API_URL}","*Get Request","*MyAPI    /endpoint?query=valid","*${response}","*Status Should Be","*200","*Should Contain","*BuiltIn","*<p>Fails if <code>container\x3c/code> does not contain <code>item\x3c/code> one or more times.\x3c/p>","*${response.json()}    \"success\"","*Check API Response for Invalid Data","*MyAPI    /endpoint?query=invalid","*404","*${response.json()}    \"error\"","*Verify Dropdown Functionality","*UI","eNpt0k1v3CAQBuC7f8VIkdJEarPYZs2uc6qaHCtVaqQcqwHGH4oXImDTzb8P1m5qVHOFB+adgWeSD258I/d4UvQaRmta+EneY08tHM2LsX8NkHPWtfBjcPZA0OE4kYZgwQd0oQU6jSEuoDTWHXCa3u8KgJv/Dj/Q25O1k/+uQiz3y7oAXbwHtCVvvoT5Eh9u54NPA8GrsyqmOFeId3exMqhz/ckqnIPC5ujdRo5m01vbT/Ttsj96MDYq05MDdzRmNP1X8PaS/9zurND74yFuQhgwfHY3oAfl0A+k726L3wHVS3CoqC2uGLBTwxoudqWQnGq4nsL9pc3rPtwXV+WnEISoRLMW1SJ0rcVuLepEMFbt14L/Ex0jpdRabFPBRbcWTSK2OteLSHLISuu12CVC1ZzWYr9MrJY18czEkqHWXZxIhpQL4XtZsQypEhKHlnuaeiGMSsQM4QtpeCMzj1NuU7LjubhN8k14xXNZ5tkKijHYVipCcf7nf8LgCHXxAS8sHPw=","*s1-s1-s1-t6-k1","*Select From List By Value","*<p>Selects options from selection list <code>locator\x3c/code> by <code>values\x3c/code>.\x3c/p>","*id:dropdown    option1","*id:dropdown-selected    Option 1 Selected","*File Upload Test","eNpt0ltLwzAUB/D3fooDghdQ1yVZs9UnUR8FQcFHOU1OL9glkmQ6v70pm7bYvLa/nMs/eaXq3nWf5B72ij5CZ00Jj+Q9NlTCzrwb+2WAnLOuhLvW2S1BjV1PGoIFH9CFEmjfhfgBK2PdFvv++zoDOP93+J4+X6zt/a0Ksd2TdQHqWAe0JW/OwlDEh4vh4EtL8OGsilMcOsTadewM6tC/twqHQWGx825RdWbRWNv0dHX833kwNirTkAO3M6YzzSV4e5z/sO6g0PvdNv6E0GL43a5FD8qhb0lfX2TPAdV7cKiozE5yyPdFntOmEISCOJz24ea45mkTbrKT5Z9gy42SxVywUQim5Xou+Ch4nbPNXIhRSK2UmovVVAhZz0UxEUKndpGTSZFpPRfriai4oLnYjIkhchKJxCahInEtE2RMVVTriuUJwiZVYmipqxlzFVIvERNkDFZoXlSJy1mupmQtUuMWk2fCmUjNMmQrmVSKi5oRysM7fwutI9TZDyKeHwg=","*s1-s1-s1-t7-k1","*Choose File","*<p>Inputs the <code>file_path\x3c/code> into the file input field <code>locator\x3c/code>.\x3c/p>","*id:file-upload    /path/to/file.txt","*id:upload","*id:upload-success","*Check Page Load Time","*Performance","eNpt0stq3DAUBuC9n+JAIE2gzWgs2bKdVUiyLBQa6LIcS8cX4pGCpEkmb1+Zmdam1tb6dC6//IvaJze+k3s+KXoLozUNfCfvsacGjubV2A8D5Jx1DTwOzh4IOhwn0hAs+IAuNECnMcQP2BrrDjhNn3cZwM1/l5/o/cXayT+oENv9sC5AF+uAtuTNlzAX8eF2vvgyELw5q+IU5w6xdhc7gzr3n6zCeVDYHb3btaPZ9db2E327nI8ejI3K9OTAHY0ZTf8VvL3Mf153Vuj98RAPIQwY/m43oAfl0A+k726znwHVa3CoqMmuGLBT0Va6YlyUgjhcT+H+suZ1H+6zq/0/wWShZLkV+SJq0rLaCr4SLcvrrRCL0LVSaiuKtRCy24pyJZhO7SIXgWWu9VZUKyG5oK2ol8RYyUkkEluFypBrmSBLqnwv2pwlSL6qEkNLPc2Sa67rPWKCLMHyvCvbxOPsizWpRGrcJVrOu1ykZpmzlaIWnaqKklCe//PfYXCEOvsDQJAhKQ==","*s1-s1-s1-t8-k1","*Get Time","*<p>Returns the given time in the requested format.\x3c/p>","*${time}","*id:main-content","*Evaluate","*<p>Evaluates the given expression in Python and returns the result.\x3c/p>","*Get Time() - ${time}","*${load_time}","*Should Be True","*<p>Fails if the given condition is not true.\x3c/p>","*${load_time} &lt; 5","*Verify Password Reset","eNpt0stKxDAUBuB9n+KA4AV0ppe06XRWoi4FQcGlnCanF+wkkmR0fHtTZrTFZtt+OZc/eaX63vSfZB4Ogj5cr1UFj2QttlTBXr0r/aWAjNGmgrvO6B1Bg/1AEpwG69C4CujQO/8Ba6XNDofhexUBXP47fE+fL1oP9lY43+5JGweNrwNSk1UXbixi3dV48KUj+DBa+CmOHXztxncGcew/aIHjoLDeW7Oue7VutW4Hujn97y0o7ZVqyYDZK9Wr9hqsPs1/XHdUaO1+53+C69D9btehBWHQdiRXV9GzQ/HuDAqqorMY4kPOk4YVXHBGGZwPbnta87x12+gs+ROsKQQvliL9E3nSSF4uRTYTIk43S8EmkaMQYinyuWC8WYpiJhIZ2oVPIuWplEtRzkSZMVqKzZRYyTNigcRmoZZ1JnmATKnyTV6ncYCksyo+tNDVTLnyHBPEAJmC5XVc1IHLSfI5KVlo3GL2TOKUhWYZs+XjA6kFESE/vvM31xlCGf0AoiketA==","*s1-s1-s1-t9-k1","*link:Forgot Password","*id:email    test@example.com","*id:reset","*Password reset link sent","*Test Cross-Window Navigation","eNptkktP7DAMhff9FZaQeEjAtE2macsKAcsrIYHEErmJ+xCdBCUZGP79TTVzbyuabfLZPufYb9Q82uGL7NNB0qcfjK7hDzmHHdWw1x/afGsga42t4aG3ZkfQ4jCSAm/AebS+BjoMPjxgo43d4Tj+3CYAl7+KH+nr1ZjR3Usfxj0b66ENfUAZcvrCT02cv5oKX3uCT2tkUHGcEHq3YTLI4/zRSJyEwmbv7KYZ9KYzphvp5vQ/ONAmULojC3av9aC7a3DmpP9od6LQuf0ufILv0f9z16MDadH1pG6vkheP8sNblFQnZymkhyLbqqpAjpwYnI/+7mTzvPN3yVn2nxCikqJYE/lMYK5EuSbYTFRtmldrgs+EUlLKNbFdEly0a6JYEFzFvIiF0iBVrYlyQTSM05qo5sRSZMQjiS1CTYkpEUHmVDErmzyNIPmiSwgttpo510qpDDGCzMEiY0UTWU62XSIlj8ktFmfCch7TMmUr5LYsmUQiFMc7f/e9JVTJX7i2IOc=","*s1-s1-s1-t10-k1","*Click Link","*<p>Clicks a link identified by <code>locator\x3c/code>.\x3c/p>","*link:Open New Tab","*Switch Window","*<p>Switches to browser window matching <code>locator\x3c/code>.\x3c/p>","*New Tab","*Welcome to New Tab","*Rebel","*/app/Furious/Furious/rebel.robot","*Furious/rebel.robot","*Tc_001","*<p>List Operation\x3c/p>","*list","*Variable '${listData}' not found.","*Append To List","*Collections","*<p>Adds <code>values\x3c/code> to the end of <code>list\x3c/code>.\x3c/p>","*${listData}    Amit","*Log To Console","*<p>Logs the given message to the console.\x3c/p>","*${listData}","*Tc_002","*<p>Perform Task on Dictionary\x3c/p>","*Dictionary","*Variable '${dicData}' not found.","*Set To Dictionary","*<p>Adds the given <code>key_value_pairs\x3c/code> and/or <code>items\x3c/code> to the <code>dictionary\x3c/code>.\x3c/p>","*${dicData}    Name=Amit    Designation=Devloper","*Tc_003","*<p>Remove from Dictionary\x3c/p>","*Remove From Dictionary","*<p>Removes the given <code>keys\x3c/code> from the <code>dictionary\x3c/code>.\x3c/p>","*${dicData}    Name","*Tc_004","*<p>Remove from List\x3c/p>","*Remove From List","*<p>Removes and returns the value specified with an <code>index\x3c/code> from <code>list\x3c/code>.\x3c/p>","*${listData}    4","*Combine Lists","*<p>Combines the given <code>lists\x3c/code> together and returns the result.\x3c/p>","*${listData}    ${listData}","*${newvar}","*Tc_005","*<p>Dialogs Operation\x3c/p>","*Dialogs","*TclError: no display name and no $DISPLAY environment variable","*Get Selection From User","*<p>Pauses execution and asks user to select a value.\x3c/p>","*Select user    Admit    User1    User2","*${user}","*Pause Execution","*<p>Pauses execution until user clicks <code>Ok\x3c/code> button.\x3c/p>","*Get Value From User","*<p>Pauses execution and asks user to input a value.\x3c/p>","*Input your email","*${detail}","*Enter you password    hidden=yes","*${password}","eNptjjFuwzAMRXefgpvTIdaQKd46JEiB1g0KLx1li0mESqRCSYN7+sotEMCoJ4IPn4//IMICluBiHUKtdAjqmMVyjo9psvdTIzxwqoEJnCWEXQsvPrAkS9dCBtEyQf2B94wxxdc/UMNFF69p4Y1NdthxOnImc5i/ttAx+F8OpD2a/+dVL3rEQY9fsPEcEwiOSAlG7Rw4HdNTW0HREFbnz/703p2f+9OMVI6iHJecGiw9gB1UmNKNabdvvm1Y4c1+Fc7b1kzkWJulfhkzNqZtKH31FeOKaRn4AWJag6Q="]);
Input Text    name=q   window.output["strings"].concat(["*","*Furious","*/app/Furious","*.","*/app/Furious/Furious","*Dummy","*/app/Furious/Furious/dummy.robot","*Furious/dummy.robot","*Login    Wait Until Element Is Visible    xpath=window.output["strings"].concat(["*","*Furious","*/app/Furious","*.","*/app/Furious/Furious","*Dummy","*/app/Furious/Furious/dummy.robot","*Furious/dummy.robot","*Login    timeout=5
    Click Element    xpath=window.output["strings"].concat(["*","*Furious","*/app/Furious","*.","*/app/Furious/Furious","*Dummy","*/app/Furious/Furious/dummy.robot","*Furious/dummy.robot","*Login
