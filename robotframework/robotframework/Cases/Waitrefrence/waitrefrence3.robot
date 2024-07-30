*** Settings ***
Library    AppiumLibrary

*** Variables ***
${default_wait_time}    10s
${implicit_wait_time}   10s
${Notificaton_permission_allow_button}      com.android.permissioncontroller:id/permission_allow_button
${Walkthroughscreen1_Next_Button}           //android.widget.TextView[@text="Next"]
${Walkthroughscreen2_Next_Button}           //android.widget.TextView[@text="Next"]
${Walkthroughscreen3_Next_Button}           //android.widget.TextView[@text="Next"]
${Walkthroughscreen_login/signup}           //android.widget.TextView[@text="Login/Sign Up"]
####### Login #############
${Login_email}                                //android.widget.EditText
${Login_BUTTON}         //android.view.ViewGroup[@content-desc="Login"]
${OTP_1}          //android.widget.EditText[@content-desc="otpInput-0"]
${OTP_2}          //android.widget.EditText[@content-desc="otpInput-1"]
${OTP_3}          //android.widget.EditText[@content-desc="otpInput-2"]
${OTP_4}          //android.widget.EditText[@content-desc="otpInput-3"]
${OTP_5}          //android.widget.EditText[@content-desc="otpInput-4"]
${USP_SCREEN}              //android.widget.EditText[@text="Discover city, university, property"]
${Countrypage_UK}             //android.widget.TextView[@text="UK"]
${Citypage_London}           //android.widget.TextView[@text="London"]
${London_Homepage}      //android.widget.TextView[@text="London, UK"]
*** Settings ***
Library  AppiumLibrary
Library    Easter


*** Variables ***
${default_wait_time}   20s
${implicit_wait_time}    20s
${Walkthroughscreen1_Next_Button}           //android.widget.TextView[@text="Next"]
${Walkthroughscreen2_Next_Button}           //android.widget.TextView[@text="Next"]
${Walkthroughscreen3_Next_Button}           //android.widget.TextView[@text="Next"]
${Walkthroughscreen_login/signup}           //android.widget.TextView[@text="Login/Sign Up"]
${Notificaton_permission_allow_button}      com.android.permissioncontroller:id/permission_allow_button
${use_oher_email_cta}                        //android.view.ViewGroup[@content-desc='Other_email_signIn']
${email_field}                                //android.widget.EditText[@content-desc='Email']
${send_otp_btn}                                //android.view.ViewGroup[@content-desc='OTP_Button']


###### Login ######

