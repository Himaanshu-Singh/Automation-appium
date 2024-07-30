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
###################################  Filter  #########################

${reset}                                //android.widget.TextView[@text="RESET"]
${filter_back}                            //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${price_low-high}                        //android.view.ViewGroup[@content-desc="Price Low To High"]
${price_high-low}                        //android.view.ViewGroup[@content-desc="Price High To Low"]
${mostPopular}                            //android.view.ViewGroup[@content-desc="Most Popular"]
${new}                                        //android.view.ViewGroup[@content-desc="New"]
${distance}                                //android.view.ViewGroup[@content-desc="Distance"]
${BestOffer}                            //android.view.ViewGroup[@content-desc="Best Offer"]

${filing_fast-y}                        //android.view.ViewGroup[@content-desc="Yes"]
${filing_fast-n}                        //android.view.ViewGroup[@content-desc="No"]

${apply_filter}                    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup







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
    Open Application    http://localhost:4723    platformName=Android    deviceName='10.6.11.120:5555'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2
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
Listing Page    
    Custom Wait And Click    ${viewALL}
    Sleep            5s
    #Custom Wait And Click    ${card_PBSA}
    #Click Element            locator=//android.widget.TextView[@resource-id="Property_Card_Name_Medway Street"]
    Swipe      500    1500    150    1500    2000                              
    # Swipe    0    240    460    260     3000
    Custom Wait And Click    ${private_appartment}
    Custom Wait And Click    ${card_HMO}
    Swipe    0    240    460    260     3000
    Custom Wait And Click    ${student_housing}
    Custom Wait And Click    ${i_btn}
    Swipe      500    500    100    500    1000
    Custom Wait And Click    ${compare}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${save_to_list}
    Custom Wait And Click    ${add_to_compare}
    Custom Wait And Click    ${add_to_compare}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${chat}
    Custom Wait And Click    ${chat_back}
    Custom Wait And Click    ${distance_hook}
    Swipe      500    500    100    500    1000
    Custom Wait And Click    ${budget_hook}
    Swipe      500    500    100    500    1000
    Custom Wait And Click    ${duration_hook}
    Swipe      500    500    100    500    1000
    Swipe      460    460    100    460    1000
    Swipe      460    460    100    460    1000
    Custom Wait And Click    ${intake_hook}
    Swipe      500    500    100    500    1000
    Swipe      460    460    100    460    1000
    Custom Wait And Click    ${categories_hook}
    Swipe      500    500    100    500    1000
    Custom Wait And Click    ${filter}
    Custom Wait And Click    ${filter_back}
    Custom Wait And Click    ${search_icn_listing}
    Swipe    0    340    460    460     2000
    Custom Wait And Click    ${filter}
    Custom Wait And Click    ${price_high-low}
    Custom Wait And Click    ${price_low-high}
    Custom Wait And Click    ${mostPopular}
    Custom Wait And Click    ${new}
    Custom Wait And Click    ${distance}
    Custom Wait And Click    ${BestOffer}
    Custom Wait And Click    ${filing_fast-y}
    Custom Wait And Click    ${filing_fast-n}
    Custom Wait And Click    ${reset}
    Custom Wait And Click    ${mostPopular}
    Custom Wait And Click    ${filing_fast-y}
    Custom Wait And Click    ${apply_filter}
    Custom Wait And Click    ${select_uni}
    TRY
        Custom Wait And Click    ${back}
    EXCEPT
        Swipe    0    340    460    460     2000
    END
    Custom Wait And Click    ${select_uni}
    Custom Wait And Input Text    ${search_unii}        k
    Custom Wait And Click    ${kcl}

    Sleep        10s