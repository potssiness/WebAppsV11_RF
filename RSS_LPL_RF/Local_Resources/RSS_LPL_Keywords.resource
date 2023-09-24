*** Settings ***
Resource    RSS_LPL_Locators.resource
Resource    RSS_LPL_Variables.resource
Resource    ../../Global_Resource/Global_Resources.resource


*** Keywords ***
Go to RSS LPL
    sleep   ${Three}
    scroll element into view          ${NAV_RSS_LPL}
    click and wait for element        ${FIVE}     ${FIVE}     ${NAV_RSS_LPL}
    click and wait for element        ${FIVE}     ${FIVE}     ${NAV_SHOPPING_HOME}
    wait until element is visible     ${START_REQUISITION_HEADER}
