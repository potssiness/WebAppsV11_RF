*** Settings ***
Suite Setup       Open Browser And Maximize Window    ${D830RCA_AX1}    chrome    ${USER100}     PASSWORD=${USERPASS}
#Suite Setup       Headless    Chrome    ${D830RCA_AX1}      ${USER100}     ${USERPASS}
Suite Teardown    Close Browser
Resource    ../../../Local_Resources/RSS_LPL_Resources.resource
Resource    ../../../../Global_Resource/Global_Resources.resource
Resource    TCCSF165_Keywords.resource

*** Test Cases ***