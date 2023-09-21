*** Settings ***
#Suite Setup       Open Browser And Maximize Window    ${PMP_QA_URL}    ${CHROME}
Suite Setup       Headless    Chrome    ${D830RCA_AX1}
Suite Teardown    Close Browser
#Test Timeout      5 minutes
Resource    ../../../Global_Resource/Global_Keywords.robot
Resource    ../../../Global_Resource/Global_Variables.robot
Resource    ../../Local_Resources/RSS_LPL_Keywords.resource



*** Test Cases ***
Precondition: Login
    Given


