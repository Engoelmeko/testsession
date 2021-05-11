*** Settings ***
Library     SeleniumLibrary 
***Variables***
${url}    http://www.practiceselenium.com/practice-form.html
${driver}    chrome
***Keywords***
StartDriver        
    Open Browser    ${url}    ${driver}
    Maximize Browser Window
    Sleep    1s 
    
CloseDriver  
    Close Browser