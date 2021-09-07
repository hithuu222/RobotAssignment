*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Observe User able to open the browser and log into flipkart
    [Tags]  End to End Non Functional Sanity White Box
    Given User launch browser for Google
    Then User clicks on searchbar and type as Flipkart
    Then User clicks on Flipkart Link
    Then User Enters mobile number and password

Observe user able to open Electronic section
    [Tags]  End to End Non Functional Sanity White Box
    And Clicks on Electronics section and opens it
    Then Clicks on Laptop and Desktop Field and opens it
    Then Click on desire device of any electronics product

Observe User able to add the device into the cart
    [Tags]  End to End Non Functional Sanity White Box
    And Adds to cart

Check whether device is in cart
    [Tags]  End to End Non Functional Sanity White Box
    Then Go to Homepage
    And Check and Verify device is in cart or not


*** Keywords ***
User launch browser for Google
    Open Browser    ${Url}      Chrome
    Maximize Browser Window

User clicks on searchbar and type as Flipkart
    input text  name:q      ${Google input text}
    sleep   3
    click button    name:btnK

User clicks on Flipkart Link
    mouse over  xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3
    click element   xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3

User Enters mobile number and password
    input Text      ${mobile no}    8073645438
    input Text      ${password}     Qbhbhhfhbb
    Click Button    ${Submit}
    Sleep   4

Clicks on Electronics section and opens it
    mouse over      ${Electronics}
    Sleep   3

Clicks on Laptop and Desktop Field and opens it
    mouse over  link:Gaming
    Click link  link:Gaming
    Sleep   3

Click on desire device of any electronics product
    Click Element       ${product}
    Sleep   3
    Switch Window   locator=NEW
    Sleep   3

Adds to cart
    Execute JavaScript  window.scrollTo(0,300)
    click button        ${Add to Cart}
    Sleep   3

Go to Homepage
    Click Element   class:_2xm1JU
    Sleep   3

Check and Verify device is in cart or not
    Click Element   class:_3SkBxJ
    Sleep   10
    Close Browser


*** Variables ***
${Url}      https://www.google.com/
${Google input text}    Flipkart
${mobile no}=   xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${password}=    xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${Submit}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${Electronics}=     xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
${product}=     xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/div/a[2]
${Add to Cart}=     xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button






