*** Settings ***
Resource    RSS_LPL_Locators.resource
Resource    RSS_LPL_Variables.resource
Resource    ../../Global_Resource/Global_Resources.resource


*** Keywords ***
Go to RSS LPL
    click and wait for element        ${Three}     ${INTERVAL_3}     ${NAV_RSS_LPL}
    click and wait for element        ${Three}     ${INTERVAL_3}     ${NAV_SHOPPING_HOME}
    wait until element is visible     ${START_REQUISITION_HEADER}
