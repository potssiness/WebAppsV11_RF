*** Settings ***
Resource    ../../../../Local_Resources/RSS_LPL_Resources.resource
Resource    ../../../../../Global_Resource/Global_Resources.resource

*** Keywords ***
I will navigate to applications Requester
    Navigate to via Search bar    ${REQUSTER_SHOOPING_HOME}     ${REQ_SHOPPING_HOME}
    element should be visible    ${AVAILABLE_APPLICATION}

I will novigate to Punchout
    Click And Wait For Element            ${Three}        ${Three}    ${SHOP_PUNCHOUT_VENDORS_BTN}
    Wait Until Element Is Visible         ${SHOP_PUNCHOUT_VENDORS_HEADER}
    Wait Until Element Is Visible         ${PUNCHOUT_TAB_BTN}

I will validate fields buttons in Punchout screen
	 Wait Until Element Is Visible   ${FIRS_PUNCHOUT_IMAGE}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_IMAGE}
	 Element Should Be Visible    ${SHOP_PUNCHOUT_VENDORS_HEADER}   This will verify header if displayed
	 Element Should Be Visible    ${FIRS_PUNCHOUT_IMAGE}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_NAME}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_DESCRIPTION}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_CATEGORY}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_CATEGORY_DESCRIPTION}
     Element Should Be Visible    ${PUNCHOUT_ACTION_BTN}
     Element Should Be Visible    ${PUNCHOUT_SCREEN_SCROLLABLE}
     Element Should Be Visible    ${PUNCHOUT_REQUESTER_SHOPPING_PAGE_HEADER}
     Element Should Be Visible    ${PUNCHOUT_ARROW_KEYS}

I Will Create transaction in Punchout
	Switch Window
	Switch Browser