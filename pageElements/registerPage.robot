*** Settings ***
Documentation           Add register page element mappings 


*** Variables ***
#formulário de cadastro 1
${TXT_SIGNUP_FORM}                  xpath://div[@class='signup-form']//h2[text()='New User Signup!']
${SIGNUP_LOGIN}                     css:a[href="/login"]
${LOGOUT_LOGIN}                     css:a[href="/logout"]
${INPUT_NOME_DE_USUARIO}            css:[data-qa="signup-name"]
${INPUT_EMAIL_ADRESS}               css:[data-qa="signup-email"]   
${BTN_SIGNUP}                       css:[data-qa="signup-button"]

#Enter Account Information
${TXT_ENTER_ACCOUNT_INFORMATION}    xpath://h2[@class='title text-center']//b[text()='Enter Account Information']
${TITLE}                            css:[id="id_gender2"]
${PASSWORD}                         css:[data-qa="password"]
${DATE_OF_BIRTH}                    css:[data-qa="days"]
${MONTHS}                           css:[data-qa="months"]
${YEARS}                            css:[data-qa="years"]

#Enter Address Information 
${FIRST_NAME}                       css:[data-qa="first_name"]
${LAST_NAME}                        css:[data-qa="last_name"]
${COMPANY}                          css:[data-qa="company"]
${ADRESS}                           css:[data-qa="address"]
${COUNTRY}                          css:[data-qa="country"]
${STATE}                            css:[data-qa="state"]
${CITY}                             css:[data-qa="city"]
${ZIPICODE}                         css:[data-qa="zipcode"]
${MOBILENUMBER}                     css:[data-qa="mobile_number"]
${BTN_CREATE_ACCOUNT}               css:[data-qa="create-account"]
${TXT_ACCOUNT_CREATED}              css:[data-qa="account-created"] 