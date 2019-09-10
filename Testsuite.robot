*** settings ***
library  SeleniumLibrary
Test Timeout    5 minutes

*** variables ***
${Browser}   Chrome
${URL}  https://hireajackal-v2-stage-pr-16.herokuapp.com/app/login

*** test cases ***
TC_01_logintest
      SeleniumLibrary.Open Browser  ${URL}  ${Browser}
      maximize Browser window
      Input Text  id:mat-input-0  priya.dulam@hireajackal.com
      Click Element  class:login__btn--continue
    #  Input Text  class:mat-form-field-label-wrapper
    #  ${condition} =     Run keyword And Return Status    Wait Until Page Contains Element    ${locator}    timeout=5   error=false
      Set selenium implicit wait  10
      Input Password  id:mat-input-2    password
      Click Element  class:login__btn--continue


