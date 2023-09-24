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


#******************   Application Location List   ******************
${APPLICATION_HAMBURGER}            //button[@id='app-menu-trigger']
${APPLICATION_SEARCHFIELD}          //input[@id='application-menu-searchfield']
${APPLICATION_DROPDOWSELECTOR}      //button[@id='trigger-btn']
${APPLICATION_APP_ADMIN}            //span[normalize-space()='Application Administrator']
${APPLICATION_REQUESTER}            //a[@id='Requester']//span[contains(text(),'Requester')]
${SUPPLY_MANAGEMENT}                //span[normalize-space()='Supply Management']
${SUPPLY_MANAGEMENT_SETUP}          //span[normalize-space()='Supply Management Setup']
${APP_ITEMS}                        //span[normalize-space()='Items']
${APP_MANGE_ITEM}                   //span[normalize-space()='Manage Items']

#******************   CREATE ITEM PAGE   ******************
${MANAGE_ITEM_LABEL}                //span[@id='ItemPage_ItemDashboard_0_ItemPrimaryDashboard_toolbar_toolbar_title']
${CREATE_ITEM_BTN}                  //button[@id='ItemPage_ItemDashboard_0_ItemPrimaryDashboard_Create_0']
${CREATE_ITEM_MAIN_TAB}             //a[normalize-space()='Main']
${CREATE_ITEM_ITEMGROUP}            //input[@id='ItemForm_ItemGroup']
${CREATE_ITEM_DESCRIPTION_ONE}      //input[@id='ItemForm_Description_1']
${CREATE_ITEM_DESCRIPTION_TWO}      //input[@id='ItemForm_Description2']
${CREATE_ITEM_UOM}                  //input[@id='ItemForm_StockUOM']
${CREATE_ITEM_SAVE_BTN}             //button[@id='ItemForm_StandardSave']
${CREATE_ITEM_ITEM_NUMBER}          //p[@id='ItemForm_Item']

