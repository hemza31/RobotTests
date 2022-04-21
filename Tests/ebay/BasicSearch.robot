*** Settings ***
Documentation    Basis Search Functionality
Resource    ../../Keywords/CommonFunctionality.robot
Resource    ../../Keywords/eBay_UserDefinedKeywords.robot
Test Setup    Start Test Cases
Test Teardown    Finish Test Cases

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional

    KW_Verify Search Results
    KW_Filter Results By Conditions
    KW_Verify Filter Results



