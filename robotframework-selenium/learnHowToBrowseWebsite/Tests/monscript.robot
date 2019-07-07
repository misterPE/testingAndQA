*** Settings ***
Documentation  Present some information about this test suite
Library  SeleniumLibrary

*** Variables ***
${Browser}  ie

*** Test Cases ***
Guest must sign in to check out
    [Documentation]  Present some information about this test case
    [Tags]  Smoke
    open browser    http://www.amazon.com   ie
    sleep  3sec
    input text  id=twotabsearchtextbox  rameur concept2
    click button  css=.nav-search-submit > input:nth-child(2)
    sleep  3sec
    close browser