*** Settings ***
Documentation           Add test case cart page

Resource         ${EXECDIR}/config/exporters/helpers.robot
Resource         ${EXECDIR}/Keywords/steps/hooks/commonHooks.robot

Test Setup       Open browser
Test Teardown    Close Session

*** Test Cases ***
W05-Add product to cart
    [Tags]  cart  cartAdd   positive
    Given I am on the Products page
    And I search for a product
    When I add the product to the cart
    Then the product must be successfully added

W07-Remove product from cart
    [Tags]  cart  cartRemove  positive
    Given I am on the Products page
    And I search for a product
    And I add the product to the cart
    And the product must be successfully added
    When I remove the product to cart
    Then the cart must be empty 

    



