*** Settings ***
Resource    ../../../Local_Resources/RSS_LPL_Keywords.resource
Resource    ../../../../Global_Resource/Global_Resources.resource

*** Keywords ***
I will navigate to applications Requester
    Navigate to Applications    ${APPLICATION_REQUESTER}
    element should be visible    ${AVAILABLE_APPLICATION}

I will novigate to Punchout
    Click And Wait For Element            ${Three}        ${Three}    ${SHOP_PUNCHOUT_VENDORS_BTN}
    Wait Until Element Is Visible         ${SHOP_PUNCHOUT_VENDORS_HEADER}