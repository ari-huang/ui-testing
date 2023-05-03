*** Settings ***
Documentation       Template keyword resource.

Variables           resources/variables.py
Library             RPA.Browser.Selenium


*** Keywords ***
Example keyword
    Log    Today is ${TODAY}

Open Roo Web
    Open Chrome Browser    ${roo_web_url}
    Maximize Browser Window

Click Roo Product Compare tab
    Click Element    xpath://*[@id="nav-content"]/ul/li[4]
    Mouse Down    xpath://*[@id="link-list"]
    Click Element    xpath://*[@id="link-list"]

Move Specific Element Into View
    Page Should Contain Element    xpath://*[@id="tab-all"]
    Run Keyword And Ignore Error    Scroll Element Into View    xpath://*[@id="tab-all"]
