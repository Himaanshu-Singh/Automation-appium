*** Settings ***
Library    AppiumLibrary
Library    Easter
Resource    EnquireNow.robot

*** Variables ***
${default_wait_time}    20s
${implicit_wait_time}   20s
${Notificaton_permission_allow_button}      com.android.permissioncontroller:id/permission_allow_button
${use_oher_email_cta}                        //android.view.ViewGroup[@content-desc='Other_email_signIn']
${email_field}                                //android.widget.EditText[@content-desc='Email']
${send_otp_btn}                                //android.view.ViewGroup[@content-desc='OTP_Button']
${OTP_1}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[1]
${OTP_2}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[2]
${OTP_3}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[3]
${OTP_4}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[4]
${OTP_5}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[5]
${verify_email}                                xpath = //android.view.ViewGroup[@content-desc="Verify_Button"]
${modal_try_again}                            xpath = //android.view.ViewGroup[@content-desc="Try again"]
${country_uk}                                    xpath = //android.view.ViewGroup[@content-desc="Country_1"]
${country_aus}                                    xpath = //android.view.ViewGroup[@content-desc="Country_2"]
${country_ire}                                    xpath = //android.view.ViewGroup[@content-desc="Country_3"]
${country_can}                                    xpath = //android.view.ViewGroup[@content-desc="Country_4"]
${country_us}                                    xpath = //android.view.ViewGroup[@content-desc="Country_5"]
${filename}                                       C://Users//TUL//Desktop//robo//Robotframework_Appium//robotframework//snapshots//

*** Keywords ***
Custom Wait And Click
    [Arguments]    ${locator}


    Wait Until Element Is Visible    ${locator}    timeout=${default_wait_time}
    Click Element    ${locator}

Custom Wait And Input Text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    timeout=${default_wait_time}
    Input Text    ${locator}    ${text}

Capture SS 
    [Arguments]     ${filename}
    Capture Page Screenshot    ${filename}

*** Test Cases ***
Test Case 1 - Login with EMAIL
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName='75sk5dl7kzay75on'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2


    Custom Wait And Click    ${use_oher_email_cta}
    Capture SS    ${filename} + login.png
    Custom Wait And Input Text    ${email_field}    pravin.garg@universityliving.com
    Custom wait And Click    ${send_otp_btn}    
    Custom Wait And Input Text    ${OTP_1}    1
    Custom Wait And Input Text    ${OTP_2}    2
    Custom Wait And Input Text    ${OTP_3}    3
    Custom Wait And Input Text    ${OTP_4}    4
    Custom Wait And Input Text    ${OTP_5}    5 
    
    
    TRY
        Custom Wait And Click    ${modal_try_again}
    EXCEPT
        Custom Wait And Click    ${country_uk}
    END

    Capture SS    ${filename} + test.png

    Custom wait And Click    ${country_aus}
    Custom Wait And Click    ${country_ire}
    Custom Wait And Click    ${country_can}
    Custom wait And Click    ${country_us}

    Close Application

