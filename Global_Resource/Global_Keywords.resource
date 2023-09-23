*** Settings ***
Resource          ../Libraries/All_Libraries.resource
Resource          Global_Variables.resource
Resource          Global_Locators.resource
*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${Url}    ${Browser}
    Go to Browser    ${Url}    ${Browser}
    Maximize Browser Window
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
    [Arguments]    ${driver}    ${URL}    ${Username}=${None}    ${Password}=${None}
    Run Keyword If    '${driver}' == 'Firefox' or '${driver}' == 'firefox'    Firefox true headless    ${URL}
    ...    ELSE IF    '${driver}' == 'Chrome' or '${driver}' == 'chrome'    Open On Headless Browser    ${driver}    ${URL}
    ### Loggin in keyword
    Run Keyword If    '${Username}' != '${None}' and '${Password}' != '${None}'    If User Is Not Logged In    ${Username}    ${Password}

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

Click And Wait For Element
    [Arguments]    ${NumberOfRetry}    ${Interval}    ${Locator}
    Wait Until Element Is Visible    ${Locator}    ${StandardTimeout}
    Wait Until Keyword Succeeds    ${NumberOfRetry}    ${Interval}    Click Element    ${Locator}



Wait for elements to be displayed
    [Arguments]    ${Element 1}    ${Element 2}
    Wait Until Element Is Visible    ${Element 1}    ${MaximumTimeout}
    Wait Until Element Is Visible    ${Element 2}    ${MaximumTimeout}

Create Item
    [Arguments]
    click and wait for element    createbtn
    input text      bg1
    input text    TCCSF170desc1
    input text    TCCSF170desc2
    input text    EA
    click and wait for element    savebtn
    ${ExtractedItemNumber1}    get text    //p[@id='ItemForm_Item_3']
    ${itemnumber1}    set global variable    ${ExtractedItemNumber1}
   # set global variable    ${itemnumber1}     ${ExtractedItemNumber1}

Navigate to
    [Arguments]    ${Applications}
#    select frame    ${IFRAME_FSM_MENU}
#    click and wait for element    ${INTERVAL}   	${Three}        ${APPLICATION_HAMBURGER}
    ${APPLICATION_SEARCHFIELD_NEW}    run keyword and return status    element should be visible      ${APPLICATION_SEARCHFIELD}
    run keyword if    ${APPLICATION_SEARCHFIELD_NEW}==${NULL}    click element    ${APPLICATION_HAMBURGER}
    click element    ${APPLICATION_HAMBURGER}
    CLICK AND WAIT FOR ELEMENT        ${INTERVAL}   	${Three}        ${APPLICATION_DROPDOWSELECTOR}
    scroll element into view          ${Applications}
    CLICK AND WAIT FOR ELEMENT        ${INTERVAL}   	${Three}        ${Applications}