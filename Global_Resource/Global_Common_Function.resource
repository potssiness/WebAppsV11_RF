*** Settings ***
Resource          ../Libraries/All_Libraries.resource
Resource          Global_Variables.resource
Resource          Global_Locators.resource
Resource          Global_Keywords.resource
*** Keywords ***
I am on FSM Login Portal Page
    Go To   ${D830RCA_AX1}
    set selenium speed    ${SLOW_0_2}
    wait until element is visible    ${LoginButton}     ${StandardTimeout}
    Wait for elements to be displayed        ${UserNameField}    ${PasswordField}
    Input Username and Password     ${UserNameField}    ${PasswordField}    ${USER100}      ${USERPASS}
    Click And Wait For Element    ${Three}   ${INTERVAL}      ${LoginButton}
    wait until element is visible    ${Email_Not_Verified}      ${StandardTimeout}
    click and wait for element    ${Three}   ${INTERVAL}    ${Email_Not_Verified_CloseBtn}
    click and wait for element    ${Three}   ${INTERVAL}    ${Application_Launcher}
    click and wait for element    ${Three}   ${INTERVAL}    ${4.0_FSM_MENU_V3}



