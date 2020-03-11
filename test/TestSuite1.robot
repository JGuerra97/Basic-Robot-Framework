*** Settings ***
Library    SeleniumLibrary

Suite Setup       Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup        Log    I am inside Test Setup
Test Teardown     Log    I am inside Test Teardown

*** Test Cases ***
MyFirstTest
    Log    Hello World...    
    
FirstSeleniumTest    
    Open Browser                 https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text                   name=q                Automation step by step
    Press Keys                   name=q                ENTER
    # Click Button                 name=btnK    
    Sleep                        2
    Close Browser
    Log                          Test Completed    
    
SampleLoginTest
    [Documentation]              This is a sample login test
    Open Browser                 ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10
    LoginKW
    Sleep                        3
    Click Element                id=welcome
    Click Element                link=Logout
    Sleep                        3
    Close Browser
    Log                          Test Completed
    Log                          This test ${TESTNAME} was executed by %{USERNAME}
    
*** Variables ***
${URL}            https://opensource-demo.orangehrmlive.com
@{CREDENTIALS}    Admin             admin123
&{LOGINDATA}      username=Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text                   id=txtUsername            @{CREDENTIALS}[0]
    Input Password               id=txtPassword             &{LOGINDATA}[password]
    Click Button                 id=btnLogin













