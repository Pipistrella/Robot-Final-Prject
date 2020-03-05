*** Keywords ***
# Notice that keywords that are part of Gherkin steps should be set here without the Gherkin word
# Example: Given I Am Registering A Customer should be titled only I Am Registering A Customer

I Am Registering A Customer
# Click Element just clicks the element with the locator
# Notice that there should be at least two spaces between the keyword and the variable!!! Valid for all keywords!
    Click Element   ${user_account_dropdown}
    Click Element   ${user_register_dropdown_option}
# Checks for specific location
    Location Should Be  ${REGISTER_URL}

I Am Entering Valid Information
# Input Text keyword adds some text to a text field. Commonly used for enter username, password emailsin forms, etc.
    Input Text      ${user_first_name_field}            ${user_first_name_value}
    Input Text      ${user_last_name_field}             ${user_last_name_value}
# Here we call the create user keyword so we can create the user and use it in the next keyword
    Create Unique User Email
    Input Text      ${user_email_field}                 ${create_user_email}
    Input Text      ${user_telephone_field}             ${user_telephone_value}
    Input Text      ${user_address_1_field}             ${user_address_1_value}
    Input Text      ${user_city_field}                  ${user_city_value}
    Input Text      ${user_postcode_field}              ${user_postcode_value}
# This keyword is usually used for dropdown menus. You can select an option by index, by value or other options
    Select From List By Index                           ${user_country_dropdown}            ${NUMBER_8}
    Select From List By Index                           ${user_state_dropdown}              ${NUMBER_1}
    Input Text      ${user_password_field}              ${user_password}
    Input Text      ${user_password_confirm_field}      ${user_password}
    Click Element   ${privacy_policy_consent_checkox}
    Click Element   ${register_continue_button}

The Registration Is Successful
    Location Should Be  ${SUCCESS_REGISTER_URL}


