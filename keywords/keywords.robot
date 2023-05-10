*** Settings ***
Documentation       Template keyword resource.

Variables           ../resources/variables.py
Library             RPA.Browser.Selenium


*** Keywords ***
Example keyword
    Log    Today is ${TODAY}

Open Roo Web
    Open Headless Chrome Browser    ${roo_web_url}
    Maximize Browser Window

Click Roo Product Compare tab
    [Arguments]    ${tab}    ${list}

    Run Keyword And Ignore Error    Scroll Element Into View    ${tab}
    Click Element    ${tab}
    Mouse Down    ${list}
    Click Element    ${list}

Scroll and Click Element
    [Arguments]    ${element}
    Run Keyword And Ignore Error    Scroll Element Into View    ${element}
    Wait Until Element Is Enabled    ${element}
    Click Element    ${element}

Scroll and Click Link
    [Arguments]    ${element}
    Run Keyword And Ignore Error    Scroll Element Into View    ${element}
    Wait Until Element Is Enabled    ${element}
    Click Link    ${element}

Scroll and Screenshot
    [Arguments]    ${element}    ${credit_card_id}
    Run Keyword And Ignore Error    Scroll Element Into View    ${element}
    Capture Page Screenshot    selenium-screenshot-${credit_card_id}.png

Screenshot Whole Page
    [Arguments]    ${category}
    Set Window Size    1280    8000
    Capture Page Screenshot    selenium-screenshot-${category}.png

Dynamic Get Credit Card
    FOR    ${index}    IN RANGE    1    10
        ${elements}    Get Element Attribute
        ...    //*[contains(concat(' ', @class, ' '), "leaderboard order-${index} class-container")]    class
        Log    ${elements}
    END

# Dynamic Get Credit Card3
#    FOR    ${index}    IN RANGE    1    10
#    ${elements}    Get Element Attribute
#    ...    //*[contains(concat(' ', @class, ' '), "leaderboard order-${index} class-container")]    'class'
#    FOR    ${element}    IN    @{elements}
#    Log    ${element.text}
#    END
#    END

# Dynamic Get Credit Card2
#    ${RADIO_XPATH}    //*[@id="${credit_card_id}"]
#    ${CLASS}    Get Element Attribute    ${credit_card_id}@class
