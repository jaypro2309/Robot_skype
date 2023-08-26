*** Settings ***
Library     AppiumLibrary
Resource    elements.robot
Resource    data.robot
Library     String

*** Keywords ***
open the application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=b997ea31    appPackage=com.skype.raider   appActivity=com.skype4life.MainActivity

continue till the email address
    Wait Until Element Is Visible    ${start_button}
    Click Element    ${start_button}
    Wait Until Element Is Visible    ${signin}
    Click Element    ${signin}
    
enter email
    [Arguments]     ${email_address}
    Wait Until Element Is Visible    ${e_email}
    Input Text    ${e_email}     ${email_address}
    Click Element    ${next_button}

get OTP on gmail
    TRY
        Wait Until Element Is Visible    ${click_send}
        Click Element    ${click_send}

    EXCEPT
#    Background App
        Start Activity    appPackage=com.google.android.gm      appActivity=com.google.android.gm.ConversationListActivityGmail
        Wait Until Element Is Visible    ${open_email}
        Click Element    ${open_email}
    END


copy code and paste
    Wait Until Element Is Visible    ${copy_otp_line}
    ${text}=    Get Text    ${copy_otp_line}
    ${text_list}=    Split String    ${text}[1]    :
#    Switch Application    appPackage=com.skype.raider
    Activate Application    com.skype.raider
    Hide Keyboard
    Wait Until Element Is Visible    ${enter_otp}
    Input Text    ${enter_otp}    ${text_list}
    Click Element    ${submit_otp}

after the otp submit
    Wait Until Element Is Visible    ${continue&finish}
    Click Element    ${continue&finish}
    Wait Until Element Is Visible    ${allow_c}
    Click Element    ${allow_c}

final steps
    TRY
         Wait Until Element Is Visible    ${continue&finish}
    EXCEPT
        FOR    ${i}    IN RANGE   2
             Click Element    ${allow_c}
        END
    END




    