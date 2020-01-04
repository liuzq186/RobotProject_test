*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    Inside Test Suite Setup
Suite Teardown    Log    Inside Test Suite Teardown    
Test Setup    Log    Inside Test Setup
Test Teardown    Log    Inside Test Teardown            

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    1st     

MySecondTest
    Log    2nd    
    Set Tags    regression
    Remove Tags    regression 

MyThirdTest
    Log    3rd $     


    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text      name=q                some text    
    # Press Keys      name=q                ENTER
    # #Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log    Test Completed    
    
# SampleLoginTest
    # [Documentation]     This is a sample login test
    # Open Browser        ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element       id=welcome
    # Click Element       link=Logout
    # Close Browser
    # Log                 Test completed
# #    Log                 This test was executed by %{hostname} on %{uname}                

# *** Variables ***
# ${URL}    https://opensource-demo.orangehrmlive.com/
# @{CREDENTIALS}    Admin    admin123
# &{LOGINDATA}    username=Admin    password=admin123

# *** Keywords ***
# LoginKW
    # Input Text          id=txtUsername    @{CREDENTIALS}[0]
    # Input Password      id=txtPassword    &{LOGINDATA}[password]
    # Click Button    	id=btnLogin