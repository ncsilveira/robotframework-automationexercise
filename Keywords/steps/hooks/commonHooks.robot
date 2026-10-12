
*** Settings ***
Resource  ${EXECDIR}/config/setup/driver.robot

*** Keywords ***
Open browser
  Set local chrome options
  Go To    https://automationexercise.com
  
 
Close Session
  Close browser 



Remove Google Ads
    FOR    ${i}    IN RANGE    5

        ${url}=    Get Location

          IF    'google_vignette' in '${url}'

              Log To Console
              ...    Google Vignette detectado na URL             

              Sleep    1s

          END

        ${count}=    Execute JavaScript
        ...    return document.querySelectorAll(
        ...    '#google_vignette, .google-anno, .google-anno-skip, .google-auto-placed, iframe[id^="aswift_"], [id^="aswift_"][id$="_host"], ins.adsbygoogle'
        ...    ).length;

        Exit For Loop If    ${count} == 0

        Execute JavaScript
        ...    document.querySelectorAll(
        ...    '#google_vignette, .google-anno, .google-anno-skip, .google-auto-placed, iframe[id^="aswift_"], [id^="aswift_"][id$="_host"], ins.adsbygoogle'
        ...    ).forEach(e => e.remove());

        Sleep    500ms

    END

Scroll Down
  [Arguments]   ${pixels}=1000

  Execute JavaScript    window.scrollBy(0,${pixels})
  Sleep     3s


    
Ensure Page Is Not Hijacked


  [Arguments]    ${expected_url}=${EMPTY}

    ${url}=    Get Location

    IF    'google_vignette' in '${url}'

        Log To Console
        ...    Recovering from Google Vignette

        IF    '${expected_url}' != '${EMPTY}'

            Go To    ${expected_url}

        END

    END  

