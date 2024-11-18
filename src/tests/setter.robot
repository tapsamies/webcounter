*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Value is set correctly
    Go To  ${HOME_URL}
    Input Text  name=setvalue  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

