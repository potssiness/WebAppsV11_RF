*** Variables ***
${UserNameField}                    //input[@id='username']
${PasswordField}                    //input[@id='pass']
${LoginButton}                      //button[contains(text(),'Sign In')]
${Invalid_Login_Label}              //p[contains(text(),'We did not recognize the username or password you entered. Please try again.')]
${Email_Not_Verified}               //div[@class='text-base osp-truncate-text osp-ntf-text has-tooltip']
${Email_Not_Verified_CloseBtn}      //div[@class='osp-ntf-close']//button[@type='button']
${Application_Launcher}             //button[@id='osp-nav-launcher']
${APPLICATION_SHOW_MORE}            //button[@class='show-more-btn osp-margin-lg-b btn-tertiary hide-focus ng-star-inserted']
${4.0_FSM_MENU_V3}                  //p[normalize-space()='4.0 FSM Menu V3']
${4.0_FSM_MENU_V2}                  //p[normalize-space()='4.0 FSM TestVersion V2']
${AVAILABLE_APPLICATION}            //span[@id='page-title']
${IFRAME_FSM_MENU}                  (//*[@class='osp-width-full osp-height-full'])[2]
${APPLICATION_HAMBURGER}            //button[@id='app-menu-trigger']
${APPLICATION_SEARCHFIELD}          //input[@id='application-menu-searchfield']
${APPLICATION_DROPDOWSELECTOR}      //button[@id='trigger-btn']

#****************************************APPLICATION LIST****************************************
${APPLICATION_REQUESTER}            //a[@id='Requester']//span[contains(text(),'Requester')]