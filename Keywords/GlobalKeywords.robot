*** Keywords ***
                ###     OPEN    BROWSER     ###

Open Chrome To Storefront
    Create Webdriver      Chrome
    Go To   ${STOREFRONT_URL}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Open Chrome To Headless
   ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
   ${prefs} =    Create Dictionary    download.default_directory=${EXECDIR}
   Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}
   Call Method    ${chrome_options}    add_argument    --headless
   Call Method    ${chrome_options}    add_argument    --disable-gpu
   Call Method    ${chrome_options}    add_argument    --incognito
   Call Method    ${chrome_options}    add_argument     ${LEVEL}
   Call Method    ${chrome_options}    add_argument     ${LANG}
   ${options}=     Call Method     ${chrome_options}    to_capabilities
   Log  ${options}
   Open Browser    ${STOREFRONT_URL}   browser=chrome     desired_capabilities=${options}
   ${SL}           get library instance    SeleniumLibrary
   ${webdriver}    Call Method             ${SL}    _current_browser
   Set Window Size    1920    1080
   Set Selenium Speed    ${DELAY}

Create Unique User Email
    ${user_email_part_1}=  Generate Random String  ${NUMBER_8}  [LOWER]
    ${create_user_email}=  Catenate  SEPARATOR=  ${user_email_part_1}  ${user_email_part_2}
    Set Test Variable  ${create_user_email}

# Creating new user is part of almost every test, so this needs to be configured as global keyword.
# Checking that registration is successful is not necessary for the keyword as we have verified this in RegisterUserTests
# however, if registration is broken, almost all test will fail and you will want to see in log that the reason is broken registration
Create New User
    I Am Registering A Customer
    I Am Entering Valid Information
    The Registration Is Successful
