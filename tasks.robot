*** Settings ***
Documentation       Template robot main suite.

Library             RPA.Browser.Selenium
Library             Collections
Library             libraries/MyLibrary.py
Library             RPA.Desktop
Resource            keywords/keywords.robot
Variables           resources/variables.py

Test Setup          Set Screenshot Directory    output
Test Teardown       Close All Browsers


*** Tasks ***
Example task
    Example Keyword
    Example Python Keyword
    Log    ${TODAY}

Screenshot all credit card category
    [Documentation]    Screenshot all credit card category
    [Tags]    web

    Open Roo Web
    Click Roo Product Compare tab
    Move Specific Element Into View
    FOR    ${counter}    IN    @{credit_card_category}
        Log    Num value is ${counter}    console=yes
        Click Element    //*[contains(text(),"更多")]
        Click Element    //*[@id="${credit_card_category["${counter}"]}"]
        Capture Page Screenshot    selenium-screenshot-${counter}.png
    END
