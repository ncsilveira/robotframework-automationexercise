*** Settings ***
Documentation           Arquivo de massa de dados de produtos

*** Variables ***

${TSHIRT_1_NOME}     Men Tshirt
${TSHIRT_1_PRECO}    Rs. 400
${TSHIRT_2_NOME}     Pure Cotton V-Neck T-Shirt
${TSHIRT_2_PRECO}    Rs. 1299
${TSHIRT_3_NOME}     Green Side Placket Detail T-Shirt
${TSHIRT_3_PRECO}    Rs. 1000
${TSHIRT_4_NOME}     Premium Polo T-Shirts
${TSHIRT_4_PRECO}    Rs. 1500
${TSHIRT_5_NOME}     Pure Cotton Neon Green Tshirt
${TSHIRT_5_PRECO}    Rs. 850
${TSHIRT_6_NOME}     GRAPHIC DESIGN MEN T SHIRT - BLUE
${TSHIRT_6_PRECO}    Rs. 1389

&{TSHIRT_1}
...    nome=${TSHIRT_1_NOME}
...    preco=${TSHIRT_1_PRECO}
&{TSHIRT_2}
...    nome=${TSHIRT_2_NOME}
...    preco=${TSHIRT_2_PRECO}
&{TSHIRT_3}
...    nome=${TSHIRT_3_NOME}
...    preco=${TSHIRT_3_PRECO}
&{TSHIRT_4}
...    nome=${TSHIRT_4_NOME}
...    preco=${TSHIRT_4_PRECO}
&{TSHIRT_5}
...    nome=${TSHIRT_5_NOME}
...    preco=${TSHIRT_5_PRECO}
&{TSHIRT_6}
...    nome=${TSHIRT_6_NOME}
...    preco=${TSHIRT_6_PRECO}

@{PRODUTOS_MEN}
...    ${TSHIRT_1}
...    ${TSHIRT_2}
...    ${TSHIRT_3}
...    ${TSHIRT_4}
...    ${TSHIRT_5}
...    ${TSHIRT_6}
      
