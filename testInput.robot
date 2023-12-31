*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${web}    chrome
${url}    https://www.globalsqa.com/samplepagetest/

*** Test Cases ***
Buka web
    Open Browser    ${url}    ${web}
    Maximize Browser Window
    Choose File    //*[@id="wpcf7-f2598-p2599-o1"]/form/p/span/input    ${CURDIR}/IMG-20231123-WA0038.jpg
    Sleep    2s
    Input Text    //*[@id="g2599-name"]    Aji Santoso
    Input Text    //*[@id="g2599-email"]    aji@getnada.com
    Input Text    //*[@id="g2599-website"]    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Choose%20File
    Select From List By Value    //*[@id="g2599-experienceinyears"]    1-3
    Select Checkbox    //*[@id="contact-form-2599"]/form/div[5]/label[2]/input
    Select Radio Button    g2599-education    Post Graduate
    Click Button    //*[@id="contact-form-2599"]/form/button
    Handle Alert    ACCEPT
    Sleep    2s
    Handle Alert    ACCEPT
    Sleep    2s
    Input Text    //*[@id="contact-form-comment-g2599-comment"]    INI LAGI BELAJAR TESTING 123
    Sleep    2s
    Click Button    //*[@id="contact-form-2599"]/form/p[3]/button
    Sleep    5s