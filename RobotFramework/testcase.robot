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
    And Click on Search bar and Search mobiles
    Then Click on your desire device of any electronics accessories
    Then Add to cart

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

Click on Search bar and Search mobiles
    Wait Until Page Contains Element  class:_3704LK  timeout=30s
    Click Element  class:_3704LK
    Sleep  4
    Input Text  class:_3704LK  mobiles
    Wait Until Page Contains Element  class:L0Z3Pu  timeout=30s
    click element  class:L0Z3Pu
    Sleep  4


Click on your desire device of any electronics accessories
    Wait Until Page Contains Element  class:_4rR01T  timeout=20s
    click element  class:_4rR01T
    Sleep  4
    switch window  locator=NEW
    Sleep  4

Add to cart
    Execute JavaScript    window.scrollTo(0,300)
    click button  xpath://*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    Sleep  4

Go to homepage
    click element   class:_2xm1JU
    Sleep  4

Check and verify device is in cart or not
    Wait Until Page Contains  Cart  timeout=20s
    click element   class:_3SkBxJ
    Sleep  5
    Close Browser


*** Variables ***
${Url}      https://www.google.com/
${Google input text}    Flipkart
${mobile no}=   xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${password}=    xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${Submit}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${Electronics}=     xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
${product}=     xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/div/a[2]
${Add to Cart}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button






