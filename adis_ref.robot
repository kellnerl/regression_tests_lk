*** Settings ***

Library  Browser
Library  Dialogs


*** Variables ***
${BROWSER} =   chrome

*** Test Cases ***
Basic test case
    Log   logging st 
   # Log Variables
  #  Open Browser    https://adisspr.ref.ats/pmd/home  ${BROWSER}
     Open Browser    http://www.idnes.cz  ${BROWSER}
     Click
    Sleep  20s 
    Execute Manual Step    Do st   IT failed
    Pause Execution   test passed  
    Close Browser

*** Keywords ***    