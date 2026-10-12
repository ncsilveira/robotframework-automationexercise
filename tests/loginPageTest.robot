*** Settings ***
Documentation           Add test case login page

Resource         ${EXECDIR}/config/exporters/helpers.robot
Resource         ${EXECDIR}/Keywords/steps/hooks/commonHooks.robot
Resource         ${EXECDIR}/resources/data/loginData.robot
Test Setup       Open browser
Test Teardown    Close Session

*** Test Cases ***
W02-Login — valid credentials
    [Tags]  loginPage   validLogin   positive
    Given I am on the login page
    When I log in  ${loginData.email}   ${loginData.validPassword}
    the user should be successfully authenticated
W03-Login — invalid credentials
    [Tags]  loginPage   invalidLogin   negative
    Given I am on the login page
    When I log in with an invalid user  ${loginData.email}    ${loginData.invalidPassword}
    Then the error message should be displayed  
W08-Mandatory email validation
    [Tags]  loginPage   loginEmpty   negative
    Given I am on the login page
    When I submit the form without email   ${loginData.validPassword} 
    Then the login is not performed
W10-Template/Outline/Examples
    [Tags]      loginPage  regression   template
    [Template]  Login validations 
    
    emailRequired
    invalidLogin    
    validLogin




 

