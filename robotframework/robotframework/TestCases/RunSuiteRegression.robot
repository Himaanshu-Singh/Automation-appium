*** Settings ***
Library           Process
Suite Setup       Run All Test Suites
Suite Teardown    Run Python Script

*** Variables ***
${TEST_DIR}       test_suites
${SCRIPT_DIR}     scripts
${PYTHON_SCRIPT}  my_script.py
${TEST_FILES}     suite_1.robot  suite_2.robot  suite_3.robot  suite_4.robot  suite_5.robot


*** Keywords ***
Run All Test Suites
    [Documentation]    Execute all specified test suites.
    FOR    ${file}    IN    @{TEST_FILES}
        Run Test Suite    ${file}
    END

Run Test Suite
    [Arguments]    ${file}
    [Documentation]    Run a single Robot Framework test suite.
    Run Process    robot    ${TEST_DIR}/${file}
   

Run Python Script
    [Documentation]    Execute the specified Python script.
    Run Process    python    ${SCRIPT_DIR}/${PYTHON_SCRIPT}
    

*** Test Cases ***

Run All Test Suites
    FOR    ${file}    IN    suite_1.robot    suite_2.robot    suite_3.robot    suite_4.robot    suite_5.robot
        Run Test Suite    ${file}
    END

Run Python Script
    Run Process    python    scripts/my_script.py
    


