
# 🤖 Robot Framework Appium Automation Suite

This repository contains a **Robot Framework-based automation suite for Android applications** using **Appium**. It includes test cases for various features of the application and utilities for email reporting and logging.

---

## ✨ Features

- 📱 **Android Automation** – Tests implemented using **AppiumLibrary** in Robot Framework  
- 🤖 **Reusable Keywords** – Custom keywords for wait, click, input, and screenshots  
- 💾 **Logging & Reporting** – Generates HTML reports and logs for each test run  
- ✉️ **Email Integration** – Automatically send reports via email using Python scripts  
- 🏗 **Modular Structure** – Separate test cases, resources, and libraries  
- ⏱ **Custom Waits** – Handles dynamic waits and element visibility  

---

## 🗂 Repository Structure

```

robotframework\_appium/
├── Cases/                # Robot test case folders
│   ├── Waitrefrence/
│   │   └── waitrefrence3.robot
├── Keywords/             # Custom keyword definitions (if any)
├── Libraries/            # Python libraries for Robot Framework
│   └── Easter.py
├── Tests/                # Robot test cases
│   ├── BookNow-Android.robot
│   ├── EnquireNow\.robot
│   ├── InstantPayment-Android.robot
│   ├── Joinwaitlist.robot
│   ├── ListingDetailPage.robot
│   ├── ListingPage.robot
│   ├── Login.robot
│   ├── Payment.robot
│   ├── Regression.robot
│   ├── RunSuiteRegression.robot
│   ├── VAS.robot
│   └── test.robot
├── Logs/                 # Test run logs
│   ├── BookNow-Android.log
│   ├── EnquireNow\.log
│   ├── InstantPayment-Android.log
│   └── ...
├── Reports/              # Generated HTML reports
│   ├── log.html
│   ├── report.html
│   └── report\_template.html
├── Scripts/              # Python scripts for email automation
│   ├── automation\_mail.py
│   ├── mail.py
│   └── mailer.py
├── output.xml            # Robot Framework output
└── README.md             # Project documentation

````

---

## 🛠️ Technology Stack

- **Robot Framework** – Test automation framework  
- **AppiumLibrary** – Appium integration for Android automation  
- **Python** – Custom scripts for utilities and email reporting  
- **Appium** – Mobile automation server  
- **Selenium WebDriver** – Underlying WebDriver support for Appium  
- **HTML/Logs** – Auto-generated reports  

---

## 🔧 Prerequisites

- Python 3.8+  
- Robot Framework 5+  
- Appium 2+  
- Node.js (for Appium server)  
- Android SDK & connected device or emulator  

---

## 🚀 Installation & Setup

1. **Clone the repository**:

```bash
git clone https://github.com/your-username/robotframework_appium.git
cd robotframework_appium
````

2. **Install Python dependencies**:

```bash
pip install robotframework
pip install robotframework-appiumlibrary
pip install Appium-Python-Client
```

3. **Start Appium Server**:

```bash
appium
```

4. **Connect your Android device or start an emulator**. Ensure `adb devices` lists your device.

---

## ▶️ Running Tests

* **Single Test Case**:

```bash
robot Tests/test.robot
```

* **Run All Tests**:

```bash
robot Tests/
```

* **Generate Reports**: After execution, `log.html`, `report.html`, and `output.xml` will be available in the project root or Reports folder.

---

## ✨ Custom Keywords

* **Custom Wait And Click** – Waits for an element and clicks it.
* **Custom Wait And Input Text** – Waits for an element and inputs text.
* **Capture SS** – Captures a screenshot at any point in the test.

Example usage in a test case:

```robot
Custom Wait And Click    ${send_otp_btn}
Custom Wait And Input Text    ${OTP_1}    1
Capture SS    ${filename} + login.png
```

---

## 📄 Sample Test Flow

Example: **Enquire Form Test**

1. Open the application on Android via Appium
2. Handle notifications and walkthrough screens
3. Login using OTP authentication
4. Navigate through campus selection and personalization screens
5. Search for properties and select rooms
6. Fill enquiry form details (name, date of birth, university, platform, message)
7. Submit the form and verify confirmation message
8. Return to home screen and capture screenshots

---

## ⚙️ Configuration

* **Locators & Variables** – Defined in `Variables` section at the top of Robot files
* **Wait Times** – Configurable via `${default_wait_time}` and `${implicit_wait_time}`
* **Screenshots** – Saved to `snapshots/` directory
* **Email Reports** – Configure SMTP details in `automation_mail.py`

---

## 📂 Notes

* Ensure **unique locators** for Android elements, mostly using `xpath` or `content-desc`
* Test cases are modular; you can import resources for waits, variables, or common actions
* Screenshots are taken for each major step to help debugging

---

## 🤝 Contributing

1. Fork the repository
2. Create a branch for your feature:

```bash
git checkout -b feature/your-feature
```

3. Commit your changes:

```bash
git commit -am "Add new test case or keyword"
```

4. Push to your branch:

```bash
git push origin feature/your-feature
```

5. Open a Pull Request

---

## 🙏 Acknowledgments

* [Robot Framework](https://robotframework.org/) – Test automation framework
* [Appium](https://appium.io/) – Mobile automation server
* [Python](https://www.python.org/) – Scripts and utility integration
* [University Living App](#) – Application under test
