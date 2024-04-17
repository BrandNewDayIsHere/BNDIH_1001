*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Web Test Setup
    Open Browser  browser=chrome

Web Test Teardown
    Close All Browsers