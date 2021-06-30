@RegressionCasesPart6 @testlocal
Feature: Motive Bridge DC Sanity cases  

@MotiveBridge001 
Scenario: MB_Sanity_DC_Upgrade-001- Motive Bridge Log In Page 

	Given user is already on Login Page 
	Then user enters user name and password 
	And user clicks on login button 
	
@MotiveBridge019 
Scenario: MB_Sanity_DC_Upgrade-001-Motive Bridge UI validation 
	Given user verifies the "Manage_Firmware" button 
	Then user verifies the "Manage_Devices" button 
	Then user verifies the "Quick_Run" button 


@MotiveBridge019 
Scenario: MB_Sanity_DC_Upgrade-003- LWM2M Create Device in Bootstrap mode 

	Given user clicks on "Manage Devices" 
	Then user clicks on "VERIZON[LWM2M] - IOT" protocol 
	Then user is navigated to the "LWM2M" create device page 
	Then user clicks on "Delete Device List" button 
	Then user selects the "Play" button 
	Then user scroll to the right to "Search" button 
	Then user enters the "DeviceID" in the "Search" button 
	And validate the "DeviceID" is unique for "LWM2M" 
	And user selects the "STOP" button 
	And user runs the simulator "LWM2M" 
	Then user select the "LWM2MCreateDevice" folders for test case "Create Device Bootstrap"
	Then user scroll to the left to "Play" button 
	Then user selects the "Play" button 
	Then user scrolls down the page 
	Then user enters the "DeviceID" value 
	Then user enters the "SubscriberID" value 
	Then user enters the "ICCID" value 
	Then user scroll to the right to "Submit" button 
	Then user selects the "Submit" button 
	Then user validates the "Create Device Bootstrap" test results 
	Then user closes the current window 
	
	
@MotiveBridge019 
Scenario: MB_Sanity_DC_Upgrade-004-Adding test subscriptions for Lwm2m test cases 

	Given user switch back to parent window 
	Then user selects the "ActiveIcon" button 
	Then user select the "VERIZON[LWM2M] - IOT" folder 
	Then user create a folder "Automation_TestDC" 
	Then user clicks on "VERIZON[LWM2M] - IOT" folder 
	Then user create a test suite for "Automation_TestDC" folder for "VERIZON[LWM2M]" 
	Then user search for "Device_search" 
	Then user add the below test sets 
		|VZW-Ch13-UAT-Special-Tests|
		|VZW-Ch04-UAT-Device-Test|
		|FOTAUponRegistration|
		|VZW_Ch08-Connectivity-Statistics-LWM2M|
	
	And user verifies the test suite created 

 @MotiveBridge019
Scenario: VZW-Ch13-UAT-Special-Tests:VZW_157_IPV6_to_IPV4_Fallback - DO NOT TEST THIS ON A REAL DEVICE.(As of now this test case is failing due to some limitations)
   
    Then user switch back to parent window 
    Then user select the created test Suite folder 
    And user clicks on "VZW-Ch13-UAT-Special-Tests" test set 
	Then user selects the "PlayButton" button 
	Then user is navigated to the "VZW-Ch13-UAT-Special-Tests" testSet Page 
	Then user select the "VZW_157_IPV6_to_IPV4_Fallback" folders for test case "13.01 IPV6 to IPV4 Fallback" 
	Then user selects the "Play" button
    Then user select the "CONTINUE" from status to start the test
     Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
	Then user checks the "Device reset confirmation screen" in UI
	Then user closes the simulator in port "5545"
	Then user "DELETE" the dynamic variable "IP_FALLBACK"
	Then user runs the simulator "LWM2M"
	 Then user select the "PASS" from status to start the test
     Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user wait for "10" seconds
     Then user select the "CONTINUE" from status to start the test
     Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user validates the "13.01 IPV6 to IPV4 Fallback" test results for "VZ_TC_LWM2MOTADM" test case
	Then user closes the simulator in port "5545"

