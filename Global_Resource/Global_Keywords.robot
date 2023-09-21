*** Settings ***
Resource          ./Global_Variables.tsv
Resource          ./Global_Locators.tsv
Resource          ../Libraries/All_Libraries.txt
*** Keywords ***
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