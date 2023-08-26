*** Variables ***
#Skype_app
${start_button}     class=android.widget.Button
${signin}           //android.widget.Button[@content-desc='Sign in or create']/android.view.ViewGroup[2]
${e_email}          class=android.widget.EditText
${next_button}      //android.widget.Button[@text="Next"]
${click_send}       //android.widget.TextView[@text="Email code to dev2.intellify@gmail.com"]
${enter_otp}        class=android.widget.EditText
${submit_otp}       class=android.widget.Button
${continue&finish}         class=android.view.ViewGroup
${allow_c}          //android.widget.Button[@text="ALLOW"]

#Email_App
${open_email}       //android.widget.TextView[@text="Your single-use code"]
${copy_otp_line}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/androidx.viewpager.widget.ViewPager/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.widget.TextView[4]

