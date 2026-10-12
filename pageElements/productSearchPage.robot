*** Settings ***
Documentation           Add products page element mappings 


*** Variables ***
#Produto Page
${PRODUCTS_MENU}                css:[href="/products"]
${SEARCH_PRODUCTS}              css:[id="search_product"]
${BTN_PRODUCTS}                 css:[id="submit_search"]
${TXT_PRODUCT_NAME}             xpath://div[@class='productinfo text-center']/p
${TXT_PRODUCT_PRICE}            xpath://div[@class="product-image-wrapper"]//*[@class="productinfo text-center"]//h2
${PRODUCT_IMAGE}                css:[src="/get_product_picture/19"]
${BTN_CLOSE_MODAL}              css:[class="close-button"]
${BTN_CLOSE_GOOGLE_AD}          css:[id="dismiss-button-element"]
${CATEGORY_MEN}                 css:a[href="#Men"]
${CATEGORY_TSHIRT_MEN}          css:a[href="/category_products/3"]
${TXT_CATEGORY_TSHIRT_MEN}      xpath://h2[@class="title text-center"]