${Login_email}                                //android.widget.EditText
${Login_BUTTON}         //android.view.ViewGroup[@content-desc="Login"]
${OTP_1}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[1]
${OTP_2}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[2]
${OTP_3}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[3]
${OTP_4}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[4]
${OTP_5}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[5]
${USP_SCREEN}              //android.widget.EditText[@text="Discover city, university, property"]
${USP_SCREEN}              //android.widget.EditText[@text="Discover city, university, property"]
${Countrypage_UK}             //android.widget.TextView[@text="UK"]
${Citypage_London}           //android.widget.TextView[@text="London"]
${London_Homepage}      //android.widget.TextView[@text="London, UK"]
${LoggedIn_email}        //android.widget.TextView[@text="pravin.garg@universityliving.com"]
${search_icon_header}        (//android.view.ViewGroup)[24]
${bell_icon_header}            //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/com.horcrux.svg.SvgView
${close_icon_city_name}       (//android.widget.TextView)[1]
${city_name_below_logo}        (//android.widget.TextView)[1]
${city_seachbar_input_field}    //android.widget.EditText
${filename}                                  C://Users//TUL//Desktop//robo//Robotframework_Appium//robotframework//snapshots//

###########Campus#########
 
${city_1}                    //android.view.ViewGroup[@content-desc="City_1"]
${popular_university_1}      //android.view.ViewGroup[@content-desc="Popular_University_1"]
${campus_1}                  //android.view.ViewGroup[@content-desc="Campus_1"]
${continue}                  //android.view.ViewGroup[@content-desc="Button"]
${personalize_my_journey}    //android.view.ViewGroup[@content-desc="Button"]
${year_2025}                 //android.view.ViewGroup[@content-desc="2025"]
${year_2024}                 //android.view.ViewGroup[@content-desc="2024"]
${month_may}                //android.view.ViewGroup[@content-desc="Month_May"]
${btn_52w}                    //android.view.ViewGroup[@content-desc="Button_52 Weeks"]
${visa_reci}                 //android.view.ViewGroup[@content-desc="Button_Received"]

#######HomePage##############

${search_icn}            //android.view.ViewGroup[@content-desc="Search_Icon"]/android.view.ViewGroup/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${search_bar}            //android.widget.EditText[@content-desc="Search_Bar"]
${test_dev}              //android.view.ViewGroup[@content-desc="Property_1"]
${select_room}           //android.view.ViewGroup[@content-desc="Select_Room_Button"]
${enquire}                xpath = (//android.view.ViewGroup[@content-desc="Enquire"])[1]
${first_name}              //android.widget.EditText[@content-desc="First_Name"]
${last_name}                //android.widget.EditText[@content-desc="Last_Name"]
${dob}                        //android.view.ViewGroup[@content-desc="Date of Birth*"]
${date_19}                    //android.widget.TextView[@text="19"]
${done}                        //android.view.ViewGroup[@content-desc="Done"]
${destination_uni}            //android.view.ViewGroup[@content-desc="Destination University*"]/android.view.ViewGroup/android.widget.TextView[2]
${first_uni}                    //android.view.ViewGroup[@content-desc="Other_Uni_1"]/android.view.ViewGroup
${visa_status}                //android.view.ViewGroup[@content-desc="Visa Status*"]/android.view.ViewGroup/android.widget.TextView[2]
${platfrom}                //android.view.ViewGroup[@content-desc="Best Platform to reach"]/android.view.ViewGroup
${received}                //android.widget.TextView[@text="Received"]
${phone_call}                //android.widget.TextView[@text="Phone Call"]
${message}                //android.widget.EditText[@content-desc="Message_Input_Field"]
${view_property}             //android.widget.TextView[@text="VIEW PROPERTY INFO"]
${view_property_back}            //android.widget.TextView[@text="Send your enquiry about Test (Dev Purpose)"]
${submit}                            //android.view.ViewGroup[@content-desc="Submit"]
${succes_check}                    //android.widget.TextView[@text="Yay! Congratulations!"]
${go_to_home}                    //android.widget.TextView[@text="Go to Home"]



*** Keywords ***
Custom Wait And Click
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${default_wait_time}
    Click Element    ${locator}

Custom Wait And Input Text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    timeout=${default_wait_time}
    Input Text    ${locator}    ${text}

*** Test Cases ***
Test Case 1
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName='emulator-5554'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2

    # Your concise test steps using the custom wait and action keywords
    Custom Wait And Click    ${Notificaton_permission_allow_button}
    Custom Wait And Click    ${Walkthroughscreen1_Next_Button}
    Custom Wait And Click    ${Walkthroughscreen2_Next_Button}
    Custom Wait And Click    ${Walkthroughscreen3_Next_Button}
    Custom Wait And Click    ${Walkthroughscreen_login/signup}
    Custom Wait And Input Text    ${Login_email}    pravin.garg@universityliving.com
    Custom Wait And Click    ${Login_BUTTON}
    Custom Wait And Input Text    ${OTP_1}    1
    Custom Wait And Input Text    ${OTP_2}    2
    Custom Wait And Input Text    ${OTP_3}    3
    Custom Wait And Input Text    ${OTP_4}    4
    Custom Wait And Input Text    ${OTP_5}    5
    Custom Wait And Click    ${USP_SCREEN}
    Custom Wait And Click    ${Countrypage_UK}
    Custom Wait And Click    ${Citypage_London}
    Wait Until Page Contains Element    ${London_Homepage}
