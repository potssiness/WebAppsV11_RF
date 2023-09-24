*** Settings ***
Suite Setup       Open Browser And Maximize Window    ${D830RCA_AX1}    chrome    ${USER100}     PASSWORD=${USERPASS}
#Suite Setup       Headless    Chrome    ${D830RCA_AX1}      ${USER100}     ${USERPASS}
Suite Teardown    Close Browser
#Test Timeout      5 minutes
Resource    ../../../../../Global_Resource/Global_Resources.resource
Resource    ../../../../Local_Resources/RSS_LPL_Resources.resource
Resource    TCCSF170_Keywords.resource


*** Test Cases ***
Precondition: Login
    Given I will navigate to applications Requester
    Then Go to RSS LPL

Scenario: Start of Punchout UI testing
    Given I will novigate to Punchout
    And I will validate fields buttons in Punchout screen



