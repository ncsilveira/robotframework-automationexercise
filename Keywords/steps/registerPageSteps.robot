*** Settings    ****
Documentation     Web test for validating registration scenarios

*** Keywords ***
I am on the sign-up page
    Click Element                       ${SIGNUP_LOGIN}
    Element Text Should Be              ${TXT_SIGNUP_FORM}  New User Signup!
        
I pre-register   
    
    ${SignupNome}=     FakerLibrary.firstName
    ${UserEmail}=      FakerLibrary.FreeEmail

    &{dados_Nome_Email}=    Create Dictionary
        ...    nome=${SignupNome}
        ...    e-mail=${UserEmail}   

    Log To Console    ${dados_Nome_Email}

    Input Text                          ${INPUT_NOME_DE_USUARIO}         ${SignupNome}
    Input Text                          ${INPUT_EMAIL_ADRESS}            ${UserEmail}
    Click Element                       ${BTN_SIGNUP}
    
I complete the registration 

    ${MiddleName}=     FakerLibrary.FirstName
    ${Sobrenome} =     FakerLibrary.LastName
    ${Endereco} =      FakerLibrary.Address
    ${telefone} =      FakerLibrary.PhoneNumber

    &{dados_usuario}=    Create Dictionary
        ...    nome=${MiddleName}
        ...    sobrenome=${Sobrenome}
        ...    endereco=${Endereco}
        ...    telefone=${telefone}

    Log To Console    ${dados_usuario}
   

    Wait Until Element Is Visible       ${TXT_ENTER_ACCOUNT_INFORMATION}   
    Click Element                       ${TITLE} 
    Input Text                          ${PASSWORD}                      Go123456@
    Scroll Down                   
    Select From List By Value           ${DATE_OF_BIRTH}                1
    Select From List By Value           ${MONTHS}                       9
    Select From List By Value           ${YEARS}                        1989
    Input Text                          ${FIRST_NAME}                   ${MiddleName}
    Input Text                          ${LAST_NAME}                    ${LastName}
    Input Text                          ${COMPANY}                      Accenture
    Input Text                          ${ADRESS}                       Rua carvalho Alvim
    Scroll Down
    Select From List By Value           ${COUNTRY}                      United States
    Input Text                          ${STATE}                        Flórida
    Input Text                          ${CITY}                         Orlando
    Input Text                          ${ZIPICODE}                     32801
    Input Text                          ${MOBILENUMBER}                 ${telefone}
    Click Element                       ${BTN_CREATE_ACCOUNT}

The registration is successfully completed
    Element Text Should Be              ${TXT_ACCOUNT_CREATED}          ACCOUNT CREATED!


 

    


