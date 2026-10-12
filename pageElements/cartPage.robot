*** Settings ***
Documentation           Add cart page element mappings 


*** Variables ***
#Carrinho Page
${PRODUCT_CARD}                 xpath://div[contains(@class,'productinfo')][.//p[contains(normalize-space(.),'Sleeveless Unicorn Patch Gown - Pink')]]//a[@data-product-id='19']
${BTN_ADD_CART_OVERLAY}         xpath://div[contains(@class,'product-overlay')][.//p[contains(normalize-space(.),'Sleeveless Unicorn Patch Gown - Pink')]]//a[@data-product-id='19'] 
${MODAL_ADD_SUCESS}             css:.modal-header h4 
${BTN_VIEW_CART}                css:.modal-body a[href="/view_cart"]
${IMG_PRODUCT}                  xpath://td[@class="cart_product"]//img
${CART_PRODUCT_NAME}            css:.cart_description a
${CART_PRODUCT_PRICE}           css:.cart_price p
${CART_PRODUCT_QUANTITY}        css:.cart_quantity button
${CART_PRODUCT_TOTAL}           css:.cart_total p
${CART_PRODUCT_DELETE}          css:.cart_quantity_delete
${TXT_CART_EMPTY}               css:.text-center b

    

