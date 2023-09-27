*** Settings ***
Resource    Global_Resources.resource

*** Keywords ***
Navigate to Manage Item
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${SUPPLY_MANAGEMENT}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${SUPPLY_MANAGEMENT_SETUP}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${APP_ITEMS}
    Click And Wait For Element     ${FIVE}       ${FIVE}     ${APP_MANGE_ITEM}

Create Item
    [Arguments]     ${FIRST_ITEM_ITEMDESCRIPTION_ONE}=${EMPTY}
    ...     ${FIRST_ITEM_ITEMDESCRIPTION_TWO}=${EMPTY}     ${FIRST_ITEM_UOM}=${EMPTY}
    ${RANDNumber}    Generate random string    6    0123456789
#    Log   ${RANDNumber}
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
    Log    ITEM NUMBER = ${ItemNumber1}
    RETURN      ${ItemNumber1}

Create Multiple Items
	[Arguments]     ${MAX_LENGHT}    ${FIRST_ITEM_ITEMDESCRIPTION_ONE}=${EMPTY}
	...     ${FIRST_ITEM_ITEMDESCRIPTION_TWO}=${EMPTY}     ${FIRST_ITEM_UOM}=${EMPTY}
	 FOR     ${i}    IN RANGE   ${MAX_LENGHT}
	    Create List    ITEM_NUMBERS
	    Append To List      ITEM_NUMBERS   Create Item      ${FIRST_ITEM_ITEMDESCRIPTION_ONE}=${EMPTY}
	    ...     ${FIRST_ITEM_ITEMDESCRIPTION_TWO}=${EMPTY}      ${FIRST_ITEM_UOM}=${EMPTY}

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
    # This chunk of code is in progress
    Unselect Checkbox   ${INVENTORY_TRACK_NO}
    Click And Wait For Element    ${FIVE}   ${FIVE}     ${ITEMLOC_SAVEBTN}

Create Multiple Item Locations
	 FOR ${i} IN RANGE ${10}






