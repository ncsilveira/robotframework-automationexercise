*** Settings    ****
Documentation     Web tests for shopping cart validation

*** Keywords ***
I add the product to the cart        
    Scroll Element Into View               ${PRODUCT_CARD}    
    Mouse Over                             ${PRODUCT_CARD}
    Ensure Page Is Not Hijacked            https://automationexercise.com/products 
    Remove Google Ads    
    
    Click Element                          ${BTN_ADD_CART_OVERLAY}
    Wait Until Element Is Visible          ${MODAL_ADD_SUCESS}      3s
    Click Element                          ${BTN_VIEW_CART}

the product must be successfully added    
    Remove Google Ads
    Wait Until Element Is Visible          ${IMG_PRODUCT}                   3s 
    Element Should Contain                 ${CART_PRODUCT_NAME}             Sleeveless Unicorn Patch Gown - Pink
    Element Should Contain                 ${CART_PRODUCT_PRICE}            Rs. 1050    
    Element Text Should Be                 ${CART_PRODUCT_QUANTITY}         1 

I remove the product to cart
    Click Element                          ${CART_PRODUCT_DELETE}    

the cart must be empty
    Wait Until Element Is Not Visible      ${CART_PRODUCT_DELETE} 
    Element Text Should be                 ${TXT_CART_EMPTY}                Cart is empty!




    
    




