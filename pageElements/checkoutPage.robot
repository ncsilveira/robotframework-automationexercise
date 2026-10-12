*** Settings ***
Documentation           Add checkout page element mappings 


*** Variables ***
${BTN_CHECKOUT}                     css:.btn.btn-default.check_out
${BTN_PLACE_ORDER}                  css:a[href="/payment"]
${INPUT_NAME_CARD}                  css:input[data-qa="name-on-card"]
${INPUT_CARD_NUMBER}                css:input[data-qa="card-number"]              
${INPUT_CARD_CVV}                   css:input[data-qa="cvc"]
${INPUT_CARD_EXPIRATION_MONTH}      css:input[data-qa="expiry-month"]
${INPUT_CARD_EXPIRATION_YEAR}       css:input[data-qa="expiry-year"]
${BTN_PAY_ORDER}                    css:button[data-qa="pay-button"]
${TXT_CONFIRMED_PAY}                css:[data-qa="order-placed"] b            

