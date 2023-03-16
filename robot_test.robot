*** Settings ***
Library  Selenium2Library
#Suite Setup     Open Browser    ${URL}   ${BROWSER}
#Suite Teardown  Close All Browsers
Variables       myVariables.py
Library    Collections
*** Variables ***
${URL}              http://www.google.com
${BROWSER}          Safari
# Alternately https://accounts.lambdatest.com/profile you can also use xpath=//*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input
${search_form}      css=form[name=f]
${search_query}     css=input[name=q]
${search_term}      Lambdatest



*** Test Cases ***
Google Search
    ${value}=    Get From Dictionary    @{dizionario}    Cognome
    FOR    ${ele}    IN    @{dizionario}
        log to console    ${ele}[Cognome]
    END
    log to console    Pippo

*** Keywords ***
Get Dictionary Keys

Process orders
    FOR    ${ele}    IN    @{dizionario}
        log to console    ${ele}[Cognome]
