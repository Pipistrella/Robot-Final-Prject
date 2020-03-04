*** Keywords ***

I Am Registering A Customer
    Click Element  ${user_account_dropdown}
    Click Element  ${user_register_dropdown}
    Location Should Be  ${REGISTER_URL}

I Am Entering Valid Information
#    Input Text  ${your_locator}  ${text, for example USER_NAME}