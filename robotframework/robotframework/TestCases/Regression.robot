*** Settings ***

Library    AppiumLibrary
Resource    ../Cases/Waitrefrence/regressionPath.robot


*** Variables ***

${default_wait_time}   30s
${implicit_wait_time}    30s

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
#${back}                             //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]
${above_hook1}                      //android.view.ViewGroup[@content-desc="Home_Pills_190+Properties"]/android.view.ViewGroup/android.widget.ImageView
${above_hook2}                        //android.view.ViewGroup[@content-desc="Home_Pills_NearbyUniversity"]
${above_hook3}                    //android.view.ViewGroup[@content-desc="Home_Pills_TopOffers"]
${hamburger_menu}                    //android.view.ViewGroup[@content-desc="Hamburger_Icon"]/android.view.ViewGroup/com.horcrux.svg.SvgView
${ham_back}                        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.view.ViewGroup
${homePage_Loc}                    //android.widget.TextView[@text="King's College London (KCL), UK"]
${i_btn}                            //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${i_btn_back}                        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView
${listing_page_back}                    //android.view.ViewGroup[@content-desc="Hamburger_Icon"]
######Campus############

${search_bar}       //android.widget.EditText[@content-desc="Search_Bar"]
######Cunrty _ 1#######
${cou_UK}        //android.view.ViewGroup[@content-desc="Country_1"]

${city_1UK}           //android.view.ViewGroup[@content-desc="City_1"]
${city_2UK}           //android.view.ViewGroup[@content-desc="City_2"]
${city_3UK}           //android.view.ViewGroup[@content-desc="City_3"]
${city_4UK}           //android.view.ViewGroup[@content-desc="City_4"]
${city_5UK}           //android.view.ViewGroup[@content-desc="City_5"]
${city_6UK}           //android.view.ViewGroup[@content-desc="City_6"]

${uni_KCL}        //android.view.ViewGroup[@content-desc="Popular_University_1"]
${campus_kpc}    //android.view.ViewGroup[@content-desc="Campus_1"]
${campus_dhc}        //android.view.ViewGroup[@content-desc="Campus_2"]
${campus_gc}        //android.view.ViewGroup[@content-desc="Campus_3"]
${campus_stc}        //android.view.ViewGroup[@content-desc="Campus_4"]
${campus_wc}        //android.view.ViewGroup[@content-desc="Campus_5"]
${campus_sc}        //android.view.ViewGroup[@content-desc="Campus_6"]

${uni_UCL}        //android.view.ViewGroup[@content-desc="Popular_University_2"]
${campus_DOSACP}    //android.view.ViewGroup[@content-desc="Campus_1"]
${campus_SOM}    //android.view.ViewGroup[@content-desc="Campus_2"]
${campus_IOO}    //android.view.ViewGroup[@content-desc="Campus_3"]
${campus_IOE}    //android.view.ViewGroup[@content-desc="Campus_4"]
${campus_QEOP}    //android.view.ViewGroup[@content-desc="Campus_5"]


${uni_UOM}        //android.view.ViewGroup[@content-desc="Popular_University_3"]
${campus_PPC}    //android.view.ViewGroup[@content-desc="Campus_1"]
${campus_FRC}    //android.view.ViewGroup[@content-desc="Campus_2"]
${campus_MC}    //android.view.ViewGroup[@content-desc="Campus_3"]
${campus_FC}    //android.view.ViewGroup[@content-desc="Campus_4"]
${campus_TSSA}    //android.view.ViewGroup[@content-desc="Campus_5"]
${campus_TORA}    //android.view.ViewGroup[@content-desc="Campus_6"]

${uni_BCU}        //android.view.ViewGroup[@content-desc="Popular_University_4"]
${campus_bc}    //android.view.ViewGroup[@content-desc="Campus_1"]
${campus_uh}    //android.view.ViewGroup[@content-desc="Campus_2"]
${campus_soj}    //android.view.ViewGroup[@content-desc="Campus_3"]
${campus_ccc}    //android.view.ViewGroup[@content-desc="Campus_4"]
${campus_csc}    //android.view.ViewGroup[@content-desc="Campus_5"]
${campus_bsoc}    //android.view.ViewGroup[@content-desc="Campus_6"]
${campus_cnc}    //android.view.ViewGroup[@content-desc="Campus_7"]
${campus_rbc}    //android.view.ViewGroup[@content-desc="Campus_8"]


