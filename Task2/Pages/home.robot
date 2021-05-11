*** Settings ***

Library   Seleniumlibrary    
***Variables***
${First name}    xpath://*[@id="wsb-element-00000000-0000-0000-0000-000452032346"]/div/form/fieldset/div[1]/p[2]/input
${Last name}     xpath://*[@id="wsb-element-00000000-0000-0000-0000-000452032346"]/div/form/fieldset/div[1]/p[3]/input
${Date if stopped}    xpath://*[@id="datepicker"]

${DropD}                id:continents

${Favorite ChaiCB1}        xpath://*[@id="tea1"]
${Favorite ChaiCB2}        xpath://*[@id="tea2"]
${Favorite ChaiCB3}        xpath://*[@id="tea3"]

${ChaiCB1}        xpath:tool-0
${ChaiCB2}        xpath:tool-1
${ChaiCB3}        xpath:tool-2


${SexRB}    sex

${YearsRB1}    id:exp-0
${YearsRB2}    id:exp-1
${YearsRB3}    id:exp-2
${YearsRB4}    id:exp-3
${YearsRB5}    id:exp-4
${YearsRB6}    id:exp-5
${YearsRB7}    id:exp-6

${ListBrowser Commands}    id:selenium_commands 





${submitbtn}      id:submit



*** keywords ***


 HomeTestFunction
    [Arguments]    ${Fname}    ${Lname}  ${DS}  
    Input Text    ${First name}    ${Fname}  
    Input Text    ${Last name}    ${Lname}
       Input Text    ${Date if stopped}    ${DS}
HomeDropdownlist
    Select From List By Index    ${DropD}    1  
HomeCheckbox
    Select Checkbox    ${Favorite ChaiCB1}     
    Select Checkbox    ${Favorite ChaiCB2} 
HomeRadioButtonSex     
    Select Radio Button    ${SexRB}    Female

HomeRadioButtonYears     
   Click Button      ${YearsRB1}   
   
Homelist    
    Select From List By Index    ${ListBrowser Commands}    1
   
Submit 
     Click Button    ${submitbtn} 
 