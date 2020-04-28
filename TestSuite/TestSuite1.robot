***Settings ***
Library   SeleniumLibrary

#Suite Setup       Log    I am inside Test Suite setup

#Suite Teardown    Log     I am inside Test Suite teardown

#Test Setup       Log    I am inside Test  setup
#Test Teardown    Log    I am inside Test  teardowns

*** Test Cases ***
MyFirstTest
        [Tags]    smoke    
        Log   hello World  
        Set Tags   regression1 


FirstSeleniumTest
    Open Browser   https://www.google.com/    chrome
    Input Text     name = q              Automation
   Close Browser
   



SampleLoginTest
    [Documentation]             This is login
    Open Browser                ${URL}     chrome
   Set Browser Implicit Wait    5
   # Will replace Input Text with Keyword exampled below.We can run it directly also,
    # But will run with keyword
   Input Text          id=txtUsername       admin
    # Input Text          id=txtUsername      @{CREDENTIALS}[0]
    Input Text           id=txtPassword       admin123
     #  Input Text           id=txtpassword     &{LOGINDATA}[password] 
    Click Button              id=btnLogin   
   # LoginKW
    Click Element            id=welcome   
    Click Element             link =Logout
   Close Browser
    
    Log                 Test Completed
  #  Log             This test was executed by %{username} on  %{os}
    


*** Variables ***

${URL}              https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}       Admin             admin123
&{LOGINDATA}         username =Admin    password =Admin123




*** Keywords ***
LoginKW
    
    Input Text          id=txtUsername      @{CREDENTIALS}[0]
    Input Text           id=txtpassword     &{LOGINDATA}[password] 
    Click Button          id=btnLogin 
  
