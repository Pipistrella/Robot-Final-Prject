*** Keywords ***
# In the keywords section we keep all the keyords that are used in the *** test cases ***
# Global keywords keep information that is used in a lots of tests, like open browser keyword, create user, etc.

###     OPEN    BROWSER     ###
Open Chrome To Storefront
    Create Webdriver      Chrome
    Go To   ${STOREFRONT_URL}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Create Unique User Email
    ${user_email_part_1}=  Generate Random String  ${NUMBER_8}  [LOWER]
    ${create_user_email}=  Catenate  SEPARATOR=  ${user_email_part_1}  ${user_email_part_2}
    Set Test Variable  ${create_user_email}
