*** Settings ***
Documentation           Mapping of login page elements


*** Variables ***

&{LoginPage}
...     inputEmail=css:[data-qa="login-email"]
...     inputPassword=css:[data-qa="login-password"]
...     btnLogin=css:[data-qa="login-button"]
...     txtLogged=xpath://a[contains(.,'Benjamin')]
...     txtIncorrectLogin=xpath://p[normalize-space(.)='Your email or password is incorrect!']


