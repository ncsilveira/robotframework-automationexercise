*** Keywords ***
Set local chrome options
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method   ${chrome_options}    add_argument    incognito
    Create Webdriver    Chrome  options=${chrome_options}  
    Set Window Size    1920    1080