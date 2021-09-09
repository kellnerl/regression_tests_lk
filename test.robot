*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${BROWSER} =  chrome

*** Test Cases ***
Basic test case
    Log   logging st 
  # Open Browser    http://www.amazon.com  ${BROWSER}
    Open Browser    https://adisspr.tst.ats/pmd/home  ${BROWSER}  options=add_argument("--ignore-certificate-errors")
  #  Open Browser  https://adisspr.mfcr.cz/pmd/home   ${BROWSER}   # ostry fcni 
    Sleep  35s 
    Close Browser

*** Keywords ***    


