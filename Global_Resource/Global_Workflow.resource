*** Settings ***
Resource    Global_Resources.resource

*** Keywords ***
Navigate to Manage Item
    Log To Console    Navigating to Manage Item
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${SUPPLY_MANAGEMENT}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${SUPPLY_MANAGEMENT_SETUP}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${APP_ITEMS}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${APP_MANGE_ITEM}

Navigate to via Search bar
	[Arguments]    ${SEARCH_VALUE}      ${LOCATOR_OF_SEARCH_APPLICATION}
    ${APPLICATION_SEARCHFIELD_CLOSE_BTN_new}   Run Keyword And Return Status     Element Should Be Visible   ${APPLICATION_SEARCHFIELD_CLOSE_BTN}
    Log    ${APPLICATION_SEARCHFIELD_CLOSE_BTN_new}
    Run Keyword If    ${APPLICATION_SEARCHFIELD_CLOSE_BTN_new} != ${FALSE}    Click And Wait For Element    ${FIVE}    ${FIVE}    ${APPLICATION_SEARCHFIELD_CLOSE_BTN}
	Sleep    10
    Click And Wait For Element    ${FIVE}       ${FIVE}     ${APPLICATION_SEARCHFIELD}
    Input Text2 and Enter       ${APPLICATION_SEARCHFIELD}      ${SEARCH_VALUE}
    Sleep    ${FIVE}
#    Pause Execution
    Click And Wait For Element    ${RETRY}    ${INTERVAL}    ${LOCATOR_OF_SEARCH_APPLICATION}

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
    # This will be the Item Variable
    set global variable    ${ItemNumber1}
    Log To Console    ITEM NUMBER = ${ItemNumber1}

Create Manange Item Location
	#*******   Supply arguments to become non stock to uncheck inventory track   *******
    [Arguments]    ${INVENTORY_TRACK_NO}=[NONE]
	Wait Until Element Is Visible     ${MANAGE_ITEM_LOCATION_HEADER}    ${TEN}
	Sleep    ${FIVE}
	Element Should Be Visible       ${MANAGE_ITEM_LOCATION_TITLE}       ${ELEMENT_DISPLAYED}
	Click And Wait For Element      ${FIVE}     ${FIVE}     ${MANAGE_ITEM_LOCATION_CREATE_BTN}
    Click And Wait For Element      ${FIVE}     ${FIVE}     ${MANAGE_ITEM_LOCATION_CREATE_HOME_PAGE}
    Input Text2    ${ITEMLOC_COMPANY_FIELD}     ${9000}
    Input Text2    ${ITEMLOC_LOCATION}      ${LOC1}
    Log To Console    ${ItemNumber1}
    Input Text2    ${ITEMLOC_ITEM}      ${ItemNumber1}
    Unselect Checkbox   ${INVENTORY_TRACK_NO}
    Click And Wait For Element    ${FIVE}   ${FIVE}     ${ITEMLOC_SAVEBTN}





