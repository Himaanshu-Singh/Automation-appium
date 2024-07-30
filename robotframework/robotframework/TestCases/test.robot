*** Settings ***
Library  AppiumLibrary
Library    Easter
Resource    ../Cases/Waitrefrence/waitrefrence3.robot

*** Variables ***
${default_wait_time}   20s
${no}    xpath=//android.widget.Button[@resource-id="android:id/button3"]
${up_arrow}    xpath=//android.widget.Button[@text="keyboard_arrow_up"]
${down_arrow}    //android.widget.Button[@text="keyboard_arrow_down"]



${default_wait_time}   30s
${implicit_wait_time}    30s

${notification_allow_btn}                 //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${other_email}                            //android.view.ViewGroup[@content-desc='Other_email_signIn']
${email_field}                            //android.widget.EditText[@content-desc='Email']
${send_otp_btn}                           //android.view.ViewGroup[@content-desc='OTP_Button']
${Login_email}                                //android.widget.EditText
${Login_BUTTON}         //android.view.ViewGroup[@content-desc="Login"]
${OTP_1}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[1]
${OTP_2}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[2]
${OTP_3}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[3]
${OTP_4}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[4]
${OTP_5}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[5]
${city_london}                            //android.view.ViewGroup[@content-desc="City_1"]
${continue}                               //android.view.ViewGroup[@content-desc="Button"]
${later}                                  //android.view.ViewGroup[@content-desc="Skip_Button"]
${hamburger_menu}                    //android.view.ViewGroup[@content-desc="Hamburger_Icon"]/android.view.ViewGroup/com.horcrux.svg.SvgView
${ham_back}                        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.view.ViewGroup

################################### COLC ##############################################

${colc}                        //android.view.ViewGroup[@content-desc="Cost of Living Calculator"]
${colc_b}             //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView[1]
${colc_back}          //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]
${cyc}                //android.view.ViewGroup[@content-desc="Calculate Your Cost"]
${colc_search}        //android.view.ViewGroup[@content-desc="Search City or University"]/android.view.ViewGroup
${colc_search_cross}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView


${clc_uk}    //android.view.ViewGroup[@content-desc="UK"]
${clc_uk1}    //android.view.ViewGroup[@content-desc="King's College London (KCL), London"]
${clc_uk2}     //android.view.ViewGroup[@content-desc="Birmingham City University (BCU), Birmingham"]
${clc_uk3}     //android.view.ViewGroup[@content-desc="Coventry University, Coventry"]


${clc_Australia}        //android.view.ViewGroup[@content-desc="Australia"]
${clc_a1}        //android.view.ViewGroup[@content-desc="The University of Melbourne, Melbourne"]
${clc_a2}    //android.view.ViewGroup[@content-desc="The University of Sydney, Sydney"]
${clc_a3}    //android.view.ViewGroup[@content-desc="University of Queensland (UQ), Brisbane"]


${clc_ire}    //android.view.ViewGroup[@content-desc="Ireland"]
${clc_ire1}    //android.view.ViewGroup[@content-desc="University College Dublin, Dublin"]
${clc_ire2}    //android.view.ViewGroup[@content-desc="ATU Galway City, Galway"]
${clc_ire3}    //android.view.ViewGroup[@content-desc="Griffith College Cork, Cork"]


${colc_canada}    //android.view.ViewGroup[@content-desc="Canada"]
${clc_can1}    //android.view.ViewGroup[@content-desc="University of Montreal, Montreal"]
${clc_can2}    //android.view.ViewGroup[@content-desc="University of Toronto, Toronto"]
${clc_can3}    //android.view.ViewGroup[@content-desc="University of Ottawa, Ottawa"]

${colc_US}    //android.view.ViewGroup[@content-desc="US"]
${colc_us1}    //android.view.ViewGroup[@content-desc="New York University, New York"]
${colc_us2}    //android.view.ViewGroup[@content-desc="Boston University, Boston"]
${colc_us3}    //android.view.ViewGroup[@content-desc="University of California, Davis, Davis"]

${next-housing}            //android.view.ViewGroup[@content-desc="Next - Housing"]
${next-housing-back}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup[1]


