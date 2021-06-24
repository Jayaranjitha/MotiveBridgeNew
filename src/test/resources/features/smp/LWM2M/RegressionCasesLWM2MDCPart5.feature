@RegressionCasesPart5  @testlocal
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
		|VZW-Ch11-FOTA-WIFI-ON|
		|VZW-Chapter05Cases|  
		|VZW-Ch11-FOTA|
	And user verifies the test suite created 

 @MotiveBridge019
Scenario: VZW-Chapter05Cases
    
   
    Then user switch back to parent window 
    Then user select the created test Suite folder 
    And user clicks on "VZW-Chapter05Cases" test set 
	Then user clicks on the "AutomatedPlayButton"
	Then user is navigated to the "VZW-Chapter05Cases" testSet Page 
	Then user select the "_5_04_Link_Quality" folders for test case "5.04 Link Quality" 
	Then user selects the "Play" button
	Then user validates the "5.04 Link Quality" test results for "VZ_TC_LWM2MOTADM" test case 

@MotiveBridge019 
Scenario: VZW-Ch11-FOTA:11.19 SU Cancel
 
     Given user closes the current window
    Then user switch back to parent window
     And user clicks on "VZW-Ch11-FOTA" test set 
	Then user selects the "PlayButton" button 
	Then user is navigated to the "VZW-Ch11-FOTA" testSet Page 	 
	 Then user select the "SU_Cancel_11_19" folders for test case "11.19 SU Cancel" 
	 And user runs the simulator "LWM2M" 
	Then user selects the "Play" button 	
	And user runs the simulator "CPP_SUCancel"
	Then user select the "CONTINUE" from status to start the test 
	Then user scroll to the right to "Submit" button
	Then user selects the "Submit" button 
	Then user select the "CONTINUE" from status to start the test 
	Then user scroll to the right to "Submit" button
	Then user selects the "Submit" button 
	Then user wait for "3" seconds
	Then user validates the "11.19 SU Cancel" test results for "VZ_TC_LWM2MOTADM" test case 
    Then user closes the simulator in port "5546" 	
	
@MotiveBridge019 
Scenario: VZW-Ch11-FOTA-WIFI-ON-Sufficient_power_to_carry_out_update_OB_11_06_Wifi_On

    Given user closes the current window 
	Then user switch back to parent window 
	And user runs the simulator "CPP_DC"	
	And user clicks on "VZW-Ch11-FOTA-WIFI-ON" test set 
	Then user selects the "PlayButton" button 
	Then user is navigated to the "VZW-Ch11-FOTA-WIFI-ON" testSet Page 
	Then user select the "Insufficient_power_to_carry_out_update_OB_11_06_Wifi_On" folders for test case "11.06 Insufficient Power to carry out the Update OB Wifi On" 
	Then user selects the "Play" button 
	Then user select the "CONTINUE" from status to start the test 
	Then user scroll to the right to "Submit" button
	Then user selects the "Submit" button 
	Then user wait for "5" seconds
	 Then user selects the "CheckJobStatus" button
     Then user wait for some time
     Then user selects the "CheckJobStatus" button
     Then user wait for some time
     Then user selects the "Refresh" button
     Then user verifies the job details
	Then user closes the simulator in port "5546" 
	
@MotiveBridge019 
Scenario: Logout from Motive Bridge 
    Given user closes the current window
    Then user switch back to parent window
	And user Click on log off for the logged in user 
	Then user closes the simulator in port "5546" 
	Then user closes the simulator in port "5545"
    