*** Keywords ***
# In the keywords section we keep all the keyords that are used in the *** test cases ***
# Global keywords keep information that is used in a lot of tests, like open browser keyword, create user, etc.

###     OPEN    BROWSER     ###
Open Chrome To Storefront
# Here you can change the browser
    Create Webdriver      Chrome
# Setting the start location
    Go To   ${STOREFRONT_URL}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

# This keyword is used to run tests in headless browser
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
# Generate random string keyword is used for generating information that you need for each test
# In this case we will have generated 8 lower case string, like 'qwertyui'
    ${user_email_part_1}=  Generate Random String  ${NUMBER_8}  [LOWER]
# In this step we will create the actual user email by catenating the random string and the email part
# The result is 'qwertyui@mailinator.com'
    ${create_user_email}=  Catenate  SEPARATOR=  ${user_email_part_1}  ${user_email_part_2}
# Set test variable means that you will be able to use this email in the same test where you call this *** keywords ***
# You can set the variable also to be global (you can use it in every test) or suit (you can use it in the whole test file)
    Set Test Variable  ${create_user_email}

# Creating new user is part of almost every test, so this needs to be configured as global keyword.
# Checking that registration is successful is not necessary for the keyword as we have verified this in RegisterUserTests
# however, if registration is broken, almost all test will fail and you will want to see in log that the reason is broken registration
Create New User
    I Am Registering A Customer
    I Am Entering Valid Information
    The Registration Is Successful

