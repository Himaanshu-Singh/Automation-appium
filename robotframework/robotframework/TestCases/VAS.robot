*** Settings ***
Library  AppiumLibrary

#Resource    ../Cases/Waitrefrence/waitrefrence3.robot

*** Variables ***
${default_wait_time}   20s
${implicit_wait_time}    20s
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

${hamburger}                //android.view.ViewGroup[@content-desc="Hamburger_Icon"]/android.view.ViewGroup/com.horcrux.svg.SvgView
${vas}                      //android.view.ViewGroup[@content-desc="Value Added Services"]
${imt}                        //android.view.ViewGroup[@content-desc="International Money Transfer"]
${sba}                      //android.view.ViewGroup[@content-desc="Student Bank Account"]
${sft}                        //android.view.ViewGroup[@content-desc="Student Flight Ticket"]
${ap}                        //android.view.ViewGroup[@content-desc="Airport Pickup"]
${ls}                        //android.view.ViewGroup[@content-desc="Luggage Storage"]
${rr}                        //android.view.ViewGroup[@content-desc="Room Replacement"]
${re}                        //android.view.ViewGroup[@content-desc="Room Essentials"]
${ta}                        //android.view.ViewGroup[@content-desc="Travel Insurance"]
${forex}                     //android.view.ViewGroup[@content-desc="Forex"]
${isim}                        //android.view.ViewGroup[@content-desc="International SIM"]
${gurantor}                    //android.view.ViewGroup[@content-desc="Guarantor"]
${sf}                        //android.view.ViewGroup[@content-desc="Student Financing"]
${js}                        //android.view.ViewGroup[@content-desc="Job Search"]
${va}                        //android.view.ViewGroup[@content-desc="Visa Assistance"]

${back}                      //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]

