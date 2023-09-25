*** Settings ***
Resource    ../../../../Global_Resource/Global_Resources.resource
Resource    ../../../Local_Resources/RSS_LPL_Resources.resource
Resource    TCCSF65_Variables.resource

*** Keywords ***
I click navigate to applications Application Administrator
    Navigate to Applications    ${APPLICATION_APP_ADMIN}
    element should be visible    ${AVAILABLE_APPLICATION}

I Navigate to manage Item
	Navigate to via Search bar      ${MANAGE_ITEM}      ${SEARCH_MANAGE_ITEM}

I create Stock Item
	Create Item    ${TCCSF165}      ${TCCSF165}     ${EA}

