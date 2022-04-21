*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SearchBox001}    //*[@id="gh-ac"]
${SearchButton001}    //*[@id="gh-btn"]
${condition001}    //span[@class="filter-menu-button__button-text" and contains(text(),'Condition')]
${condition002}    //div[2]/span/button/span
${newFilter}    //div[2]/span/span/div/div[2]/span[2]
${newText}    //*[@id="s0-62-10-6-3-query_answer1-answer-2-1-1-list"]/li[1]/div/a/div


*** Keywords ***

KW_Verify Search Results
    input text    ${SearchBox001}    mobile
    click button    ${SearchButton001}
    page should contain    results for mobile

KW_Filter Results By Conditions
    click element    ${condition002}
    click element    ${newFilter}
    sleep    3s

KW_Verify Filter Results
    element should contain    ${newText}    New