${uni_ntu}        //android.view.ViewGroup[@content-desc="Popular_University_5"]
${campus_bhc}    //android.view.ViewGroup[@content-desc="Campus_1"]
${campus_cc}    //android.view.ViewGroup[@content-desc="Campus_2"]
${campus_ccs}    //android.view.ViewGroup[@content-desc="Campus_3"]

${uni_ntu}        //android.view.ViewGroup[@content-desc="Popular_University_6"]
${campus_bhc}    //android.view.ViewGroup[@content-desc="Campus_1"]
${campus_cc}    //android.view.ViewGroup[@content-desc="Campus_2"]
${campus_ccs}    //android.view.ViewGroup[@content-desc="Campus_3"]
${uni_QMUOF}    //android.view.ViewGroup[@content-desc="Campus_4"]
${campus_QMULCC}    //android.view.ViewGroup[@content-desc="Campus_5"]
${campus_QMULwsc}     //android.view.ViewGroup[@content-desc="Campus_6"]
${campus_QMULlifc}    //android.view.ViewGroup[@content-desc="Campus_7"]
${campus_QMULwc}      //android.view.ViewGroup[@content-desc="Campus_8"]
${campus_QMULmec}      //android.view.ViewGroup[@content-desc="Campus_9"]

${uni_uog}        //android.view.ViewGroup[@content-desc="Popular_University_7"]
${campus_garscube}    //android.view.ViewGroup[@content-desc="Campus_1"]
${campus_gilmorehil}    //android.view.ViewGroup[@content-desc="Campus_2"]

######Cunrty _ 2#######
${cou_A}        //android.view.ViewGroup[@content-desc="Country_2"]
${city_A1}        //android.view.ViewGroup[@content-desc="City_1"]
${city_A2}        //android.view.ViewGroup[@content-desc="City_1"]
${city_A3}        //android.view.ViewGroup[@content-desc="City_1"]
${city_A4}        //android.view.ViewGroup[@content-desc="City_1"]
${city_A5}        //android.view.ViewGroup[@content-desc="City_1"]
${city_A6}        //android.view.ViewGroup[@content-desc="City_1"]


######Cunrty _ 3#######
${cou_ire}        //android.view.ViewGroup[@content-desc="Country_3"]
${city_ire1}      //android.view.ViewGroup[@content-desc="City_1"]
${city_ire2}        //android.view.ViewGroup[@content-desc="City_2"]
${city_ire3}        //android.view.ViewGroup[@content-desc="City_3"]
######Cunrty _ 4#######
${cou_can}        //android.view.ViewGroup[@content-desc="Country_4"]
${city_can1}        //android.view.ViewGroup[@content-desc="City_1"]
${city_can2}        //android.view.ViewGroup[@content-desc="City_2"]
${city_can3}        //android.view.ViewGroup[@content-desc="City_3"]
${city_can4}        //android.view.ViewGroup[@content-desc="City_4"]
${city_can5}        //android.view.ViewGroup[@content-desc="City_5"]
${city_can6}        //android.view.ViewGroup[@content-desc="City_6"]
######Cunrty _ 5#######
${cou_US}        //android.view.ViewGroup[@content-desc="Country_5"]
${city_us1}        //android.view.ViewGroup[@content-desc="City_1"]
${city_us2}        //android.view.ViewGroup[@content-desc="City_2"]
${city_us3}        //android.view.ViewGroup[@content-desc="City_3"]
${city_us4}        //android.view.ViewGroup[@content-desc="City_4"]
${city_us5}        //android.view.ViewGroup[@content-desc="City_5"]



${pop_uni_1}        //android.view.ViewGroup[@content-desc="Popular_University_1"]

