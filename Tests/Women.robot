*** Settings ***
Library    SeleniumLibrary
Library    Collections
#Library    String
Resource    ../Keywords/Automationpractice_keywords.txt
Variables    ../Objects/Women_section.py
Variables    ../Resources/Data.py
Test Setup    Open Browser in Women Section And Maximize
Test Teardown    Capture Prtc And Close Browser

*** Test Cases ***
Sorting in Women section And Comparing
    Sorting Women Clothes    
    Compare products    

All Type of Sorting
    [Template]    All Type of Sorting in Women Clothes
    :FOR    ${unw}    IN    @{value_selection_sorting}
    \    ${unw}  

#Comparing Pricing
#    [Template]    Auto Comparing  
#    :FOR    ${val}    IN    @{some_list}
#    \    Log    ${val}
#    \    ${val} 

*** Keywords ***
All Type of Sorting in Women Clothes
    [Arguments]    ${unw}
    Select From List By Label    ${select_product}    ${unw}
    Wait Until Element Is Visible    ${loader_not_visible}
    
#Auto Comparing    
#    [Arguments]    ${val}    
#    ${response}    Get WebElements    ${get_item_value}
#    ${result}    Get Substring    ${response}    1
#    Convert To Number    ${result}