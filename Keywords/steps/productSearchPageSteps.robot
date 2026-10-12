*** Settings    ****
Documentation     Web tests for validating product search scenarios

*** Keywords ***
I am on the Products page
    Wait Until Element Is Visible       ${PRODUCTS_MENU}    10s
    Click Element                       ${PRODUCTS_MENU}
    Ensure Page Is Not Hijacked         https://automationexercise.com/products
    Remove Google Ads   
    Wait Until Element Is Visible       ${SEARCH_PRODUCTS}      10s 

I search for a product
    Ensure Page Is Not Hijacked         https://automationexercise.com/products
    Remove Google Ads
    Wait Until Element Is Visible       ${SEARCH_PRODUCTS}          3s
    Input Text                          ${SEARCH_PRODUCTS}          Sleeveless Unicorn Patch Gown - Pink
    Scroll Element Into View            ${BTN_PRODUCTS}
    Click Element                       ${BTN_PRODUCTS}
    
the product must be successfully returned
    Wait Until Element Is Visible       ${PRODUCT_IMAGE}
    Scroll Element Into View            ${TXT_PRODUCT_NAME}
    Element Should Contain              ${TXT_PRODUCT_NAME}         Sleeveless Unicorn Patch Gown - Pink
    Element Should Contain              ${TXT_PRODUCT_PRICE}        Rs. 1050
    
I search for a category Men > Tshit    
    Wait Until Element Is Visible       ${CATEGORY_MEN}
    Scroll Element Into View            ${CATEGORY_MEN}
    Click Element                       ${CATEGORY_MEN}    
    Ensure Page Is Not Hijacked         https://automationexercise.com/products
    Remove Google Ads
    Wait Until Element Is Visible       ${CATEGORY_TSHIRT_MEN}          10s
    Click Element                       ${CATEGORY_TSHIRT_MEN}
    Remove Google Ads

And the page must be displayed
    ${tshirtPage} =   Get WebElement        ${TXT_CATEGORY_TSHIRT_MEN}
    ${nome}=  Get Text      ${tshirtPage}
    Element Should Contain  ${TXT_CATEGORY_TSHIRT_MEN}           ${nome}           

Then all products should match the expected list
    ${produtos_obtidos}=    Get Products From Page    
    Lists Should Be Equal           
    ...     ${produtos_obtidos}
    ...     ${PRODUTOS_MEN}        

Normalize Product Name 

        [Arguments]    ${nome}

        ${nome}=    Replace String Using Regexp
            ...    ${nome}
            ...    \\s+
            ...    ${SPACE}

        ${nome}=    Replace String Using Regexp
        ...    ${nome}
        ...    T-Shirt (Sales|Product Listings|Automation Tools)
        ...    ${EMPTY}

        IF    '${nome}' == 'Men'
        ${nome}=    Set Variable    Men Tshirt
        END

        RETURN    ${nome}

Get Products From Page   
    
    @{nomes}=   Get WebElements     ${TXT_PRODUCT_NAME}    
    @{precos}=  Get WebElements     ${TXT_PRODUCT_PRICE}

    @{produtos_obtidos}=    Create List 
    ${indice}=  Set Variable    0

    FOR     ${nome_elemento}   IN     @{nomes}

        ${nome} =   Get Text    ${nome_elemento}
        ${nome}=    Normalize Product Name      ${nome}
        ${preco}=   Get Text    ${precos}[${indice}]                  
                                    
        &{produto}=     Create Dictionary
        ...     nome=${nome}
        ...     preco=${preco}

        Append To List
        ...     ${produtos_obtidos}
        ...     ${produto}
        
        ${indice}=  Evaluate    ${indice} + 1

    END
    RETURN    ${produtos_obtidos} 
    


