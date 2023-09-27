*** Settings ***
Resource          ../Libraries/All_Libraries.resource
Resource          Global_Variables.resource
Resource          Global_Common_Function.resource
Resource          Global_Locators.resource
*** Keywords ***
Open Browser And Maximize Window
    [Arguments]      ${Url}    ${Browser}   ${USER}  ${PASSWORD}
    Go to Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Timeout    ${TEN}
    FSM Login Portal Page and Navigate to FSM Menu   ${USER}     ${PASSWORD}
  #  Maximize Browser Window
Open On Headless Browser
    [Arguments]    ${driver}    ${URL}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    ${URL}
    Comment    Maximize Browser Window
    Comment    Maximize Browser Window


Firefox true headless
    [Arguments]    ${URL}
    ${firefox options}=    Evaluate    sys.modules['selenium.webdriver'].firefox.webdriver.Options()    sys, selenium.webdriver
    Call Method    ${firefox options}    add_argument    --headless
    Call Method    ${firefox options}    add_argument    --test-type
    Call Method    ${firefox options}    add_argument    --disable-extensions
    Call Method    ${firefox options}    add_argument    --headless
    Call Method    ${firefox options}    add_argument    --disable-gpu
    Call Method    ${firefox options}    add_argument    --no-sandbox
    Create Webdriver    Firefox    firefox_options=${firefox options}
    Go To    ${URL}
    Comment    Page Should Contain Element    //img[@alt='TrueMoney']

Headless
    [Arguments]      ${driver}    ${URL}   ${Username}=${None}    ${Password}=${None}
    Run Keyword If    '${driver}' == 'Firefox' or '${driver}' == 'firefox'    Firefox true headless    ${URL}
    ...    ELSE IF    '${driver}' == 'Chrome' or '${driver}' == 'chrome'    Open On Headless Browser    ${driver}    ${URL}
    ### Loggin in keyword
#    Run Keyword If    '${Username}' != '${None}' and '${Password}' != '${None}'    If User Is Not Logged In    ${Username}    ${Password}
    Run Keyword If    '${Username}' != '${None}' and '${Password}' != '${None}'    FSM Login Portal Page and Navigate to FSM Menu    ${Username}    ${Password}

If User Is Not Logged In
    [Arguments]    ${Username}    ${Password}
    Wait for elements to be displayed    ${UserNameField}    ${PasswordField}
    Wait Until Keyword Succeeds    ${RETRY}    ${INTERVAL}    Wait Until Element Is Visible    ${LoginButton}    ${INTERVAL}
    Input Text2     ${UserNameField}    ${Username}
    Input Password    ${PasswordField}   ${Password}
    Click And Wait For Element    ${RETRY}    ${INTERVAL}    ${LoginButton}
    Wait Until Element Is Not Visible    ${LoginButton}    ${StandardTimeout}
    sleep   ${TEN}
    Wait Until Keyword Succeeds    ${RETRY}    ${INTERVAL}    Page Should Not Contain Element    ${UserNameField}
    Wait Until Keyword Succeeds    ${RETRY}    ${INTERVAL}    Page Should Not Contain Element    ${PasswordField}
    Wait Until Keyword Succeeds    ${RETRY}    ${INTERVAL}    Page Should Contain Element    ${AVAILABLE_APPLICATION}    ${StandardTimeout}

Go to Browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}

#FSM Login Portal Page
#    Go To   ${D830RCA_AX1}
#    set selenium speed    ${SLOW_0_2}
#    wait until element is visible    ${LoginButton}     ${StandardTimeout}
#    Wait for elements to be displayed        ${UserNameField}    ${PasswordField}
#    Input Username and Password     ${UserNameField}    ${PasswordField}    ${USER100}      ${USERPASS}
#    Click And Wait For Element    ${Three}   ${INTERVAL}      ${LoginButton}
#    wait until element is visible    ${Email_Not_Verified}      ${StandardTimeout}
#    click and wait for element    ${Three}   ${INTERVAL}    ${Email_Not_Verified_CloseBtn}

Input Username and Password
    [Arguments]    ${UserNameLocator}   ${PassLocator}   ${UserNameData}    ${PassData}
    wait for elements to be displayed     ${UserNameLocator}    ${PassLocator}
    Input Text2    ${UserNameLocator}   ${UserNameData}
    Input Text2     ${PassLocator}      ${PassData}

Input Text2
    [Arguments]    ${Locator}    ${Data}
    Click And Wait For Element  ${RETRY}    ${INTERVAL}    ${Locator}
    Input Text    ${Locator}    ${Data}

Input Text2 and Enter
    [Arguments]    ${Locator}    ${Data}
    Click And Wait For Element  ${RETRY}    ${INTERVAL}    ${Locator}
    Input Text    ${Locator}    ${Data}
    Press Keys     ${Locator}    ${ENTER}
    Sleep    5


Click And Wait For Element
    [Arguments]    ${NumberOfRetry}    ${Interval}    ${Locator}
    Wait Until Element Is Visible    ${Locator}    ${StandardTimeout}
    Wait Until Keyword Succeeds    ${NumberOfRetry}    ${Interval}    Click Element    ${Locator}



Wait for elements to be displayed
    [Arguments]    ${Element 1}    ${Element 2}
    Wait Until Element Is Visible    ${Element 1}    ${MaximumTimeout}
    Wait Until Element Is Visible    ${Element 2}    ${MaximumTimeout}


Navigate to Applications
    [Arguments]    ${Applications}
    ${APPLICATION_SEARCHFIELD_NEW}    run keyword and return status    element should be visible      ${APPLICATION_SEARCHFIELD}
    run keyword if    ${APPLICATION_SEARCHFIELD_NEW}==${NULL}    click element    ${APPLICATION_HAMBURGER}
    Click And Wait For Element        ${FIVE}       ${FIVE}       ${APPLICATION_HAMBURGER}
    CLICK AND WAIT FOR ELEMENT        ${INTERVAL}   	${Three}        ${APPLICATION_DROPDOWSELECTOR}
    Sleep    ${FIVE}
    scroll element into view          ${Applications}
    CLICK AND WAIT FOR ELEMENT        ${INTERVAL}   	${Three}        ${Applications}

Navigate to via Search bar
	[Arguments]    ${SEARCH_VALUE}      ${LOCATOR_OF_SEARCH_APPLICATION}
    ${APPLICATION_SEARCHFIELD_CLOSE_BTN_new}   Run Keyword And Return Status
    ...     Element Should Be Visible   ${APPLICATION_SEARCHFIELD_CLOSE_BTN}
    Log    ${APPLICATION_SEARCHFIELD_CLOSE_BTN_new}
    Run Keyword If    ${APPLICATION_SEARCHFIELD_CLOSE_BTN_new} != ${FALSE}
    ...     Click And Wait For Element    ${FIVE}    ${FIVE}    ${APPLICATION_SEARCHFIELD_CLOSE_BTN}
	Sleep    ${FIVE}
    Click And Wait For Element    ${FIVE}       ${FIVE}     ${APPLICATION_SEARCHFIELD}
    Input Text2 and Enter       ${APPLICATION_SEARCHFIELD}      ${SEARCH_VALUE}
    Wait Until Element Is Visible    ${LOCATOR_OF_SEARCH_APPLICATION}
#    Pause Execution
    Click And Wait For Element    ${RETRY}    ${INTERVAL}    ${LOCATOR_OF_SEARCH_APPLICATION}
    Sleep    ${FIVE}