*** Settings ***
# With the resource here we mark that the robot framework should look for the information in the main.robot file
# ${EXECDIR} means that main file in the directory of execution
Resource        ${EXECDIR}/main.robot

# Here we can set Test Setup that will run before every test or Suite Setup that will run once for the whole file
# Usually setup is used to open the browser or set the connection, etc.
Test Setup     Open Chrome To Storefront

# Test Teardown is bacisally similar to the test setup but it run at the end of each test or suit
Test Teardown  Close Browser


*** Test Cases ***
# Here is a label test cases which means that our scenarios will be written here, usually using the Gherkin steps

#First we have the name of the test and below are the steps (*** Keywords ***)
# Notice that steps should be one TAB to the right for the robot framework to pick them
Scenario: Successful Registration Of A Customer
    Given I Am Registering A Customer
    And I Am Entering Valid Information
    Then The Registration Is Successful

#Scenario Outline: Unsuccessful Registration Of A Customer - Invalid Information
#    Given I Am Registering A Customer
#    And I Am Entering Invalid Information
#    Then The Registration Is Not Successful