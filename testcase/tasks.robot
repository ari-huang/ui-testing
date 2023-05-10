*** Settings ***
Documentation       Template robot main suite.

Library             Collections
Library             ../libraries/MyLibrary.py
Library             RPA.Desktop
Resource            ../keywords/keywords.robot
Variables           ../resources/variables.py

Test Setup          Set Screenshot Directory    output
Test Teardown       Close All Browsers


*** Tasks ***
Example task
    Example Keyword
    Example Python Keyword
    Log    ${TODAY}

Screenshot all credit card by categories
    [Documentation]    Screenshot all credit card
    [Tags]    web
    Open Roo Web
    Click Roo Product Compare tab    //*[@id="nav-content"]/ul/li[4]    //*[@id="link-list"]
    Scroll and Click Element    //*[@id="tab-all"]
    FOR    ${category_counter}    IN    @{credit_card_category}
        Wait Until Keyword Succeeds
        ...    3x
        ...    700ms
        ...    Scroll And Click Link
        ...    xpath=//a[@href='${roo_web_credit_card_url}${credit_card_category}[${category_counter}][1]']
        Wait Until Element Is Visible    //*[@id="${credit_card_category["${category_counter}"]}[0]"]
        Screenshot Whole Page    ${category_counter}
        Go To    ${roo_web_credit_card_url}
    END

# Screenshot all credit card category page
#    [Documentation]    Screenshot all credit card category page
#    [Tags]    web

#    Open Roo Web
#    Click Roo Product Compare tab    //*[@id="nav-content"]/ul/li[4]    //*[@id="link-list"]
#    FOR    ${counter}    IN    @{credit_card_category}
#    Log    Num value is ${counter}    console=yes
#    Scroll and Click Element    //*[contains(text(),"更多")]
#    Scroll and Click Element    //*[@id="${credit_card_category["${counter}"]}"]
#    Capture Page Screenshot    selenium-screenshot-${counter}.png
#    END

# Screen and Validate all credit card
#    [Documentation]    Screenshot all credit card
#    [Tags]    web

#    Open Roo Web
#    Click Roo Product Compare tab    //*[@id="nav-content"]/ul/li[4]    //*[@id="link-list"]
#    Scroll and Click Element    //*[@id="tab-all"]
#    FOR    ${counter}    IN    @{credit_card_id}
#    Log    Num value is ${counter}    console=yes
#    Scroll and Screenshot    //*[@id="${counter}"]    selenium-screenshot-${counter}.png
#    END

# Test
#    [Documentation]    Screenshot all credit card
#    [Tags]    web
#    Open Roo Web
#    Click Roo Product Compare tab    //*[@id="nav-content"]/ul/li[4]    //*[@id="link-list"]
#    Scroll and Click Element    //*[@id="tab-all"]
#    FOR    ${category_counter}    IN    @{credit_card_category}
#    Wait Until Keyword Succeeds    3x    700ms    Scroll And Click Link
#    ...    xpath=//a[@href="${roo_web_credit_card_url}${credit_card_category}[${category_counter}][1]"]
#    Wait Until Element Is Visible    //*[@id="${credit_card_category["${category_counter}"]}[0]"]
#    FOR    ${credit_card_index}    IN RANGE    1    6
#    Scroll and Screenshot
#    ...    //*[contains(concat(' ', @data-index, ' '), "${credit_card_index}")]
#    ...    selenium-screenshot-${category_counter}-${credit_card_index}.png
#    END
#    Go To    ${roo_web_credit_card_url}
#    END

# Test2
#    [Documentation]    Screenshot all credit card
#    [Tags]    web
#    Open Roo Web
#    Click Roo Product Compare tab    //*[@id="nav-content"]/ul/li[4]    //*[@id="link-list"]
#    Set Window Size    1280    8000
#    Capture Page Screenshot    test.png
