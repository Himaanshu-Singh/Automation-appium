*** Settings ***
Library  AppiumLibrary
Library    Easter
Resource    ../Cases/Waitrefrence/waitrefrence3.robot

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
${filename}                                  C://Users//TUL//Desktop//app-test-suite//snapshots//

###########Campus#########
 
${city_1}                    //android.view.ViewGroup[@content-desc="City_1"]
${popular_university_1}      //android.view.ViewGroup[@content-desc="Popular_University_1"]
${campus_1}                  //android.view.ViewGroup[@content-desc="Campus_1"]
${continue}                  //android.view.ViewGroup[@content-desc="Button"]
${personalize_my_journey}    //android.view.ViewGroup[@content-desc="Button"]
${skip_journey}                xpath=//android.view.ViewGroup[@content-desc="Skip_Button"]
${year_2025}                 //android.view.ViewGroup[@content-desc="2025"]
${year_2024}                 //android.view.ViewGroup[@content-desc="2024"]
${month_may}                //android.view.ViewGroup[@content-desc="Month_May"]
${btn_52w}                    //android.view.ViewGroup[@content-desc="Button_52 Weeks"]
${visa_reci}                 xpath=//android.view.ViewGroup[@content-desc="Button_Received"]

#######HomePage##############

${search_icn}            //android.view.ViewGroup[@content-desc="Search_Icon"]/android.view.ViewGroup/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${search_bar}            //android.widget.EditText[@content-desc="Search_Bar"]
${test_dev}              //android.view.ViewGroup[@content-desc="Property_1"]

############### Property Details page ################
${select_room}           //android.view.ViewGroup[@content-desc="Select_Room_Button"]

################ Room Listing Page ####################

${enquire}                xpath = (//android.view.ViewGroup[@content-desc="Enquire"])[1]
${book_now}                xpath = //android.view.ViewGroup[@content-desc="Book Now"]
${studio_rooms}            xpath=//android.view.ViewGroup[@content-desc="Studio"]

################ Book Now Form #########################

######### Partial Book Now Form #######################

${first_name}              //android.widget.EditText[@content-desc="First_Name"]
${last_name}                //android.widget.EditText[@content-desc="Last_Name"]
${dob}                        //android.view.ViewGroup[@content-desc="Date of Birth*"]
${date_19}                    //android.widget.TextView[@text="19"]
${date_30}                    //android.widget.TextView[@text="30"]
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
${view_payment_info}               xpath=//android.widget.TextView[@text="VIEW PAYMENT INFO"]

## for enquire submission
${submit}                            //android.view.ViewGroup[@content-desc="Submit"]

## for partial Next button
${Next_btn}                            xpath = //android.view.ViewGroup[@content-desc="Next"]
${succes_check}                    //android.widget.TextView[@text="Yay! Congratulations!"]
${go_to_home}                    //android.widget.TextView[@text="Go to Home"]

${going_in_grp_yes}                xpath=//android.view.ViewGroup[@content-desc="Yes"]
${going_in_grp_no}                xpath=//android.view.ViewGroup[@content-desc="No"]



########## Book Now Step 1 #####################

${gender_male}                    xpath=//android.view.ViewGroup[@content-desc="Male"]
${gender_others}                    xpath=//android.view.ViewGroup[@content-desc="Others"]
${gender_female}                    xpath=//android.view.ViewGroup[@content-desc="Female"]
${address_personal}                    xpath=//android.widget.EditText[@content-desc="Address_Field"]
${state}                               xpath=//android.widget.EditText[@content-desc="State-Field"]
${city}                                xpath=//android.widget.EditText[@content-desc="City"]
${postal_code}                         xpath=//android.widget.EditText[@content-desc="Pincode_Field"]
${nationality}                        xpath=//android.view.ViewGroup[@content-desc="Nationality*"]/android.view.ViewGroup
${nationality_searchbar}                xpath=//android.widget.EditText[@text="Search nationality"]
${spanish_keyword_searched}                xpath=//android.widget.TextView[@text="Spanish"]
${country}                               xpath=//android.widget.TextView[@text="India"]
${newzealand_country}                    xpath=//android.widget.TextView[@text="New Zealand"]

########## Book Now Step 2 #####################

${start_date}                               xpath=//android.view.ViewGroup[@content-desc="Start Date*"]
${end_date}                                 xpath=//android.view.ViewGroup[@content-desc="End Date*"]
${first_year}                               xpath=//android.widget.TextView[@text="First Year"]
${second_year}                              xpath=//android.widget.TextView[@text="Second Year"]
${Third_year}                               xpath=//android.widget.TextView[@text="Third Year"]
${Fourth_year}                              xpath=//android.widget.TextView[@text="Fourth Year"]
${phd_programme}                            xpath=//android.widget.TextView[@text="Phd Programme"]
${post_graduate}                            xpath=//android.widget.TextView[@text="Post Graduate"]
${exchange_programme}                       xpath=//android.widget.TextView[@text="Exchange Programme"]
${internship}                               xpath=//android.widget.TextView[@text="Internship"]
${other}                                    xpath=//android.widget.TextView[@text="Other"]
${course_name}                              xpath=//android.widget.EditText[@content-desc="Course_Name"]
${Next_btn}                                 xpath = //android.view.ViewGroup[@content-desc="Next"]

########## Book Now Step 3 #####################
${guardian_name}                             xpath=//android.widget.EditText[@content-desc="Name"]
${guardian_email}                            xpath=//android.widget.EditText[@content-desc="Email"]
${guardian_number}                            xpath=//android.widget.EditText[@text="Phone Number*"]
${guardian_relation}                         xpath=//android.widget.EditText[@content-desc="Relation"]
${guardian_checkbox}                         xpath=//android.widget.CheckBox[@content-desc="Guardian_Checkbox"]
${guardian_address}                          xpath=//android.widget.EditText[@content-desc="Address_Field"]
${guardian_country}                          xpath=//android.view.ViewGroup[@content-desc="Country*"]/android.view.ViewGroup
${guardian_state}                            xpath=//android.widget.EditText[@content-desc="State-Field"]
${guardian_city}                             xpath=//android.widget.EditText[@content-desc="City"]
${guardian_pincode}                          xpath=//android.widget.EditText[@content-desc="Pincode_Field"]
${social_media_option}                       xpath=//android.widget.TextView[@text="Social Media"]
${google_option}                       xpath=//android.widget.TextView[@text="Google"]
${friend_option}                       xpath=//android.widget.TextView[@text="Friend"]
${agent_option}                       xpath=//android.widget.TextView[@text="Agent"]
${others_option}                       xpath=//android.widget.TextView[@text="Others"]
${prev_btn}                            xpath=//android.view.ViewGroup[@content-desc="Prev"]
${next_btn}                            xpath=//android.view.ViewGroup[@content-desc="Next"]

################# Book Now Step 4 ######################

${contact_allow}                     xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${contact_deny}                      xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_deny_button"]
${select_from_contact}               xpath=//android.widget.TextView[@text="Select from Contacts"]
${contact_done}                      xpath=//android.view.ViewGroup[@content-desc="Done"]
${submit_btn}                        xpath=//android.view.ViewGroup[@content-desc="Submit"]

################# Book Now Thank You page #####################

${yay_title}                            xpath=//android.widget.TextView[@text="Yay! Congratulations!"]    
${go_to_home}                           xpath=//android.widget.TextView[@text="Go to Home"]


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
    Sleep    3s
    Capture Page Screenshot    ${filename}

Scroll to element 
    [Arguments]    ${locator}
    Scroll Down    ${locator}

Swipe by cordinates
    [Arguments]        ${start_x}    ${start_y}    ${end_x}    ${end_y}    ${duration}=800
    Swipe    ${start_x}    ${start_y}       ${end_x}        ${end_y}

Swipe on element
    [Arguments]        ${start_x}    ${start_y}    ${end_x}    ${end_y}    ${duration}=800
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}     ${duration}

