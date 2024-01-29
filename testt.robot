*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            http://automationexercise.com
${Name}           krit
${Email}          sukrit@gmail.com
${First Name}     sukrit
${Last Name}      choosri
${Company}        Example Company
${Address}        123 Street
${Address2}       Apartment 
${Country}        thai
${State}          mong
${City}           phuket
${Zipcode}        90001
${Mobile Number}  1234567890

*** Test Cases ***
Register User
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://h1[contains(text(),'Welcome to Automation Practice Site')]

    Click Element    xpath://a[contains(text(),'Signup / Login')]
    Wait Until Page Contains Element    xpath://h2[contains(text(),'New User Signup!')]

    Input Text    id:name    ${Name}
    Input Text    id:email    ${Email}
    Click Element    xpath://input[@value='Signup']
    Wait Until Page Contains Element    xpath://h2[contains(text(),'ENTER ACCOUNT INFORMATION')]

   
    Click Element    id:newsletter
    Click Element    id:offers

    
    Click Element    xpath://input[@value='Create Account']
    Wait Until Page Contains Element    xpath://h2[contains(text(),'ACCOUNT CREATED!')]

    Click Element    xpath://a[contains(text(),'Continue')]
    Wait Until Page Contains Element    xpath://p[contains(text(),'Logged in as')]

    Click Element    xpath://a[contains(text(),'Delete Account')]
    Wait Until Page Contains Element    xpath://h2[contains(text(),'ACCOUNT DELETED!')]

    Click Element    xpath://a[contains(text(),'Continue')]
    Close Browser
