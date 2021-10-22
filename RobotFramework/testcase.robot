*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Observe User able to open the browser and log into flipkart
    [Tags]  End to End Non Functional Sanity White Box
    Given User launch browser for Flipkart
    Then User Enters mobile number and password
    And Click on Search bar and Search mobiles
    Then Click on your desire device of any electronics accessories
    Then Add to cart

Check whether device is in cart
    [Tags]  End to End Non Functional Sanity White Box
    Then Go to Homepage
    And Check and Verify device is in cart or not


*** Keywords ***
Given User launch browser for Flipkart
    Open Browser    ${Url}      Chrome
    Maximize Browser Window



User Enters mobile number and password
    input Text      ${mobile no}    8073645438
    input Text      ${password}     Qbhbhhfhbb
    Click Button    ${Submit}


Click on Search bar and Search mobiles
    Wait Until Page Contains Element  class:_3704LK  timeout=30s
    Click Element  class:_3704LK

    Input Text  class:_3704LK  mobiles
    Wait Until Page Contains Element  class:L0Z3Pu  timeout=30s
    click element  class:L0Z3Pu



Click on your desire device of any electronics accessories
    Wait Until Page Contains Element  class:_4rR01T  timeout=20s
    click element  class:_4rR01T

    switch window  locator=NEW

Add to cart
    Execute JavaScript    window.scrollTo(0,300)
    click button  xpath://*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button


Go to homepage
    click element   class:_2xm1JU


Check and verify device is in cart or not
    Wait Until Page Contains  Cart  timeout=20s
    click element   class:_3SkBxJ
    Close Browser

*** Variables ***
${Url}      https://www.flipkart.com/
${mobile no}=   xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${password}=    xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${Submit}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${product}=     xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/div/a[2]
${Add to Cart}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button






