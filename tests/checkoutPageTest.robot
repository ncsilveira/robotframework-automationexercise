*** Settings ***
Documentation           Add test case chekout page

Resource         ${EXECDIR}/config/exporters/helpers.robot
Resource         ${EXECDIR}/Keywords/steps/hooks/commonHooks.robot
Resource         ${EXECDIR}/resources/data/loginData.robot
Test Setup       Open browser
Test Teardown    Close Session

*** Test Cases ***
W06-E2E checkout flow
    [Tags]  checkout  checkoutE2e  positive
    Given I am on the login page
    And I log in  ${loginData.email}    ${loginData.validPassword}
    And the user should be successfully authenticated
    And I am on the Products page 
    And I search for a product 
    And the product must be successfully returned
    And I add the product to the cart
    And the product must be successfully added
    When I confirm the order
    And Add payment details
    Then The order should be successfully placed





