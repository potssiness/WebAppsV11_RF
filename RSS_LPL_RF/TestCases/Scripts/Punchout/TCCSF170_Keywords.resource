*** Settings ***
Resource    ../../../Local_Resources/RSS_LPL_Keywords.resource
Resource    ../../../Local_Resources/RSS_LPL_Locators.resource
Resource    ../../../../Global_Resource/Global_Resources.resource

*** Keywords ***
I will navigate to applications Requester
    Navigate to Applications    ${APPLICATION_REQUESTER}
    element should be visible    ${AVAILABLE_APPLICATION}

I will novigate to Punchout
    Click And Wait For Element            ${Three}        ${Three}    ${SHOP_PUNCHOUT_VENDORS_BTN}
    Wait Until Element Is Visible         ${SHOP_PUNCHOUT_VENDORS_HEADER}
    Wait Until Element Is Visible         ${PUNCHOUT_TAB_BTN}

I will validate fields buttons in Punchout screen
	 Element Should Be Visible    ${SHOP_PUNCHOUT_VENDORS_HEADER}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_IMAGE}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_NAME}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_DESCRIPTION}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_CATEGORY}
	 Element Should Be Visible    ${FIRS_PUNCHOUT_CATEGORY_DESCRIPTION}
     Element Should Be Visible    ${PUNCHOUT_ACTION_BTN}
     Element Should Be Visible    ${PUNCHOUT_SCREEN_SCROLLABLE}