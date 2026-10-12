# Projeto de Automação Web com Robot Framework

Projeto desenvolvido para automação de testes funcionais da aplicação Automation Exercise utilizando Robot Framework e Selenium.

# Funcionalidades Automatizadas 

 * W01-User registration
 * W02-Login — valid credentials
 * W03-Login — invalid credentials
 * W04-Product search
 * W05-Add product to cart
 * W06-E2E checkout flow
 * W07-Remove product from cart
 * W08-Mandatory email validation
 * W09-Category navigation
 * W10-Template/Outline/Examples

# Tecnologias Utilizadas

- Robot Framework
- SeleniumLibrary
- FakerLibrary
- Python
- ChromeDriver
- VS Code 

# Estrutura do Projeto

projetoAutomacao
│
├── config
│   ├── exporters
│   │   ├── helpers.robot
│   │   ├── libraries.robot
│   │   ├── pageObjects.robot
│   │   └── stepsKeywords.robot
│   │
│   └── setup
│       └── driver.robot
│
├── Keywords_steps
│   ├── hooks
│   │   └── commonHooks.robot
│   │
│   ├── loginPageSteps.robot
│   ├── registerPageSteps.robot
│   ├── productSearchPageSteps.robot
│   ├── cartPageSteps.robot
│   └── checkoutPageSteps.robot
│
├── pageElements
│   ├── loginPage.robot
│   ├── registerPage.robot
│   ├── productSearchPage.robot
│   ├── cartPage.robot
│   └── checkoutPage.robot
│
├── resources
│   └── data
│       ├── loginData.robot
│       └── productData.robot
│
├── tests
│   ├── loginPageTest.robot
│   ├── registerPageTest.robot
│   ├── productSearchPageTest.robot
│   ├── cartPageTest.robot
│   └── checkoutPageTest.robot
│
├── results
│
├── README.md
└── requirements.txt


# Instalação
Clone o projeto:

git clone https://github.com/seu-usuario/projetoAutomacao.git

Acesse a pasta:
cd projetoAutomacao
Instale as dependências:

pip install -r requirements.txt

# Como Executar:  

Executar toda a suíte: 
* robot -d Results Tests/

Executar por tag:

* robot -d results -i loginPage tests/
* robot -d results -i cart tests/ 
* robot -d results -i checkout tests/ 
* robot -d results -i product tests/ 
* robot -d results -i registration tests/ 

# Relatórios

Após a execução são gerados automaticamente:

- report.html
- log.html
- output.xml

Localizados na pasta:
results/ 

![alt text](image-1.png)

