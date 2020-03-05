*** Settings ***
Resource        ${EXECDIR}/main.robot
Test Setup     Open Chrome To Headless
Test Teardown  Close Browser


*** Test Cases ***

Scenario: Anonymous Customer - Calculate Basket VAT
    When I Am Adding Product To The Basket As Anonymous Customer
    Then The Basket VAT Is Calculated Correctly