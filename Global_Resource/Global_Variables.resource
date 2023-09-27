*** Variables ***
#**********Tenant URL's**********
${D830RCA_AX1}   https://mingle-cqa-portal.cqa.inforcloudsuite.com/v2/D830RCA_AX1/
${D821DEVA_AX2}  https://mingle-cqa-portal.cqa.inforcloudsuite.com/v2/D821DEVA_AX2/

#**********LOGIN USERNAME**********
${USER100}  5000100
${USER99}  500099
#**********LOGIN PASSWORD**********
${USERPASS}    N0R3gr3ss1on!_MT

#**********DRIVERS**********
${DRIVER}   chrome

#**********TIMEOUT**********
${SLOW}	0.5
${SLOW_0_2}	0.2
${REMOVE_SLOW}	0
${RETRY}	10
${RETRY_10}	10
${INTERVAL}	2
${INTERVAL_3}	3
${DELAY}	10
${MaximumTimeout}	30
${StandardTimeout}	10
#**********     RETRY       **********
${Three}    3
${FIVE}     5
${TEN}      10
#**********     DATA       **********

${BG1}          BG1
${EA}           EA
${9000}         9000
${LOC1}         LOC1


#**********     KEYS       **********
${ENTER}        ENTER

#**********     WORD VARIABLE      **********
${ELEMENT_DISPLAYED}    Element is displayed

#**********     NAVIGATION SEARCH FIELD DATA       **********
${MANAGE_ITEM}      Manage Item
${MANAGE_ITEM_LOCATION}      Manage Item Location
${REQUSTER_SHOOPING_HOME}    Shopping Home