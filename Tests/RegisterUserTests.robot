*** Settings ***
Resource        ${EXECDIR}/main.robot
Test Setup     Open Chrome To Storefront
Test Teardown  Close Browser


*** Test Cases ***

Scenario: Successful Registration Of A Customer
    Given I Am Registering A Customer
    And I Am Entering Valid Information
    Then The Registration Is Successful

Scenario Outline: Unsuccessful Registration Of A Customer - Invalid Information
    Given I Am Registering A Customer
    And I Am Entering Invalid Information
    Then The Registration Is Not Successful