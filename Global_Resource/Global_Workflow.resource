*** Settings ***
Resource    Global_Resources.resource

*** Keywords ***
Navigate to Manage Item
    Log To Console    Navigating to Manage Item
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${SUPPLY_MANAGEMENT}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${SUPPLY_MANAGEMENT_SETUP}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${APP_ITEMS}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${APP_MANGE_ITEM}

Create Item
    [Arguments]     ${FIRST_ITEM_ITEMDESCRIPTION_ONE}=${EMPTY}      ${FIRST_ITEM_ITEMDESCRIPTION_TWO}=${EMPTY}     ${FIRST_ITEM_UOM}=${EMPTY}
    ${RANDNumber}    Generate random string    6    0123456789
    Log   ${RANDNumber}
    Wait Until Element Is Visible    ${MANAGE_ITEM_LABEL}    ${TEN}
    Click And Wait For Element      ${FIVE}       ${FIVE}     ${CREATE_ITEM_BTN}
    Wait Until Element Is Visible    ${CREATE_ITEM_MAIN_TAB}    ${TEN}
    Input Text2    ${CREATE_ITEM_ITEMGROUP}     ${BG1}
    Input Text2    ${CREATE_ITEM_DESCRIPTION_ONE}       ${FIRST_ITEM_ITEMDESCRIPTION_ONE}${RANDNumber}
    Input Text2    ${CREATE_ITEM_DESCRIPTION_TWO}       ${FIRST_ITEM_ITEMDESCRIPTION_TWO}${RANDNumber}
    Input Text2    ${CREATE_ITEM_UOM}       ${FIRST_ITEM_UOM}
    Click And Wait For Element    ${FIVE}       ${FIVE}     ${CREATE_ITEM_SAVE_BTN}
    Wait Until Element Is Visible    ${CREATE_ITEM_ITEM_NUMBER}     ${TEN}
    ${ItemNumber1}    get text    ${CREATE_ITEM_ITEM_NUMBER}
    set global variable    ${ItemNumber1}
    Log To Console    ITEM NUMBER = ${ItemNumber1}




