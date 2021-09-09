*** Settings ***

#Library  SeleniumLibrary
Library  Browser  30s


*** Variables ***
#${BROWSER} =  chrome  # Selenium
${BROWSER} =  chromium  # Browser

*** Test Cases ***
Basic test case
    Log   logging st 
  #Open Browser    https://adisspr.tst.ats/pmd/home  ${BROWSER}  options=add_argument("--ignore-certificate-errors")   # fcni Selenium
  New Browser    chromium    headless=false  timeout=30s
    New Context  ignoreHTTPSErrors=true
    New Page     https://adisspr.tst.ats/pmd/home
   # Get Title      ==    Browser


  #Open Browser  https://adisspr.mfcr.cz/pmd/home   ${BROWSER}   # ostry fcni 
  #  Go to  https://adisspr.tst.ats/pmd/dis
    Click  \#app-list-0
  #  Click Button  name:Přihlásit se E-identitou.
    Sleep  5s 
    Close Browser

*** Keywords ***    


