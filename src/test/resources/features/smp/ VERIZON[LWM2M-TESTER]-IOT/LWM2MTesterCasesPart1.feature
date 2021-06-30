@LWM2MTesterCases @testjenkins @testprod
Feature: Motive Bridge DM Sanity cases  001-004

@MotiveBridge019
Scenario: MB_Sanity_DM_Upgrade-001- Motive Bridge Log In Page
  
	Given user is already on Login Page 
	Then user enters user name and password
	And user clicks on login button

@MotiveBridge019
Scenario: MB_Sanity_DM_Upgrade-001-Motive Bridge UI validation
	Given user verifies the "Manage_Firmware" button
	Then user verifies the "Manage_Devices" button
	Then user verifies the "Quick_Run" button 

@MotiveBridge019
Scenario: MB_Sanity_DM_Upgrade-003- LWM2M Create Device in Bootstrap mode

    Given user clicks on "Manage Devices"
    Then user clicks on "VERIZON[LWM2M-TESTER] - IOT" protocol
   Then user is navigated to the "LWM2M" create device page  
    #Then user clicks on "Delete Device List" button
    Then user select the "DeleteDevice" folders for test case "Delete Device List"
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
    Then user enters the "SKU" value
    Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user validates the "Create Device Bootstrap" test results
    Then user closes the current window
   
  
@MotiveBridge019
Scenario: MB_Sanity_DM_Upgrade-004-Adding test subscriptions for Lwm2m test cases
    
   Given user switch back to parent window
   Then user selects the "ActiveIcon" button
   Then user select the "VERIZON[LWM2M-TESTER] - IOT" folder
   Then user create a folder "Automation_Test"
   Then user clicks on "VERIZON[LWM2M-TESTER] - IOT" folder
   Then user create a test suite for "Automation_Test" folder for "VERIZON[LWM2M-TESTER]"
   Then user search for "Device_search"
   Then user add the below test sets
   |Check_Device_Ready|
   |VZW_Ch14_Host_Device|
   |Single_Node_Operations_DM_Server|
   |VZW-Ch-11-FOTA|
   And user verifies the test suite created
 
@MotiveBridge019
Scenario: VZW_Ch14_Host_Device:HostDeviceInfo
    
   Given user switch back to parent window
   Given user select the created test Suite folder
   And user clicks on "VZW_Ch14_Host_Device" test set
   Then user clicks on the "AutomatedPlayButton"
   Then user is navigated to the "VZW_Ch14_Host_Device" testSet Page
   Then user select the "HostDeviceInfo" folders for test case "OTADMLWM2M_41102 Host device info"
   Then user selects the "Play" button
   Then user validates the "OTADMLWM2M_41102 Host device info" test results for "UAT" test case

@MotiveBridge019
Scenario: MB_Sanity_DM_Upgrade-004-Creating Lwm2m device in Motive Bridge Portal
   Given user closes the current window
   Then user switch back to parent window
   And user clicks on "Check_Device_Ready" test set
    Then user selects the "PlayButton" button
   Then user is navigated to the "Check_Device_Ready" testSet Page
   Then user select the "CheckDeviceReadyTester" folders for test case "CheckDeviceReadyTester"
   Then user selects the "Play" button
   Then user validates the "CheckDeviceReadyTester" test results for "VZ_TC_LWM2MOTADM" test case
   
 
@MotiveBridge019
Scenario: Single_Node_Operations_DM_Server: SingleNode_Operations_DM_Server
   Given user closes the current window
   Then user switch back to parent window 
   And user clicks on "Single_Node_Operations_DM_Server" test set
   Then user selects the "PlayButton" button
   Then user is navigated to the "Single_Node_Operations_DM_Server" testSet Page
   Then user select the "SingleNode_Operations_DM_Server" folders for test case "SingleNode_Operations_DM_Server"
   Then user selects the "Play" button
   Then user enters the resource as "READ /3/0/3"
   Then user selects the "Submit" button
   Then user validates the "SingleNode_Operations_DM_Server" test results for "VZ_TC_LWM2MOTADM" test case
   Then user closes the simulator in port "5545"


   @MotiveBridge019
