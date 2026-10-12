*** Settings ***
Documentation           Add test case register page

Resource         ${EXECDIR}/config/exporters/helpers.robot
Resource         ${EXECDIR}/Keywords/steps/hooks/commonHooks.robot
Test Setup       Open browser
Test Teardown    Close Session

*** Test Cases ***
W01-User registration
    [Tags]  registration  userRegistration  positive
    Given I am on the sign-up page
    And I pre-register
    When I complete the registration
    Then The registration is successfully completed