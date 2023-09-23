*** Settings ***
Resource          ../Libraries/All_Libraries.resource
Resource          Global_Variables.resource
Resource          Global_Locators.resource
Resource          Global_Keywords.resource
*** Keywords ***
I am on FSM Login Portal Page and Navigate to FSM Menu
    #Go To   ${D830RCA_AX1}
    set selenium speed    ${SLOW_0_2}
    wait until element is visible    ${LoginButton}     ${StandardTimeout}
    Wait for elements to be displayed        ${UserNameField}    ${PasswordField}
    Input Username and Password     ${UserNameField}    ${PasswordField}    ${USER100}      ${USERPASS}
    Click And Wait For Element    ${Three}   ${INTERVAL}      ${LoginButton}
    wait until element is visible    ${Email_Not_Verified}      ${StandardTimeout}
    click and wait for element    ${Three}   ${INTERVAL}    ${Email_Not_Verified_CloseBtn}
    wait until element is visible    ${Application_Launcher}     ${StandardTimeout}
    click and wait for element    ${Three}   ${INTERVAL}    ${Application_Launcher}
    click and wait for element    ${Three}   ${INTERVAL}    ${APPLICATION_SHOW_MORE}
    ${FSM_MENU_V3}    run keyword and return status    element should be visible      ${4.0_FSM_MENU_V3}
    log    ${FSM_MENU_V3}
#    run keyword if    ${FSM_MENU_V3}=='null'    click and wait for element    ${Three}   ${INTERVAL}    ${4.0_FSM_MENU_V2}
    click and wait for element    ${Three}   ${INTERVAL}    ${4.0_FSM_MENU_V3}
    select frame    ${IFRAME_FSM_MENU}
    WAIT UNTIL ELEMENT IS VISIBLE       ${AVAILABLE_APPLICATION}    ${MaximumTimeout}
    log    visible
    sleep    ${StandardTimeout}

I will navigate to applications
    Navigate to     ${APPLICATION_REQUESTER}