Clear Input
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${default_wait_time}
    Clear Text    ${locator}
        

*** Test Cases ***
Test Case BookNowForm
    Open Application    http://localhost:4723    platformName=Android    deviceName='ZD2223CSTT'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2
    TRY
        Custom wait And Click    ${Notificaton_permission_allow_button}
        Custom Wait And Click    ${use_oher_email_cta}
    EXCEPT
        Custom Wait And Click    ${use_oher_email_cta}
    END
    Capture SS    ${filename}login.png
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
    Sleep     3s
    Custom Wait And Click    ${skip_journey}
    Custom Wait And Click        ${search_icn}
    Custom Wait And Input Text   ${search_bar}    Test (Dev Purpose)
    Custom Wait And Click        ${test_dev}
    Custom Wait And Click         ${continue}
    Custom Wait And Click       ${select_room}
    Custom Wait And Click    ${studio_rooms}
    Custom Wait And Click    ${book_now}
    Clear Input    ${first_name}
    Clear Input    ${last_name}
    Custom Wait And Input Text    ${first_name}    Test
    Custom Wait And Input Text    ${last_name}    Test
    Custom Wait And Click    ${dob}
    Custom Wait And Click    ${date_19}
    Custom Wait And Click    ${done}
    Custom Wait And Click    ${destination_uni}
    Custom Wait And Click    ${first_uni}
    Custom Wait And Click    ${visa_status}
    Sleep    3s
    Custom Wait And Click    ${received}
    Custom Wait And Click    ${platfrom}
    Custom Wait And Click    ${phone_call}
    Custom Wait And Input Text   ${message}   Test
    Custom Wait And Click    ${going_in_grp_yes}
    Custom Wait And Click    ${view_payment_info}
    Capture SS    ${filename}paymentInfo_BookNow.png
    Custom Wait And Click    ${first_name}
    Custom Wait And Click    ${next_btn}
    Custom Wait And Click    ${gender_female}
    Custom Wait And Input Text    ${address_personal}    Test
    Custom Wait And Click    ${country}    
    Custom Wait And Click    ${newzealand_country}
    Custom Wait And Input Text    ${state}    Test
    Custom Wait And Input Text    ${city}     Test
    Custom Wait And Input Text    ${postal_code}     232323
    Custom Wait And Click    ${nationality}   
    Custom Wait And Input Text    ${nationality_searchbar}    spanish 
    Custom Wait And Click    ${spanish_keyword_searched}
    Custom Wait And Click    ${next_btn}
    Custom Wait And Click    ${start_date}
    Custom Wait And Click    ${done}
    Custom Wait And Click    ${Fourth_year}
    Custom Wait And Input Text    ${course_name}    Test Course
    Custom Wait And Click    ${next_btn}

################## Guardian Info screen ###############################
    Custom Wait And Input Text    ${guardian_name}    Test Test
    Custom Wait And Input Text    ${guardian_email}    Test@yopmail.com
    Custom Wait And Input Text    ${guardian_number}    9090342135
    Custom Wait And Input Text    ${guardian_relation}    test
    Custom Wait And Click    ${guardian_checkbox}    
    Custom Wait And Click    ${social_media_option}
    Custom Wait And Click    ${next_btn}
    Custom Wait And Click    ${contact_allow}
    Custom Wait And Click    ${submit_btn}
    Capture SS    ${filename}



