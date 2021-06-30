@jj7ds
Feature: Sample Test

@MotiveBridge001s
Scenario: Sample Test
  
#	Given user is printing the data set
#
#		| 1210           | Tom                 |1001| 1001|
#		| 1110           | Kenny               |1001| 1001|
#		| 1001           | someone@someone.com |1001| 1001|
		
Given user runs the simulator "OMADM"
#     #And user hits the action "AddObjectLWM2M-Server_1_3" from the Impact
#     Then user checks the "Cheking for device reboot status" for LWM2M
	Then user is printing the data set 

		| First Name             | Tom                 |1001| 1001|
		| Last Name              | Kenny               |1001| 1001|
		| Email Address          | someone@someone.com |1001| 1001|
		| Re-enter Email Address | someone@someone.com |1001| 1001|
		| Password               | Password1           |1001| 1001|
		| Birthdate              | 01                  |1001| 1001|
#	And user hits the action "Write_4_0_30000_1_Clone" from the DM Impact
 Then user closes the simulator in port "5546"
 
 