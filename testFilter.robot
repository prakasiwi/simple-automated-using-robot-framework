*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${web}    chrome
${url}    https://www.globalsqa.com/angularJs-protractor/SearchFilter/

*** Test Cases ***
Testing Filter
    Open Browser    ${url}    ${web}
    Maximize Browser Window
    Sleep    2s
    Input Text    //*[@id="input1"]    InternetBill
    Sleep    2s
    Clear Element Text    //*[@id="input1"]
    Sleep    2s
    Select From List By Value    //*[@id="input3"]    INCOME
    Sleep    2s
    
    
    
    
    