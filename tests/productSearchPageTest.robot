*** Settings ***
Documentation           Add test case product page

Resource         ${EXECDIR}/config/exporters/helpers.robot
Resource         ${EXECDIR}/Keywords/steps/hooks/commonHooks.robot
Resource         ${EXECDIR}/resources/data/productData.Robot

Test Setup       Open browser
Test Teardown    Close Session

*** Test Cases ***
W04-Product search
    [Tags]  product   productSearch     positive
    Given I am on the Products page
    when I search for a product
    Then the product must be successfully returned
    
W09-Category navigation
    [Tags]  product   searchCategory   positive
    Given I am on the Products page
    When I search for a category Men > Tshit
    And the page must be displayed
    Then all products should match the expected list






