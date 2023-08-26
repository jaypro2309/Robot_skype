*** Settings ***
Library     AppiumLibrary
Resource    ../Elem/create_steps.robot

*** Test Cases ***
Test_case_1
    open the application
    continue till the email address
    enter email    ${email_address}
    get OTP on gmail
    copy code and paste
    after the otp submit
    final steps