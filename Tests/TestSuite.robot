*** Settings ***
Documentation  Test scenarios
Resource  ../Resources/Keywords/web_keywords.robot

*** Variables ***
${URL}  www.sauto.cz
${verification_01}  syselhadjezevec

*** Test Cases ***
TC_1001_CarSearchEngine
    [Documentation]  Test that opens site and search car
    [Tags]  Web
    [Setup]  Web Test Setup
    #[Teardown]  Web Test Teardown
    Go To  https://demoqa.com/automation-practice-form
    input text  //input[@id='firstName']  Michal
    input text  //input[@id='lastName']  Stejskal
    input text  //input[@id='userEmail']  test.email@testmail.com
    click element  //div[@class='custom-control custom-radio custom-control-inline'][1]
    #click element  //input[@id='gender-radio-1']
    Wait Until Element Is Visible  //input[@id='firstName']  15s

    capture page screenshot



