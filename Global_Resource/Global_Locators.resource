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
${4.0_FSM_TESTVERSION_V2}           //p[normalize-space()='4.0 FSM TestVersion V2']
${AVAILABLE_APPLICATION}            //span[@id='page-title'] | //span[@class='page-title']
${IFRAME_FSM_MENU}                  (//*[@class='osp-width-full osp-height-full'])[2]


#******************   Application Location List   ******************
${APPLICATION_HAMBURGER}            //button[@id='app-menu-trigger']
${APPLICATION_SEARCHFIELD}          //input[@id='application-menu-searchfield']
${APPLICATION_SEARCHFIELD_WITH_DATA}    //input[@id='search-menu-searchfield']
${APPLICATION_SEARCHFIELD_CLOSE_BTN}    //button[@class='btn-icon hide-focus close']
${APPLICATION_DROPDOWSELECTOR}      //button[@id='trigger-btn'] | //button[@id='webapp-menu']
${APPLICATION_APP_ADMIN}            //span[normalize-space()='Application Administrator']
${APPLICATION_REQUESTER}            //span[normalize-space()='Requester'] | //a[@id='Requester']//span[contains(text(),'Requester')]
${SUPPLY_MANAGEMENT}                //span[normalize-space()='Supply Management']
${SUPPLY_MANAGEMENT_SETUP}          //span[normalize-space()='Supply Management Setup']
${APP_ITEMS}                        //span[normalize-space()='Items']
${APP_MANGE_ITEM}                   //span[normalize-space()='Manage Items']
${REQ_SHOPPING_HOME}                //span[@class='accordion-search-span-heading']

#******************   Application Location List Via Search Bar   ******************
${SEARCH_MANAGE_ITEM}       (//span[contains(text(),'Manage Items')])[1]
${SEARCH_MANAGE_ITEM_LOCATION}   //a[@id='AllApplicationsMenu_AllSupplyManagementMenu_SCMSetupHome_ItemMaintenanceMenu_ManageItemLocations_searchresult']//span[@class='accordion-search-span-heading'][normalize-space()='Manage Item Locations']

#******************   CREATE ITEM PAGE   ******************
${MANAGE_ITEM_LABEL}                //span[@id='ItemPage_ItemDashboard_0_ItemPrimaryDashboard_toolbar_toolbar_title'] | //span[@id='ItemPage_toolbar_title']
${CREATE_ITEM_BTN}                  //button[@id='ItemPage_ItemDashboard_0_ItemPrimaryDashboard_Create_0'] | //button[@id='ItemPage_ItemDashboard_ItemPrimaryDashboard_Create_0_toolbar_button']
${CREATE_ITEM_MAIN_TAB}             //a[normalize-space()='Main']
${CREATE_ITEM_ITEMGROUP}            //input[@id='ItemForm_ItemGroup']
${CREATE_ITEM_DESCRIPTION_ONE}      //input[@id='ItemForm_Description_1']
${CREATE_ITEM_DESCRIPTION_TWO}      //input[@id='ItemForm_Description2']
${CREATE_ITEM_UOM}                  //input[@id='ItemForm_StockUOM']
${CREATE_ITEM_SAVE_BTN}             //button[@id='ItemForm_StandardSave'] | //button[@id='ItemForm_StandardSave_toolbar_button']
${CREATE_ITEM_ITEM_NUMBER}          //p[@id='ItemForm_Item']

#******************   ITEM LOCATION PAGE   ******************
${MANAGE_ITEM_LOCATION_HEADER}     //span[@id='ManageItemLocationPage_toolbar_title']
${MANAGE_ITEM_LOCATION_TITLE}      //span[@id='ManageItemLocationPage_ItemLocations_ItemsForAnInventoryLocation_toolbar_title']
${REQUEST_NEW_ITEM_LOCATION}       //button[@id='ManageItemLocationPage_ItemLocations_ItemsForAnInventoryLocation_RequestNewItemLocation_0_toolbar_button']
${MANAGE_ITEM_LOCATION_CREATE_BTN}  //button[@id='ManageItemLocationPage_ItemLocations_ItemsForAnInventoryLocation_Create_2_toolbar_button']
${MANAGE_ITEM_LOCATION_CREATE_HOME_PAGE}    //span[@id='ItemLocation_toolbar_title']
${ITEMLOC_COMPANY_FIELD}    //input[@id='ItemLocation_Company']
${ITEMLOC_LOCATION}     //input[@id='ItemLocation_InventoryLocation']
${ITEMLOC_ITEM}         //input[@id='ItemLocation_Item']
${ITEMLOC_INVENTORY_TRACKED_CHECKBOX}       //label[normalize-space()='Inventory Tracked']
${ITEMLOC_SAVEBTN}      //button[@id='ItemLocation_StandardSave_toolbar_button']

