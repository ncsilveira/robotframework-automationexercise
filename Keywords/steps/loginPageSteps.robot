*** Settings    ****
Documentation     Web tests for validating login scenarios

*** Keywords ***
Given I am on the login page 
    Click Element                        ${SIGNUP_LOGIN}    

I log in
    [Arguments]     ${email}    ${password}
    Input Text                           ${LoginPage.inputEmail}               ${email}                    
    Input Text                           ${LoginPage.inputPassword}            ${password}                
    Click Element                        ${LoginPage.btnLogin}      
        
the user should be successfully authenticated
   Wait Until Element Is Visible         ${LoginPage.txtLogged}
   Element Should Contain                ${LoginPage.txtLogged}                ${loginData.sucessoLogin}              
      
When I log in with an invalid user
    [Arguments]     ${email}    ${password}
    Input Text                           ${LoginPage.inputEmail}               ${email}   
    Input Text                           ${LoginPage.inputPassword}            ${password}      
    Click Element                        ${LoginPage.btnLogin}   

the error message should be displayed
    Wait Until Element Is Visible        ${LoginPage.txtIncorrectLogin}
    Element Text Should Be               ${LoginPage.txtIncorrectLogin}        ${loginData.errorMessage}     

I submit the form without email
    [Arguments]     ${password}
    Input Text                           ${LoginPage.inputPassword}             ${password}                                     
    Click Element                        ${LoginPage.btnLogin}

the login is not performed
    Element Should Be Visible            ${LoginPage.btnLogin}
    ${email}=   Get Value                ${LoginPage.inputEmail}
    Should Be Equal As Strings           ${email}                   ${EMPTY}   

Login validations
    [Arguments]     ${cenario}
    
    Given I am on the login page      
                                   
            IF   '${cenario}' == 'emailRequired'
                    I log in
                    ...    ${EMPTY}
                    ...    ${loginData.validPassword}
                    the login is not performed               
                    
            ELSE IF    '${cenario}' == 'invalidLogin'
                    I log in
                    ...    ${loginData.email}
                    ...    ${loginData.invalidPassword}
                    the error message should be displayed                    
           
            ELSE IF  '${cenario}' == 'validLogin'
                I log in        
                ...     ${loginData.email}
                ...     ${loginData.validPassword}
                the user should be successfully authenticated     
        END
   


                

    
    


    
    

    


