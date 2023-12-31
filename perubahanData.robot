*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_demoQa}    https://demoqa.com/login
${web}    chrome

*** Test Cases ***
Test Login
    Open Browser    ${url_demoQa}    ${web}
    Maximize Browser Window
    Sleep    2s
    Input Text    //*[@id="userName"]    aji@getnada.com
    Input Password    //*[@id="password"]    Abcd1234!
    Sleep    2s
    Click Button    //*[@id="login"]
    Sleep    2s
    Click Element    id:delete-record-undefined
    Sleep    2s
    Click Element    //*[@id="closeSmallModal-ok"]
    Sleep    2s
    Handle Alert    ACCEPT
    Sleep    3s