#########International MOney Transfer##########
${currency_edit}                //android.widget.EditText[@text="500"]
${edit_type_curr}               //android.widget.TextView[@text="GBP"]
${usd}                            //android.view.ViewGroup[@content-desc="US DOllar, USD"]
${edit_type_curr2}             //android.widget.TextView[@text="INR"]
${argetina}                        //android.view.ViewGroup[@content-desc="Argentina, ARS"]
${send_btn}                        //android.view.ViewGroup[@content-desc="Send Now"]/android.view.ViewGroup
${first_name}                    xpath=(//android.widget.EditText[@text="Test"])[1]
${last_name}                     xpath=(//android.widget.EditText[@text="Test"])[2]
${phone_no}                        //android.widget.EditText[@text="8525555555"]
${form_nationnality}                //android.view.ViewGroup[@content-desc="🇮🇳"]
${srch_bar}                            //android.widget.EditText[@resource-id="text-input-country-filter"]
${nationality_ind}                    //android.view.VcuiewGroup[@content-desc="🇮🇳, India (+91)"]
${submit}                            //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup
${go_to_home}                            //android.widget.TextView[@text="Go To Home"]




${later}                 //android.view.ViewGroup[@content-desc="Skip_Button"]

########### SBA ###########
${sba_open}    //android.view.ViewGroup[@content-desc="Open"]/android.view.ViewGroup
${submit}      //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup

############# SFT  ###########

${to}    //android.view.ViewGroup[@content-desc="TO, -----, Select your destination airport"]
${selct_airport}    //android.view.ViewGroup[@content-desc="Dublin, Ireland, Dublin, DUB"]
${search_flights}    //android.view.ViewGroup[@content-desc="Search Flights"]/android.view.ViewGroup
${flight_form_submit}        //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup
${google_signin_close}    //android.widget.ImageButton[@content-desc="Close"]
########  AP   ####
${find_pickup}    //android.view.ViewGroup[@content-desc="Find a Pickup"]/android.view.ViewGroup

###########  LS  ######
${Book_now}        //android.view.ViewGroup[@content-desc="Book Now"]/android.view.ViewGroup

############  Forex #########
${forex_submit}    //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup
${f_submit}   //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup
########### Guarantor   ##########

${find_guarantor}    //android.view.ViewGroup[@content-desc="Find A Guarantor"]/android.view.ViewGroup

######### Student Financing  ##############

${sf_submit}    //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup

##########  Job Search ########

${find_my_job}     //android.view.ViewGroup[@content-desc="Find My Job"]/android.view.ViewGroup

##########  Visa Assistance  ##########

${get_visa}         //android.view.ViewGroup[@content-desc="Get Visa"]/android.view.ViewGroup











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

GET 
    ${result}=   get

Press Back Button
    Press Key Code  4


    

*** Test Cases ***
Test Case Value Added Services - Login
    Open Application    http://localhost:4723/wd/hub     platformName=Android    deviceName='10.6.11.120:5555'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2
    Custom wait And Click    ${Notificaton_permission_allow_button}
    Custom Wait And Click    ${use_oher_email_cta}
    Capture SS    ${filename} + login.png
    Custom Wait And Input Text    ${email_field}    pravin.garg@universityliving.com
    Custom wait And Click    ${send_otp_btn}    
    Custom Wait And Input Text    ${OTP_1}    1
    Custom Wait And Input Text    ${OTP_2}    2
    Custom Wait And Input Text    ${OTP_3}    3
    Custom Wait And Input Text    ${OTP_4}    4
    Custom Wait And Input Text    ${OTP_5}    5 
    Custom Wait And Click         ${city_1}
    Custom Wait And Click        ${popular_university_1}
    Custom Wait And Click        ${campus_1}
    Custom Wait And Click        ${continue} 
    Custom Wait And Click        ${later}
    
Drawer ---> International Money Transfer
    Custom Wait And Click        ${hamburger}
    Custom Wait And Click        ${vas}
    Custom Wait And Click        ${imt}
    Custom Wait And Click        ${edit_type_curr}
    Custom Wait And Click        ${usd}
    Custom Wait And Input Text   ${currency_edit}    0
    Custom Wait And Click        ${edit_type_curr2}
    Custom Wait And Click        ${argetina}
    Sleep        10s
    Custom Wait And Click        ${send_btn}
    Custom Wait And Click        ${submit}
    Custom Wait And Click        ${go_to_home}

Drawer ---> Student Flight Ticket
    Custom Wait And Click    ${hamburger}
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${sft}
    Custom Wait And Click    ${to}
    Custom Wait And Click     ${selct_airport}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=2000
    Custom Wait And Click    ${search_flights}
    Custom Wait And Click    ${flight_form_submit}
    Sleep     5s
    Swipe    0    240    460    260     3000
    Custom Wait And Click    ${back}

Drawer ---> Airport Pickup
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${ap}
    Custom Wait And Click    ${find_pickup}
    Custom Wait And Click    ${submit}
    Sleep     5s
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${back}

Drawer ---> Student Bank Account
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${sba}
    Custom Wait And Click    ${sba_open}
    Custom Wait And Click    ${submit}
    Sleep     5s
    Swipe    0    340    460    560     3000
    Custom Wait And Click    ${back}

Drawer ---> Luggage Storage
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${ls}
    Custom Wait And Click    ${Book_now}
    Custom Wait And Click    ${submit}
    Sleep     5s
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${back}

Drawer ---> Forex
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${forex}
    Custom Wait And Click    ${forex_submit}
    Custom Wait And Click       ${f_submit}
    Custom Wait And Click     ${go_to_home}

Drawer ---> Guarrantor
    Custom Wait And Click    ${hamburger}
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${gurantor}
    Custom Wait And Click    ${find_guarantor}
    Custom Wait And Click    ${submit}
    Sleep     5s
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${back}

Drawer ---> Visa Assistance
    Custom Wait And Click      ${vas}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=2000
    Custom Wait And Click      ${va}
    Custom Wait And Click      ${get_visa}
    Custom Wait And Click    ${submit}
    Custom Wait And Click    ${go_to_home}
    Sleep    10s


Drawer ---> Student Financing
    Custom Wait And Click    ${hamburger}
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${sf}
    Custom Wait And Click    ${sf_submit}
    Custom Wait And Click    ${submit}
    Sleep     5s
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${back}

Drawer ---> International SIM
    Custom Wait And Click     ${vas}
    Custom Wait And Click      ${isim}
    Sleep     5s
    Swipe    0    340    460    460     3000

Drawer ---> Room Essentials
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${re}
    Sleep     5s
    Swipe    0    340    460    460     3000

Drawer ---> Job Search
    Custom Wait And Click    ${vas}
    Custom Wait And Click    ${js}
    Custom Wait And Click    ${find_my_job}
    Sleep     5s
    Swipe    0    340    460    460     3000
    Custom Wait And Click     ${back}

    Custom Wait And Click    ${back}