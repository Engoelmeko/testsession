*** Settings ***

Library   Seleniumlibrary  
Resource    TestBase.robot
Resource    ../Pages/home.robot 

Test Setup    TestBase.StartDriver
Test Teardown    TestBase.CloseDriver


***Variable***


${Locator }    xpath://*[@id="wsb-element-00000000-0000-0000-0000-000450914886"]/div/h1    



*** Test Cases ***

Check All Fields with values 
    home.HomeTestFunction    Fname    Lname    DS
    sleep    1s
   HomeDropdownlist
    sleep    1s
    HomeCheckbox
    sleep    1s
    HomeRadioButtonSex 
    sleep    1s
    HomeRadioButtonYears
    sleep   1s
    Homelist
    sleep    1s
    Submit 
    Sleep    1s
   Page Should Contain Element    ${Locator }
   
Check Some Fields Entered 
    home.HomeTestFunction    Test2    Test2    DS2
    sleep    1s
   HomeDropdownlist
    sleep    1s
    HomeCheckbox
    Submit 
    Sleep    1s
   Page Should Contain Element    ${Locator }
   

Check Empty Fields and click on Submit  
    Submit 
   Page Should Contain Element    ${Locator }