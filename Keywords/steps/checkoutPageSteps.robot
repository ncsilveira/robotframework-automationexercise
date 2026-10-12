*** Settings    ****
Documentation     Web tests for validating checkout scenarios

*** Keywords ***
I confirm the order
    Click Element                           ${BTN_CHECKOUT}  
    Scroll Element Into View                ${BTN_PLACE_ORDER}
    Wait Until Element Is Visible           ${BTN_PLACE_ORDER}     5s
    Click Element                           ${BTN_PLACE_ORDER}    
    Remove Google Ads                           

Add payment details
    Wait Until Element Is Visible           ${INPUT_NAME_CARD}                  
    Input Text                              ${INPUT_NAME_CARD}                  Noelle Rodrigues
    Input Text                              ${INPUT_CARD_NUMBER}                4111 1111 1111 1111
    Input Text                              ${INPUT_CARD_CVV}                   123
    Input Text                              ${INPUT_CARD_EXPIRATION_MONTH}      06
    Input Text                              ${INPUT_CARD_EXPIRATION_YEAR}       2032
    Click Element                           ${BTN_PAY_ORDER}

The order should be successfully placed
    Element Text Should Be                  ${TXT_CONFIRMED_PAY}                ORDER PLACED!                                        
    
     
    




