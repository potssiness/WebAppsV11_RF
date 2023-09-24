*** Settings ***
Suite Setup       Open Browser And Maximize Window    ${D830RCA_AX1}    chrome
#Suite Setup       Headless    Chrome    ${D830RCA_AX1}
Suite Teardown    Close Browser
#Test Timeout      5 minutes
Resource    ../../../../Global_Resource/Global_Resources.resource
Resource    ../../../Local_Resources/RSS_LPL_Keywords.resource
Resource    TCCSF170_Keywords.resource




*** Test Cases ***
Precondition: Login
    Given I am on FSM Login Portal Page and Navigate to FSM Menu
    When I will navigate to applications Requester
    Then Go to RSS LPL

Start of Punchout UI testing
    Given   I will novigate to Punchout


