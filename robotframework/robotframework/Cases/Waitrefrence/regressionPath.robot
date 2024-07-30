*** Settings ***
Library    AppiumLibrary

*** Variables ***

${Notificaton_permission_allow_button}      com.android.permissioncontroller:id/permission_allow_button

${sign_in_google}                //android.view.ViewGroup[@content-desc="Google_Sign_In"]
${oher_email}                    //android.view.ViewGroup[@content-desc="Other_email_signIn"]
${term&Cond}                     //android.widget.TextView[@text="Terms & Conditions"]
${PrivacyPolicy}                 //android.widget.TextView[@text=" Privacy Policy"]