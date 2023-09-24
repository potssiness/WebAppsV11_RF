*** Settings ***
#Suite Setup       Open Browser And Maximize Window    ${D830RCA_AX1}    ${DRIVER}    ${USER100}    ${USERPASS}
Suite Setup       Headless       chrome       ${D830RCA_AX1}       ${USER100}        ${USERPASS}
Suite Teardown    Close Browser
Resource    ../../../Local_Resources/RSS_LPL_Resources.resource
Resource    ../../../../Global_Resource/Global_Resources.resource
Resource    TCCSF165_Keywords.resource

*** Test Cases ***
PRECONDITION: CREATE ITEM DATA
	Given I Click Navigate To Applications Application Administrator
	And I Navigate To Manage Item
	And I Create Stock Item