Scenario: MB_Sanity_DC_Upgrade-004- VZW-Ch11-FOTA 
    
    Given user runs the simulator "CPP_DCCommon"
     Then user closes the current window
    Then user switch back to parent window
   # Given user select the created test Suite folder
     And user clicks on "VZW-Ch-11-FOTA" test set
     Then user selects the "PlayButton" button
     Then user is navigated to the "VZW-Ch-11-FOTA" testSet Page     
     Then user select the "DownloadAndUpdate" folders for test case "11.01 Firmware Update (In-Band)"
     Then user selects the "Play" button
     Then user select the "CONTINUE" from status to start the test
      Then user scroll to the right to "Submit" button
     Then user selects the "Submit" button     
     Then user selects the "CheckJobStatus" button
     Then user wait for some time
     Then user selects the "CheckJobStatus" button
     Then user wait for some time
     Then user selects the "CheckJobStatus" button
     Then user wait for some time
     Then user selects the "Refresh" button
     Then user wait for some time
     Then user selects the "Refresh" button
     Then user verifies the job details  
      Then user scroll to the right to "Submit" button
     Then user selects the "Submit" button
     Then user wait for some time
     Then user validates the "11.01 Firmware Update (In-Band)" test results for "VZ_TC_LWM2MOTADM" test case
     Then user closes the simulator in port "5546"
  
  @MotiveBridge019
Scenario: DownloadAndUpdate_OOB- VZW-Ch11-FOTA :11.02 Firmware Update (Out-Band)
    
     Given user closes the current window
    Then user switch back to parent window
   # Then user select the created test Suite folder
     And user runs the simulator "LWM2M"
     And user hits the action "Write_4_0_30000_1_Clone" from the DM Impact
     And user clicks on "VZW-Ch-11-FOTA" test set
     Then user selects the "PlayButton" button
     Then user is navigated to the "VZW-Ch-11-FOTA" testSet Page
     Then user select the "DownloadAndUpdate_OOB" folders for test case "11.02 Firmware Update (Out-Band)"
     Then user selects the "Play" button
     Then user select the "CONTINUE" from status to start the test
      Then user scroll to the right to "Submit" button
     Then user selects the "Submit" button     
     Then user wait for some time
     Then user selects the "CheckJobStatus" button
     Then user wait for some time
     Then user selects the "CheckJobStatus" button
     Then user wait for some time
     Then user selects the "Refresh" button
     Then user wait for some time
     Then user selects the "Refresh" button
     Then user verifies the job details  
      Then user scroll to the right to "Submit" button
     Then user selects the "Submit" button
     Then user wait for some time
     Then user validates the "11.02 Firmware Update (Out-Band)" test results for "VZ_TC_LWM2MOTADM" test case
    

@MotiveBridge019
Scenario: OMADM Delete Device
    
     Given user closes the current window 
   Then user switch back to parent window  
    Then user clicks on "Manage Devices"
    Then user clicks on "VERIZON[LWM2M-TESTER] - IOT" protocol
    Then user is navigated to the "OMADMORLWM2MDeleteDevice" create device page
    Then user select the "DeleteDevice" folders for test case "Delete Single Device"
    Then user selects the "Play" button
     Then user enters the "DeviceID" value
    Then user scroll to the right to "Submit" button
    Then user selects the "Submit" button
    Then user validates the "Delete Single Device" test results for "UAT" test case  
     Then user select the "DeleteDevice" folders for test case "Delete Device List"
    Then user selects the "Play" button
    Then user selects the devices to delete
    Then user selects the "Submit" button
     Then user validates the "DeleteDeviceList" test results for "UAT" test case 
    # Then user closes the current window 
    
@MotiveBridge019
Scenario: Logout from Motive Bridge

     Given user closes the current window
    Then user switch back to parent window
    Then user Click on log off for the logged in user
    Then user closes the simulator in port "5546"
    Then user closes the simulator in port "5545"
    