${pop_uni_2}        //android.view.ViewGroup[@content-desc="Popular_University_2"]
${pop_uni_3}        //android.view.ViewGroup[@content-desc="Popular_University_3"]
${pop_uni_4}        //android.view.ViewGroup[@content-desc="Popular_University_4"]
${pop_uni_5}        //android.view.ViewGroup[@content-desc="Popular_University_5"]
${pop_uni_6}        //android.view.ViewGroup[@content-desc="Popular_University_6"]
${pop_uni_7}        //android.view.ViewGroup[@content-desc="Popular_University_7"]

${continue}                  //android.view.ViewGroup[@content-desc="Button"]
${personalize_my_journey}    //android.view.ViewGroup[@content-desc="Button"]
${year_2025}                 //android.view.ViewGroup[@content-desc="2025"]
${year_2024}                 //android.view.ViewGroup[@content-desc="2024"]
${conti_nue}                //android.view.ViewGroup[@content-desc="Button"]
${btn_52w}                    //android.view.ViewGroup[@content-desc="Button_52 Weeks"]
${visa_reci}                 //android.view.ViewGroup[@content-desc="Button_Received"]


${budget_hook_4}            xpath=(//android.view.ViewGroup[@content-desc="Budget_Hook_[object Object]"])[4]
${budget_hook_3}            xpath=(//android.view.ViewGroup[@content-desc="Budget_Hook_[object Object]"])[3]
${budget_hook_2}            xpath=(//android.view.ViewGroup[@content-desc="Budget_Hook_[object Object]"])[2]
${budget_hook_1}            xpath=(//android.view.ViewGroup[@content-desc="Budget_Hook_[object Object]"])[1]

${city_center_hook}            //android.widget.TextView[@text="City Centre"]
${campus_hook}                    //android.widget.TextView[@text="Campus"]

${dis_0.5}                             //android.view.ViewGroup[@content-desc="Distance_Hook_< 0.5 Mile"]
${dis_0.5-2}                        //android.view.ViewGroup[@content-desc="Distance_Hook_0.5 - 2 Miles"]
${dis_2-5}                              //android.view.ViewGroup[@content-desc="Distance_Hook_2 - 5 Miles"]
${dis_5+}                              //android.view.ViewGroup[@content-desc="Distance_Hook_5+ Miles"]
      
${dis_camp_1}                //android.view.ViewGroup[@content-desc="Distance_Hook_< 1 Mile"]
${dis_camp_2}               //android.view.ViewGroup[@content-desc="Distance_Hook_1 - 5 Miles"]
${dis_camp_3}                //android.view.ViewGroup[@content-desc="Distance_Hook_5 - 10 Miles"]
${dis_camp_4}                //android.view.ViewGroup[@content-desc="Distance_Hook_10+ Miles"]

${stay_hook_1}            //android.view.ViewGroup[@content-desc="Distance_Hook_26 Weeks"]
${stay_hook_2}            //android.view.ViewGroup[@content-desc="Distance_Hook_52 Weeks"]
${stay_hook_3}            //android.view.ViewGroup[@content-desc="Distance_Hook_Semester"]
${stay_hook_4}            //android.view.ViewGroup[@content-desc="Distance_Hook_Short Term"]
${stay_hook_5}            //android.view.ViewGroup[@content-desc="Distance_Hook_Flexible"]

${view_all_prop}    //android.view.ViewGroup[@content-desc="Home_ViewAll_CTA"]/android.view.ViewGroup
${whatsapp}        //android.view.ViewGroup[@content-desc="Whatsapp_Us_CTA"]
${talk_to_expert}    //android.view.ViewGroup[@content-desc="Talk_To_Expert"]

############ HomeScreen VAS  ##########

${money_transfer}        //android.view.ViewGroup[@content-desc="VAS_International Money Transfer"]/android.view.ViewGroup[1]
${bank_account}          //android.view.ViewGroup[@content-desc="VAS_Student Bank Account"]/android.view.ViewGroup
${student_flight}        //android.view.ViewGroup[@content-desc="VAS_Student Flight Ticket"]/android.view.ViewGroup
${airport_pickup}        //android.view.ViewGroup[@content-desc="VAS_Airport Pickup"]/android.view.ViewGroup
${luggage_storage}        //android.view.ViewGroup[@content-desc="VAS_Luggage Storage"]/android.view.ViewGroup
${room_replacement}        //android.view.ViewGroup[@content-desc="VAS_Room Replacement"]/android.view.ViewGroup
${room_essential}          //android.view.ViewGroup[@content-desc="VAS_Room Essentials"]/android.view.ViewGroup
${travel_issurance}        //android.view.ViewGroup[@content-desc="VAS_Travel Insurance"]/android.view.ViewGroup
${forex}                    //android.view.ViewGroup[@content-desc="VAS_Forex"]/android.view.ViewGroup
${Isim}                     //android.view.ViewGroup[@content-desc="VAS_International SIM"]/android.view.ViewGroup[1]
${gurantor}                //android.view.ViewGroup[@content-desc="VAS_Guarantor"]/android.view.ViewGroup
${Student_fiancing}        //android.view.ViewGroup[@content-desc="VAS_Student Financing"]/android.view.ViewGroup
${job_search}             //android.view.ViewGroup[@content-desc="VAS_Job Search"]/android.view.ViewGroup
${visa_assitance}            //android.view.ViewGroup[@content-desc="VAS_Visa Assistance"]/android.view.ViewGroup

${find_my_kinda_room}        //android.view.ViewGroup[@content-desc="MKR_CTA"]
###########   OnBOarding WEEKS  ###########

${weeks_short}           //android.view.ViewGroup[@content-desc="Button_Short Term"]
${weeks_flex}            //android.view.ViewGroup[@content-desc="Button_Flexible"]
${weeks_25}              //android.view.ViewGroup[@content-desc="Button_25 Weeks"]
${weeks_52}              //android.view.ViewGroup[@content-desc="Button_52 Weeks"]
${weeks_sem}             //android.view.ViewGroup[@content-desc="Button_Semester"]

#############  OnBoarding Visa Status #############

${recived_visa}                    //android.view.ViewGroup[@content-desc="Button_Received"]
${inprocess_visa}                  //android.view.ViewGroup[@content-desc="Button_In-process"]
${need_assistance_ visa}           //android.view.ViewGroup[@content-desc="Button_Need Assistance"]
${na_visa}                         //android.view.ViewGroup[@content-desc="Button_Not Applicable"]

############  Homepage ##########

${home}    //android.view.View[@content-desc="Home"]
${community}    //android.view.View[@content-desc="Community"]
${blog}    //android.view.View[@content-desc="Blog"]
${support}    //android.view.View[@content-desc="Support"]


#####  LOGIN ######
${hs_login}            xpath=(//android.widget.LinearLayout[@resource-id="com.google.android.gms:id/container"])[2]

############## HAMBURGER REGRESSION ####################

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
${ham_back}                 //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]

################  LSTING pAGE  ##################

${property_card}          //android.view.ViewGroup[@content-desc="4, Hayloft Point, 2.7 miles, London, Studio • Ensuite, No Visa No Pay, No University No Pay, Starting from, £345,  Per Week, Cinema, Study Room, Outdoor Area, Onsite Maintenance"]/android.view.ViewGroup

################ 2.4.8 #########################


#${ham_bk8}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.view.ViewGroup
${colc_bk}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]
${cross_ham}      //com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView




#########################  VAS  ###############################


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
${f_submit}        //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup
########### Guarantor   ##########

${find_guarantor}    //android.view.ViewGroup[@content-desc="Find A Guarantor"]/android.view.ViewGroup

######### Student Financing  ##############

${sf_submit}    //android.view.ViewGroup[@content-desc="Submit"]/android.view.ViewGroup

##########  Job Search ########

${find_my_job}     //android.view.ViewGroup[@content-desc="Find My Job"]/android.view.ViewGroup

##########  Visa Assistance  ##########

${get_visa}         //android.view.ViewGroup[@content-desc="Get Visa"]/android.view.ViewGroup



##########################  COLC    ################################3

${cyc}            //android.view.ViewGroup[@content-desc="Calculate Your Cost"]
${clc_search}    //android.view.ViewGroup[@content-desc="Search City or University"]/android.view.ViewGroup




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
OnBoarding Regression 
    Open Application    http://localhost:4723/wd/hub     platformName=Android    deviceName='10.6.12.245:5555'  appPackage=com.universityliving     appActivity=com.universityliving.MainActivity   automationName=UiAutomator2
    Custom wait And Click    ${Notificaton_permission_allow_button}
    Custom Wait And Click    ${sign_in_google}
    Sleep    2s
    Press Android Back Button
    Custom Wait And Click    ${term&Cond}
    Custom Wait And Click    ${close}
    Custom Wait And Click    ${PrivacyPolicy}
    Custom Wait And Click    ${close}
    #Custom Wait And Click    ${sign_in_google}
    #Custom Wait And Click    ${hs_login}
     Custom Wait And Click    ${oher_email}
     Custom Wait And Click    ${close}
     Custom Wait And Click    ${oher_email}
     Custom Wait And Input Text    ${email_field}    pravin.garg@universityliving.com
     Custom Wait And Click      ${email_back_btn}
     Custom Wait And Click    ${oher_email}
     Custom Wait And Input Text    ${email_field}    pravin.garg@universityliving.com
     Custom wait And Click    ${send_otp_btn}  
     Custom Wait And Click    ${edit_email}  
     Custom wait And Click    ${send_otp_btn} 
     #Sleep  35s
     #Custom Wait And Click      ${resend_otp}
     Custom Wait And Input Text    ${OTP_1}    1
     Custom Wait And Input Text    ${OTP_2}    2
     Custom Wait And Input Text    ${OTP_3}    3
     Custom Wait And Input Text    ${OTP_4}    4
     Custom Wait And Input Text    ${OTP_5}    5 
     #Sleep        10s

Onboarding Pick Your Campus Regression
    #Custom Wait And Click   ${search_bar}
    Custom Wait And Click    ${cou_UK }
    Custom Wait And Click    ${city_2UK}
    Custom Wait And Click    ${city_3UK}
    Custom Wait And Click    ${city_4UK}
    Custom Wait And Click    ${city_5UK}
    Custom Wait And Click    ${city_6UK}
    Custom Wait And Click    ${city_1UK}
    Custom Wait And Click    ${pop_uni_1}
    Custom Wait And Click    ${campus_kpc}
    Custom Wait And Click        ${continue}
    Sleep     5s  
    Custom Wait And Click        ${personalize_my_journey}
    Custom Wait And Click        ${year_2025}
    Custom Wait And Click        ${year_2024}
    Custom Wait And Click        ${conti_nue}
    Custom Wait And Click    ${weeks_52}
    Custom Wait And Click        ${weeks_25}
    Custom Wait And Click    ${weeks_flex}
    Custom Wait And Click    ${weeks_sem}
    Custom Wait And Click    ${weeks_short}
    Custom Wait And Click           ${weeks_52}
    Custom Wait And Click        ${continue}
    Custom Wait And Click        ${visa_reci}
    Custom Wait And Click    ${inprocess_visa}
    Custom Wait And Click    ${na_visa}
    Custom Wait And Click    ${need_assistance_ visa}
    Custom Wait And Click    ${visa_reci}
    Custom Wait And Click        ${continue}

Regression - HomePage
    Custom Wait And Click    ${search_bar}
    Custom Wait And Click    ${city_2UK}
    Custom Wait And Click    ${city_3UK}
    Custom Wait And Click    ${city_4UK}
    Custom Wait And Click    ${city_5UK}
    Custom Wait And Click    ${city_6UK}
    Custom Wait And Click    ${city_1UK}
    Custom Wait And Click    ${uni_KCL}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${campus_kpc}
    # Custom Wait And Click    ${campus_dhc}
    # Custom Wait And Click    ${campus_gc}
    # Custom Wait And Click    ${campus_stc}
    # Custom Wait And Click    ${campus_wc}
    # Custom Wait And Click    ${campus_sc}
    # Custom Wait And Click    ${uni_UCL}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Custom Wait And Click    ${campus_DOSACP}
    # Custom Wait And Click    ${campus_SOM}
    # Custom Wait And Click    ${campus_IOO}
    # Custom Wait And Click    ${campus_IOE}
    # Custom Wait And Click    ${campus_QEOP}
    # Custom Wait And Click    ${uni_UOM}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Custom Wait And Click    ${campus_PPC}
    # Custom Wait And Click    ${campus_FRC}
    # Custom Wait And Click    ${campus_MC}
    # Custom Wait And Click    ${campus_FC}
    # Custom Wait And Click    ${campus_TSSA}
    # Custom Wait And Click    ${campus_TORA}
    # Custom Wait And Click    ${uni_BCU}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Custom Wait And Click    ${campus_bc}
    # Custom Wait And Click    ${campus_uh}
    # Custom Wait And Click    ${campus_soj}
    # Custom Wait And Click    ${campus_ccc}
    # Custom Wait And Click    ${campus_csc}
    # Custom Wait And Click    ${campus_bsoc}
    # Custom Wait And Click    ${campus_cnc}
    # Custom Wait And Click    ${campus_rbc}
    # Custom Wait And Click    ${uni_ntu}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Custom Wait And Click    ${campus_bhc}
    # Custom Wait And Click    ${campus_cc}
    # Custom Wait And Click    ${campus_ccs}
    # Custom Wait And Click    ${uni_QMUOF}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Custom Wait And Click    ${campus_QMULCC}
    # Custom Wait And Click    ${campus_QMULwsc}
    # Custom Wait And Click    ${campus_QMULlifc}
    # Custom Wait And Click    ${campus_QMULwc}
    # Custom Wait And Click    ${campus_QMULmec}
    # Custom Wait And Click    ${uni_uog}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Custom Wait And Click    ${campus_garscube}
    # Custom Wait And Click    ${campus_gilmorehil}
    Custom Wait And Click    ${back_btn}
    Custom Wait And Click    ${notificaton}
    Custom Wait And Click    ${notification_back}
    Custom Wait And Click    ${homePage_Loc}
    Custom Wait And Click    ${back_btn}
    Custom Wait And Click     ${i_btn}
    #Custom Wait And Click    ${i_btn_back}
    Custom Wait And Click    ${banner_1}
    Custom Wait And Click    ${back}
    Sleep         5s
    Custom Wait And Click    ${hamburger_menu}
    Custom Wait And Click    ${ham_back}
    # Custom Wait And Click    ${hook1}
    # Custom Wait And Click    ${listing_page_back}
    # Custom Wait And Click    ${above_hook2}
    # Custom Wait And Click    ${listing_page_back}
    #Custom Wait And Click    ${above_hook3}
    #Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${viewALL}
    Custom Wait And Click    ${viewall_back}
    Custom Wait And Click     ${community}
    Custom Wait And Click    ${blog}
    Custom Wait And Click    ${support}
    Press Android Back Button
    Custom Wait And Click    ${home}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=900    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${dis_camp_1}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${dis_camp_2}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${dis_camp_3}
    Custom Wait And Click    ${listing_page_back}
    Swipe      600    600    100    600    1000
    Custom Wait And Click    ${dis_camp_4}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${city_center_hook}
    Custom Wait And Click    ${dis_0.5}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${dis_0.5-2}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${dis_2-5}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${dis_5+}
    Custom Wait And Click    ${listing_page_back}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=850    offset_x=500    offset_y=500    duration=1000
    #Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    #Swipe      550    550    100    550    1000
    Sleep     10s
    Custom Wait And Click    ${budget_hook_1}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${budget_hook_2}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${budget_hook_3}
    Custom Wait And Click    ${listing_page_back}
    Swipe      550    550    100    550    1000
    Custom Wait And Click    ${budget_hook_4}
    Custom Wait And Click    ${listing_page_back}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=850    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${stay_hook_1}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${stay_hook_2}
    Custom Wait And Click    ${listing_page_back}
    Swipe      500    500    100    500    1000
    Custom Wait And Click    ${stay_hook_3}
    Custom Wait And Click    ${listing_page_back}
    Swipe      500    500    100    500    1000
    Custom Wait And Click    ${stay_hook_4}
    Custom Wait And Click    ${listing_page_back}
    Custom Wait And Click    ${stay_hook_5}
    Custom Wait And Click    ${listing_page_back}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Sleep    5s
    Custom Wait And Click    ${view_all_prop}
    Custom Wait And Click    ${listing_page_back}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Custom Wait And Click    ${talk_to_expert}
    # Press Android Back Button
    # Custom Wait And Click    ${whatsapp}
    # Sleep            3s
    # Press Android Back Button
    Sleep    5s

-----------------------VAS Services On HomePage------------------------
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${money_transfer}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${student_flight}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${airport_pickup}
    Custom Wait And Click    ${back}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${bank_account}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${luggage_storage}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${forex}
    Custom Wait And Click    ${back}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${gurantor}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${visa_assitance}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${Student_fiancing}
    Custom Wait And Click    ${back}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${travel_issurance}
    Sleep     5s
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${isim}
    Sleep     5s
    Swipe    0    340    460    460     3000
    Custom Wait And Click    ${room_essential}
    Sleep     5s
    Swipe    0    340    460    460     3000
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${job_search}
    Custom Wait And Click    ${back}
    # Custom Wait And Click    ${visa_assitance}
    # Custom Wait And Click    ${back}
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    # Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=1000
    Custom Wait And Click    ${find_my_kinda_room}
    Press Android Back Button
    Sleep            5s

    
Drawer Regression
    Custom Wait And Click    ${hamburger_menu}
    Custom Wait And Click    ${ham_back}
    Custom Wait And Click    ${hamburger_menu}
    Custom Wait And Click    ${mybooking}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${myvoucher}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${favourites}
    Custom Wait And Click    ${back}

Drawer ---> International Money Transfer
    #Custom Wait And Click        ${hamburger}
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
    Swipe    0    340    460    460     3000
    #Custom Wait And Click    ${back}

# Drawer ---> Forex
#     Custom Wait And Click      ${vas}
#     # Custom Wait And Click      ${forex}
#     Custom Wait And Click    ${forex_submit}
#     Custom Wait And Click       ${f_submit}
#     Custom Wait And Click     ${go_to_home}

# Drawer ---> Guarrantor
#     Custom Wait And Click    ${hamburger}
#     Custom Wait And Click      ${vas}
#     Custom Wait And Click      ${gurantor}
#     Custom Wait And Click    ${find_guarantor}
#     Custom Wait And Click    ${submit}
#     Sleep     5s
#     Swipe    0    340    460    460     3000
#     Custom Wait And Click    ${back}

Drawer ---> Visa Assistance
    Custom Wait And Click      ${vas}
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=2000
    Custom Wait And Click      ${va}
    Custom Wait And Click      ${get_visa}
    Custom Wait And Click    ${submit}
    Custom Wait And Click    ${go_to_home}
    Sleep    5s


# Drawer ---> Student Financing
#     Custom Wait And Click    ${hamburger}
#     Custom Wait And Click      ${vas}
#     Custom Wait And Click      ${sf}
#     Custom Wait And Click    ${sf_submit}
#     Custom Wait And Click    ${submit}
#     Sleep     5s
#     Swipe    0    340    460    460     3000
#     Custom Wait And Click    ${back}

# Drawer ---> International SIM
#     Custom Wait And Click     ${vas}
#     Custom Wait And Click      ${isim}
#     Swipe    0    340    460    460     3000

Drawer ---> Room Essentials
    Custom Wait And Click      ${vas}
    Custom Wait And Click      ${re}
    Swipe    0    340    460    460     3000

# Drawer ---> Job Search
#     Custom Wait And Click    ${vas}
#     Custom Wait And Click    ${js}
#     Custom Wait And Click    ${find_my_job}
#     Swipe    0    340    460    460     3000
#     Swipe    0    340    460    460     3000
#     #Custom Wait And Click     ${back}

COLC
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
Drawer ->
    Custom Wait And Click    ${faq}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${refer&earn}
    Custom Wait And Click    ${back}
    # Custom Wait And Click    ${privacyPolicy}
    # Custom Wait And Click    ${cross_ham}
    #Custom Wait And Click    ${term&Cond}
    #Custom Wait And Click    ${cross_ham}
    Custom Wait And Click    ${share_the_app}
    Press Android Back Button
    Custom Wait And Click    ${about_ul}
    Custom Wait And Click    ${back}
    Custom Wait And Click    ${back_btn}
    Sleep            10s



    