${within_city_centre}    //android.widget.TextView[@text="Within City Centre"]
${within_suburbs}        //android.widget.TextView[@text="Within Suburbs"]
${student_housing}        //android.widget.TextView[@text="Student Housing"]
${private_aparment}        //android.widget.TextView[@text="Student Housing"]
${sh_readmore}            xpath=(//android.widget.TextView[@text="Know more"])[1]
${pa_readmore}            xpath=(//android.widget.TextView[@text="Know more"])[2]
${next-food}                //android.view.ViewGroup[@content-desc="Next - Food"]
${next-food-back}            //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup[4]


${once_evry_week}            //android.view.ViewGroup[@content-desc="Once every Week"]
${twice_ew}                    //android.view.ViewGroup[@content-desc="Thrice every Week"]
${almost_ew}                    //android.view.ViewGroup[@content-desc="Almost all Week"]

${cheap}                    //android.view.ViewGroup[@content-desc="Cheap - $"]
${moderate}                    //android.view.ViewGroup[@content-desc="Moderate - $$"]
${expensive}                //android.view.ViewGroup[@content-desc="Expensive - $$$"]
${next-transportation}        //android.view.ViewGroup[@content-desc="Next - Transportation"]
${next-transportation-back}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup[4]
${colc_conversation}             //android.view.ViewGroup[@content-desc="INR, ₹1,04,330"]
${austria}                        //android.view.ViewGroup[@content-desc="Austria, Euro"]

${walking_n}                        xpath=(//android.view.ViewGroup[@content-desc="None"])[1]
${walking_rarely}                   xpath=(//android.view.ViewGroup[@content-desc="Rarely"])[1]
${walking_sometimes}                xpath=(//android.view.ViewGroup[@content-desc="Sometimes"])[1]
${walking_often}                    xpath=(//android.view.ViewGroup[@content-desc="Often"])[1]

${bicycle_n}                     xpath=(//android.view.ViewGroup[@content-desc="None"])[2]
${bicycle_rarely}                xpath=(//android.view.ViewGroup[@content-desc="Rarely"])[2]
${bicycle_sometimes}             xpath=(//android.view.ViewGroup[@content-desc="Sometimes"])[2]
${bicycle_often}                 xpath=(//android.view.ViewGroup[@content-desc="Often"])[2]

${transport_n}                     xpath=(//android.view.ViewGroup[@content-desc="None"])[3]
${transport_rarely}                xpath=(//android.view.ViewGroup[@content-desc="Rarely"])[3]
${transport_sometimes}             xpath=(//android.view.ViewGroup[@content-desc="Sometimes"])[3]
${transport_often}                 xpath=(//android.view.ViewGroup[@content-desc="Often"])[3]

${uber_n}                             xpath=(//android.view.ViewGroup[@content-desc="None"])[4]
${uber_rarely}                        xpath=(//android.view.ViewGroup[@content-desc="Rarely"])[4]
${uber_sometimes}                     xpath=(//android.view.ViewGroup[@content-desc="Sometimes"])[4]
${uber_often}                         xpath=(//android.view.ViewGroup[@content-desc="Often"])[4]
${next-daily_miscellaneous}            //android.view.ViewGroup[@content-desc="Next - Daily Miscellaneous"]
${next-daily_miscellaneous_back}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup[4]

${ent_n}                             xpath=(//android.view.ViewGroup[@content-desc="None"])[1]
${ent_rarely}                        xpath=(//android.view.ViewGroup[@content-desc="Moderate"])[1]
${ent_sometimes}                     xpath=(//android.view.ViewGroup[@content-desc="Economical"])[1]
${ent_often}                         xpath=(//android.view.ViewGroup[@content-desc="Expensive"])[1]

${cloth_n}                             xpath=(//android.view.ViewGroup[@content-desc="None"])[2]
${cloth_rarely}                        xpath=(//android.view.ViewGroup[@content-desc="Moderate"])[2]
${cloth_sometimes}                     xpath=(//android.view.ViewGroup[@content-desc="Economical"])[2]
${cloth_often}                         xpath=(//android.view.ViewGroup[@content-desc="Expensive"])[2]

${mp_n}                             xpath=(//android.view.ViewGroup[@content-desc="None"])[3]
${mp_rarely}                        xpath=(//android.view.ViewGroup[@content-desc="Moderate"])[3]
${mp_sometimes}                     xpath=(//android.view.ViewGroup[@content-desc="Economical"])[3]
${mp_often}                         xpath=(//android.view.ViewGroup[@content-desc="Expensive"])[3]

${fit_n}                             xpath=(//android.view.ViewGroup[@content-desc="None"])[4]
${fit_rarely}                        xpath=(//android.view.ViewGroup[@content-desc="Moderate"])[4]
${fir_sometimes}                     xpath=(//android.view.ViewGroup[@content-desc="Economical"])[4]
${fit_often}                         xpath=(//android.view.ViewGroup[@content-desc="Expensive"])[4]
${next-total_cost}                    //android.view.ViewGroup[@content-desc="Next - Total Cost"]
#${next-total_cost_back}                  //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup[4]

${colc_start_again}                    //android.view.ViewGroup[@content-desc="Start Again"]
${colc_download}                        //android.view.ViewGroup[@content-desc="Download"]
${colc_share_wa}                        //android.view.ViewGroup[@content-desc="Share on WhatsApp"]


${topbar_n1}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]
${topbar_n2}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]
${topbar_n3}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]
${topbar_n4}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]
${topbar_n5}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[5]
${topbar_n6}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[6]

${colc_viewall}            xpath=(//android.widget.TextView[@text="View All"])[1]


${colc_wa_fname}        //android.widget.EditText[@text="Test"]
${colc_wa_lname}        //android.widget.EditText[@text="Test"]
${colc_wa_email}            //android.widget.EditText[@text="pravin.garg@universityliving.com"]
${colc_flag}                //android.view.ViewGroup[@content-desc="🇮🇳"]
${colc_af}                //android.view.ViewGroup[@content-desc="🇦🇫, Afghanistan (+93)"]
${colc_wa_phone}        //android.widget.EditText[@text="5468735886"]
${colc_submit}        //android.view.ViewGroup[@content-desc="Submit"]

${viewall_back}            //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView[1]

${cyc}            //android.view.ViewGroup[@content-desc="Calculate Your Cost"]
${clc_search}    //android.view.ViewGroup[@content-desc="Search City or University"]/android.view.ViewGroup

${mybooking}        //android.view.ViewGroup[@content-desc="My Bookings"]
${myvoucher}        //android.view.ViewGroup[@content-desc="My Vouchers"]
${favourites}        //android.view.ViewGroup[@content-desc="Favourites"]
${home}                //android.view.ViewGroup[@content-desc="Home"]
${find_my_kinda_room}    //android.view.ViewGroup[@content-desc="Find My Kinda Room"]
${colc}                    //android.view.ViewGroup[@content-desc="Cost of Living Calculator"]
${faq}                    //android.view.ViewGroup[@content-desc="FAQs"]
${refer&earn}            //android.view.ViewGroup[@content-desc="Refer & Earn"]
${privacyPolicy}        //android.view.ViewGroup[@content-desc="Privacy Policy"]
${terms_and_conditions}        //android.view.ViewGroup[@content-desc="Terms and Conditions"]
${share_the_app}            //android.view.ViewGroup[@content-desc="Share the app"]
${about_ul}                //android.view.ViewGroup[@content-desc="About University Living"]

${sign_in_google}                //android.view.ViewGroup[@content-desc="Google_Sign_In"]
${oher_email}                    //android.view.ViewGroup[@content-desc="Other_email_signIn"]
${term&Cond}                     //android.widget.TextView[@text="Terms & Conditions"]
${PrivacyPolicy}                 //android.widget.TextView[@text=" Privacy Policy"]
${email_field}                   //android.widget.EditText[@content-desc='Email']
${email_back_btn}                xpath=//com.horcrux.svg.GroupView/com.horcrux.svg.PathView[1]
${edit_email}                    //android.widget.TextView[@text=" Edit"]
${send_otp_btn}                  //android.view.ViewGroup[@content-desc='OTP_Button']
${close}                         xpath=//com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${Login_email}                    //android.widget.EditText
${Login_BUTTON}                   //android.view.ViewGroup[@content-desc="Login"]
${resend_otp}                     //android.widget.TextView[@text=" Resend OTP"]
${OTP_1}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[1]
${OTP_2}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[2]
${OTP_3}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[3]
${OTP_4}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[4]
${OTP_5}                                        xpath = (//android.widget.EditText[@content-desc='Input_Field'])[5]
${search_bar}                    //android.view.ViewGroup[@content-desc="Search_Icon"]
${notificaton}                    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.view.ViewGroup[2]
${back_btn}                       //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView

${notification_back}                //android.widget.ImageButton
${viewALL}                          //android.widget.TextView[@text="VIEW ALL"]
${viewall_back}                    //android.view.ViewGroup[@content-desc="Hamburger_Icon"]
${banner_1}                        //android.view.ViewGroup[@resource-id="__CAROUSEL_ITEM_1_READY__"]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${banner_2}                        //android.view.ViewGroup[@resource-id="__CAROUSEL_ITEM_3_READY__"]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${back}                             //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]
${above_hook1}                      //android.view.ViewGroup[@content-desc="Home_Pills_190+Properties"]/android.view.ViewGroup/android.widget.ImageView
${above_hook2}                        //android.view.ViewGroup[@content-desc="Home_Pills_NearbyUniversity"]
${above_hook3}                    //android.view.ViewGroup[@content-desc="Home_Pills_TopOffers"]
${hamburger_menu}                    //android.view.ViewGroup[@content-desc="Hamburger_Icon"]/android.view.ViewGroup/com.horcrux.svg.SvgView
${ham_back}                        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.view.ViewGroup
${homePage_Loc}                    //android.widget.TextView[@text="King's College London (KCL), UK"]
${i_btn}                            //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${i_btn_back}                        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${listing_page_back}                    //android.view.ViewGroup[@content-desc="Hamburger_Icon"]

${cross_ham}      //com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView

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

Press Android Back Button
    Press Key Code  4


*** Test Cases ***
OnBoarding - Login
    Open Application    http://localhost:4723/wd/hub     platformName=Android    deviceName='10.6.11.120:5555'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2
    Custom wait And Click    ${notification_allow_btn}
    Custom Wait And Click    ${other_email}
    Custom Wait And Input Text    ${email_field}    pravin.garg@universityliving.com
    Custom wait And Click    ${send_otp_btn}    
    Custom Wait And Input Text    ${OTP_1}    1
    Custom Wait And Input Text    ${OTP_2}    2
    Custom Wait And Input Text    ${OTP_3}    3
    Custom Wait And Input Text    ${OTP_4}    4
    Custom Wait And Input Text    ${OTP_5}    5 
    Custom Wait And Click         ${city_london}
    Custom Wait And Click        ${continue} 
    Custom Wait And Click        ${later}
    Custom Wait And Click        ${hamburger_menu}
    Custom Wait And Click    ${home}
    Custom Wait And Click    ${hamburger_menu}
    Custom Wait And Click    ${find_my_kinda_room}
    TRY
       Swipe    0    500    530    530     2000 
    EXCEPT
        Custom Wait And Click    ${ham_back}
    END
    Custom Wait And Click    ${hamburger_menu}
    Custom Wait And Click    ${colc}
    Custom Wait And Click    ${cyc}
    TRY
       Swipe    0    500    530    530     2000 
    EXCEPT
        Custom Wait And Click    ${back}
    END
    Swipe    0    500    530    530     2000 
    Custom Wait And Click    ${faq}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${refer&earn}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${privacyPolicy}
    Custom Wait And Click    ${cross_ham}
    #Custom Wait And Click    ${term&Cond}
    #Custom Wait And Click    ${cross_ham}
    Custom Wait And Click    ${share_the_app}
    Press Android Back Button
    Custom Wait And Click    ${about_ul}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${back_btn}
    Sleep            10s



    

    


    


