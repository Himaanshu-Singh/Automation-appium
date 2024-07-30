*** Settings ***

Library    AppiumLibrary

*** Variables ***

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
${USP_SCREEN}              //android.widget.EditText[@text="Discover city, university, property"]
${city_london}                            //android.view.ViewGroup[@content-desc="City_1"]
${continue}                               //android.view.ViewGroup[@content-desc="Button"]
${later}                                  //android.view.ViewGroup[@content-desc="Skip_Button"]
${viewALL}                                //android.widget.TextView[@text="VIEW ALL"]

################  ListingPage   #################

${search_icn_listing}              //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.view.ViewGroup
${i_btn}                           //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[3]/com.horcrux.svg.SvgView
${student_housing}                 //android.widget.TextView[@text="Student Housing"]
${private_appartment}              //android.widget.TextView[@text="Private Apartments"]
${filter}                          //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.view.ViewGroup[2]
${listing_back}                    //android.view.ViewGroup[@content-desc="Hamburger_Icon"]/android.view.ViewGroup/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${distance_hook}                    //android.view.ViewGroup[@content-desc="Quick_Filters_Distance"]
${budget_hook}                      //android.view.ViewGroup[@content-desc="Quick_Filters_Budget Range"]
${duration_hook}                    //android.view.ViewGroup[@content-desc="Quick_Filters_Duration"]
${intake_hook}                        //android.view.ViewGroup[@content-desc="Quick_Filters_Intake"]
${categories_hook}                    //android.view.ViewGroup[@content-desc="Quick_Filters_Categories"]
${save_to_list}                    //android.view.ViewGroup[@content-desc="Save to List"]
${add_to_compare}                    //android.view.ViewGroup[@content-desc="Add to Compare"]
${card_view_all}                    //android.view.ViewGroup[@content-desc="View All"]
${card_PBSA}                     xpath=//android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]
${chat}                              //android.view.ViewGroup[@content-desc="Bottom_Chat_Button"]
${compare}                            //android.view.ViewGroup[@content-desc="Bottom-Compare_Button"]
${lisitng_detail_page_back}            //android.view.ViewGroup[@content-desc="PDP_Back_Button"]
${card_HMO}                            //android.widget.TextView[@resource-id="Property_Card_Name_Medway Street"]
${explore}                            //android.view.ViewGroup[@content-desc="Explore"]
${chat_back}                            //android.widget.ImageButton[@content-desc="Navigate up"]
${back}                                //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView[1]
${search_unii}                        //android.widget.EditText[@text="Search University"]
${select_uni}                        //android.widget.TextView[@text="Select University"]
${kcl}                                //android.view.ViewGroup[@content-desc="KLC School of Design"]
###########################   LDP #################################

${fav_icn}                        //android.view.ViewGroup[@content-desc="PDP_favourite_Button"]/android.view.ViewGroup/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${ldp_select_uni}                //android.widget.TextView[@text="SELECT COLLEGE/UNIVERSITY"]

${offer_card}                    //android.view.ViewGroup[@content-desc="PDP_Offer_Card"]/android.view.ViewGroup/android.view.ViewGroup
${ldp_payment}                    //android.widget.TextView[@text="Payment"]
${ldp_cancellation}                //android.widget.TextView[@text="Cancellation"]
${ldp_overview}                    //android.widget.TextView[@text="Overview"]
${ldp_readmore}                    //android.widget.TextView[@content-desc="Read_More_Button"]
${ldp_amenities}                  //android.view.ViewGroup[@content-desc="+17 OTHERS"]/android.view.ViewGroup
${ldp_bil}                        //android.view.ViewGroup[@content-desc="+3 OTHERS"]/android.view.ViewGroup
${ldp_security_safety}            //android.view.ViewGroup[@content-desc="+2 OTHERS"]/android.view.ViewGroup

${ldp_chat_btn}                    //android.view.ViewGroup[@content-desc="Bottom_Chat_Button"]
${select_room}                        //android.view.ViewGroup[@content-desc="Select_Room_Button"]
##################   ROOM ######################

${ensuite}           //android.view.ViewGroup[@content-desc="Ensuite"]
${studio}            //android.view.ViewGroup[@content-desc="Studio"]
${all}                //android.view.ViewGroup[@content-desc="All"]
${enquiry}            //android.view.ViewGroup[@content-desc="Enquire"]
${book_now}              //android.view.ViewGroup[@content-desc="Book Now"]
${join_waitlist}            //android.view.ViewGroup[@content-desc="Join Waitlist"]
${room-detail}            xpath=(//android.widget.TextView[@text="ROOM DETAILS"])[1]
${ldp_select_room_chat}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup


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
    Open Application    http://localhost:4723/wd/hub     platformName=Android    deviceName='10.6.12.52:5556'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2
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
    Custom Wait And Click    ${viewALL}
    Swipe      500    1500    150    1500    2000                              
    #Custom Wait And Click    ${lisitng_detail_page_back}
    Swipe    0    240    460    260     3000
    Custom Wait And Click    ${listing_back}
    Custom Wait And Click    ${viewALL}
    Swipe      500    1500    150    1500    2000        
    Custom Wait And Click    ${fav_icn}
    Custom Wait And Click    ${ldp_select_uni}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${offer_card}
    Swipe      460    460    100    460    1000
    Custom Wait And Click    ${ldp_payment}
    Custom Wait And Click    ${ldp_cancellation}
    Custom Wait And Click    ${ldp_overview}
    Custom Wait And Click    ${ldp_payment}
    #Swipe    start_x=500    start_y=1200    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=400    offset_x=500    offset_y=1150    duration=1000
    #Custom Wait And Click    ${ldp_readmore}
    # Custom Wait And Click    ${ldp_amenities}
    # Swipe      460    460    100    460    1000
    # Custom Wait And Click    ${ldp_bil}
    # Swipe      460    460    100    460    1000
    # Custom Wait And Click    ${ldp_security_safety}
    # Swipe      460    460    100    460    1000
    Custom Wait And Click    ${ldp_chat_btn}
    Swipe    0    240    460    260     3000
    Custom Wait And Click    ${select_room}
    Custom Wait And Click    ${studio}
    # Custom Wait And Click    ${ensuite}
    Custom Wait And Click    ${all}
    Custom Wait And Click    ${enquiry}
    Swipe    0    340    460    460     3000
    # Custom Wait And Click    ${book_now}
    # Swipe    0    340    460    460     3000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${join_waitlist}
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${room-detail}
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${ldp_select_room_chat}
    Custom Wait And Click    ${chat_back}
    Sleep                30s


