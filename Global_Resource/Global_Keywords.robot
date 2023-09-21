*** Settings ***
Resource          Global_Variables.tsv
Resource          Global_Locators.tsv
Resource          ../Libraries/All_Libraries.txt
*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${Url}    ${Browser}
    Go to Browser    ${Url}    ${Browser}
 #   Maximize Browser Window
  #  Maximize Browser Window
Headless
    [Arguments]    ${driver}    ${URL}    ${Username}=${None}    ${Password}=${None}
    Run Keyword If    '${driver}' == 'Firefox' or '${driver}' == 'firefox'    Firefox true headless    ${URL}
    ...    ELSE IF    '${driver}' == 'Chrome' or '${driver}' == 'chrome'    Open On Headless Browser    ${driver}    ${URL}
    ### Loggin in keyword
    Run Keyword If    '${Username}' != '${None}' and '${Password}' != '${None}'    If User Is Not Logged In    ${Username}    ${Password}

Go to Browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}

Input Text2
    [Arguments]  ${Locator}  ${Data}
    click and for the element

Click And Wait For Element
    [Arguments]    ${NumberOfRetry}    ${Interval}    ${Locator}
    Wait Until Element Is Visible    ${Locator}    ${StandardTimeout}
    Wait Until Keyword Succeeds    ${NumberOfRetry}    ${Interval}    Click Element    ${Locator}