@MotiveBridge019
Scenario: VZW-Ch13-UAT-Special-Tests-13.02 SMS Based Factory Reset - DO NOT TEST THIS ON A REAL DEVICE. 
     Given user closes the current window
    Then user switch back to parent window
    And user clicks on "VZW-Ch13-UAT-Special-Tests" test set 
	Then user selects the "PlayButton" button 
	Then user is navigated to the "VZW-Ch13-UAT-Special-Tests" testSet Page 
	Then user runs the simulator "LWM2M"
	Then user select the "VZW_Ch13_SMS_Based_Reset" folders for test case "13.02 SMS Based Factory Reset" 
	Then user selects the "Play" button
    Then user select the "CONTINUE" from status to start the test
    Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user checks the "Get User Input for SMS based  Execution" in UI
    Then user runs the simulator "LWM2M"
     Then user select the "PASS" from status to start the test
     Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
     Then user validates the "13.02 SMS Based Factory Reset" test results for "VZ_TC_LWM2MOTADM" test case
     Then user closes the simulator in port "5545"
 @MotiveBridge019
Scenario: VZW-Ch04-UAT-Device-Test -VZW_Ch04_Reboot_Device :4.08 Reboot
     Given user closes the current window
    Then user switch back to parent window
    And user clicks on "VZW-Ch04-UAT-Device-Test" test set 
	Then user selects the "PlayButton" button 
	Then user is navigated to the "VZW-Ch04-UAT-Device-Test" testSet Page 
	Then user runs the simulator "LWM2M"
	Then user select the "VZW_Ch04_Reboot_Device" folders for test case "4.08 Reboot" 
	Then user selects the "Play" button
    Then user select the "CONTINUE" from status to start the test
    Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user checks the "Checking for device reboot status" in UI
    Then user runs the simulator "LWM2M"
    Then user select the "PASS" from status to start the test
     Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
     Then user validates the "4.08 Reboot" test results for "VZ_TC_LWM2MOTADM" test case
     
   @MotiveBridge019
Scenario: VZW-Ch04-UAT-Device-Test -VZW_Ch04_Factory_Reset_Device:4.09 Factory Reset :DO NOT TEST THIS ON A REAL DEVICE
     Given user closes the current window
    Then user switch back to parent window
    And user clicks on "VZW-Ch04-UAT-Device-Test" test set 
	Then user selects the "PlayButton" button 
	Then user is navigated to the "VZW-Ch04-UAT-Device-Test" testSet Page 
	Then user select the "VZW_Ch04_Factory_Reset_Device" folders for test case "4.09 Factory Reset" 
	Then user selects the "Play" button
    Then user select the "CONTINUE" from status to start the test
    Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user checks the "Get User Input for FactoryReset2 Execution" in UI
    Then user runs the simulator "LWM2M"
    Then user select the "PASS" from status to start the test
     Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
     Then user validates the "4.09 Factory Reset" test results for "VZ_TC_LWM2MOTADM" test case
     Then user closes the simulator in port "5545"
   
   @MotiveBridge019
Scenario: VZW-Ch13-UAT-Special-Tests:VZW_157_IPV6_to_IPV4_Fallback - DO NOT TEST THIS ON A REAL DEVICE.(As of now this test case is failing due to some limitations)
    Given user closes the current window
    Then user switch back to parent window 
  #  Then user select the created test Suite folder 
    And user clicks on "VZW_Ch08-Connectivity-Statistics-LWM2M" test set 
	Then user selects the "PlayButton" button 
	Then user is navigated to the "VZW_Ch08-Connectivity-Statistics-LWM2M" testSet Page 
	Then user select the "VZW_Ch08_SMS_Tx_Counter" folders for test case "8.01 SMS Tx Counter" 
    Then user runs the simulator "LWM2M"
    Then user wait for "10" seconds
	Then user hits the action "partial_update_on_7_0_0" from the DM Impact
	Then user selects the "Play" button
    Then user select the "CONTINUE" from status to start the test
     Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user checks the "Get User Input for Second DeviceSendSMS Execution" in UI
    Then user hits the action "partial_update_on_7_0_0_2" from the DM Impact
    Then user select the "CONTINUE" from status to start the test
    Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user validates the "8.01 SMS Tx Counter" test results for "VZ_TC_LWM2MOTADM" test case
 
@MotiveBridge019 
Scenario: Logout from Motive Bridge 
    Given user closes the current window
    Then user switch back to parent window
	And user Click on log off for the logged in user 
	Then user closes the simulator in port "5545"
    