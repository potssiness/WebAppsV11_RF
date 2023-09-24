*** Settings ***
Resource          Global_Resources.resource
*** Keywords ***
FSM Login Portal Page and Navigate to FSM Menu
	[Arguments]    ${USERNAME_VAR}      ${PASSWORD_VAR}
    #Go To   ${D830RCA_AX1}
    set selenium speed    ${SLOW_0_2}
    wait until element is visible    ${LoginButton}     ${StandardTimeout}
    Wait for elements to be displayed        ${UserNameField}    ${PasswordField}
    Input Username and Password     ${UserNameField}    ${PasswordField}    ${USERNAME_VAR}      ${PASSWORD_VAR}
    Click And Wait For Element    ${Three}   ${INTERVAL}      ${LoginButton}
    Sleep    ${TEN}
    ${Email_Not_Verified_NEW}  Run Keyword And Return Status    Element Should Be Visible    ${Email_Not_Verified}
    Log To Console    ${Email_Not_Verified_NEW}
    Run Keyword If   ${Email_Not_Verified_NEW} != ${FALSE}  Click and wait for element    ${Three}   ${INTERVAL}    ${Email_Not_Verified_CloseBtn}
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




