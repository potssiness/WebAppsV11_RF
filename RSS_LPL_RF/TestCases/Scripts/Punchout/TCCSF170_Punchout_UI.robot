*** Settings ***
Suite Setup       Open Browser And Maximize Window    ${D821DEVA_AX2}    chrome
#Suite Setup       Headless    Chrome    ${D830RCA_AX1}
Suite Teardown    Close Browser
#Test Timeout      5 minutes
Resource    ../../../../Global_Resource/Global_Keywords.resource
Resource    ../../../../Global_Resource/Global_Variables.resource
Resource    ../../../Local_Resources/RSS_LPL_Keywords.resource
Resource    ../../../../Global_Resource/Global_Common_Function.resource



*** Test Cases ***
Precondition: Login
    Given I am on FSM Login Portal Page and Navigate to FSM Menu


