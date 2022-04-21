*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.ebay.com

*** Keywords ***
Start Test Cases
    Open Browser    ${url}    chrome
    maximize browser window

Finish Test Cases
    close browser
