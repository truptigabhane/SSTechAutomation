@ui
Feature: PHD-873

  Background: Login Into OmniRPS Application
    Given Open the Url Of OmniRPS Application For Stage Environment

        ##################### Create Outer ######################

  Scenario: Validate Create Outer Homepage and URL
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Dropdown Menu
    And Validate Page URL
      | URL                             |
      | https://stage.omnirps.com/outer |
    Then Validate Log Details PopUp
      | PopUp        |
      | CREATE OUTER |

  Scenario: Create Outer
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Dropdown Menu
    And Select Hub And Retailer To Create Outer
      | Hub           | Retailer                     |
      | SEKO OMNI LAX | SEKO DEMO-RETURN TO THE FOLD |
    And Click Create Outer Button And If Outer Is Already Open Then Validate Popup And Confirm To Open Another Outer
      | PopUp              |
      | OUTER ALREADY OPEN |
    Then Validate Success Message

  Scenario: Create Outer While Outer Is Already Open
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Dropdown Menu
    And Select Hub And Retailer To Create Outer
      | Hub           | Retailer                     |
      | SEKO OMNI LAX | SEKO DEMO-RETURN TO THE FOLD |
    And Click Create Outer Button And If Outer Is Already Open Then Validate Popup And Confirm To Open Another Outer
      | PopUp              |
      | OUTER ALREADY OPEN |
    Then Validate Success Message

  Scenario: Close Alert Popup While Outer Is Already Open
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Dropdown Menu
    And Select Hub And Retailer To Create Outer
      | Hub           | Retailer                     |
      | SEKO OMNI LAX | SEKO DEMO-RETURN TO THE FOLD |
    And Click Create Outer Button Then Validate And Close Alert Popup While Outer Is Already Open
      | PopUp              |
      | OUTER ALREADY OPEN |
    Then Validate Log Details PopUp
      | PopUp        |
      | CREATE OUTER |

  Scenario: Validate The Error While Creating Outer Without Selecting Hub And Retailer
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Dropdown Menu
    And Click Create Outer Button
    Then Validate Mandatory Required Field
      | Error                     |
      | error-message HubId-error |

  Scenario: Validate The Error While Creating Outer Without Selecting Retailer
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Dropdown Menu
    And Select Hub To Create Outer
      | Hub           |
      | SEKO OMNI LAX |
    And Click Create Outer Button
    Then Validate Mandatory Required Fields
      | Error            |
      | retailerId-error |

  Scenario: Validate The Error While Creating Outer Without Selecting Hub
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Dropdown Menu
    And Select Retailer To Create Outer
      | Retailer                     |
      | SEKO DEMO-RETURN TO THE FOLD |
    And Click Create Outer Button
    Then Validate Mandatory Required Field
      | Error                     |
      | error-message HubId-error |


  #################### Outer Reports ######################

  Scenario: Validate Outer Reports Homepage and URL
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Outer Reports Dropdown Menu
    And Validate Page URL
      | URL                                           |
      | https://stage.omnirps.com/outer/outer_reports |
    Then Validate Log Details PopUp
      | PopUp         |
      | OUTER REPORTS |

  Scenario: Search Open Outer Reports And Validate Searched Details
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Outer Reports Dropdown Menu
    And Enter Search Details To Search Outer
      | Search | OuterStatus | Retailer                     | Hub           | Reports       |
      | 222121 | Open        | SEKO DEMO-RETURN TO THE FOLD | SEKO OMNI LAX | Outer Reports |
    And Click On Search Button In Outer Reports
    Then Validate Searched Outer Details
      | OuterId | OuterStatus | Hub           |
      | 222121  | Open        | SEKO OMNI LAX |

  Scenario: Search Close Outer Reports And Validate Searched Details
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Outer Reports Dropdown Menu
    And Enter Search Details To Search Outer
      | Search | OuterStatus | Retailer                     | Hub           | Reports       |
      | 222119 | Closed      | SEKO DEMO-RETURN TO THE FOLD | SEKO OMNI LAX | Outer Reports |
    And Click On Search Button In Outer Reports
    Then Validate Close Outer Details
      | OuterId | OuterStatus | Hub           | OuterCannote         |
      | 222119  | Closed      | SEKO OMNI LAX | 61290988336622103734 |

  #################### Create Outer Consignment ######################

  Scenario: Validate Create Outer Consignment Homepage and URL
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Consignment Dropdown Menu
    And Validate Page URL
      | URL                                                      |
      | https://stage.omnirps.com/outer/create_outer_consignment |
    Then Validate Log Details PopUp
      | PopUp                                  |
      | CLOSE OUTER - CREATE OUTER CONSIGNMENT |

  Scenario: Select Sender Hub From Dropdown And Validate Populated Hub Data
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Consignment Menu
    And Select Hub From Dropdown
      | Hub           |
      | SEKO OMNI LAX |
    Then Validate Populated Hub Data

  Scenario: Select Receiver Outer From Dropdown And Validate Populated Outer Data
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Consignment Menu
    And Select Hub From Dropdown
      | Hub           |
      | SEKO OMNI LAX |
    Then Validate Populated Hub Data
    And Enter Sender Email
      | Email            |
      | test@example.com |
    And Select Outer Id From Dropdown
      | Outer                                 |
      | 222116 - SEKO DEMO-RETURN TO THE FOLD |
    Then Validate Populated Receiver Data

  Scenario: Reset Sender Details And Validate Empty Fields
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Consignment Menu
    And Select Hub From Dropdown
      | Hub           |
      | SEKO OMNI LAX |
    Then Validate Populated Hub Data
    And Enter Sender Email
      | Email            |
      | test@example.com |
    And Click On Sender Reset Button
    Then Validate Sender Fields Are Empty

  Scenario: Reset Receiver Outer Details And Validate Empty Fields
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Consignment Menu
    And Select Hub From Dropdown
      | Hub           |
      | SEKO OMNI LAX |
    Then Validate Populated Hub Data
    And Enter Sender Email
      | Email            |
      | test@example.com |
    And Select Outer Id From Dropdown
      | Outer                                 |
      | 222116 - SEKO DEMO-RETURN TO THE FOLD |
    Then Click On Receiver Reset Button
    Then Validate Receiver Fields Are Empty

  Scenario: Create Cannote By Clicking Use External Connote Button
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Consignment Menu
    And Select Hub From Dropdown
      | Hub           |
      | SEKO OMNI LAX |
    Then Validate Populated Hub Data
    And Enter Sender Email
      | Email            |
      | test@example.com |
    And Select Outer Id From Dropdown
      | Outer                                 |
      | 222116 - SEKO DEMO-RETURN TO THE FOLD |
    Then Validate Populated Receiver Data
    And Enter Receiver Email
      | Email                  |
      | sstech.akash@gmail.com |
    And Enter Commodities Declaration Info
      | Description | ManfCountry | TotalKg | Units | TotalValue | Currency |
      | test        | China       | 0.5     | 1     | 35         | NZD      |
    And Enter Packages Info
      | Units | Length | Width | Height | KG |
      | 1     | 11     | 11    | 11     | 1  |
    And Click Remove Icon
    And Click Calculate Freight Button
    And Click On Use Eternal Cannote
    Then Validate PopUp
      | PopUp                |
      | USE EXTERNAL CONNOTE |
    And Fill Use External Connote
      | Connote  | TrackingURL                                 |
      | 11122212 | https://test.omnirps.com/track/?id=11122212 |
    And Click On Save Btn
    Then Validate Success Message Alert
    Then Validate Success Alert
      | SuccessAlert                                                                     |
      | You have successfully created Connotes 11122212 for SEKO DEMO-RETURN TO THE FOLD |

  Scenario: Create Cannote By Selecting Carrier Service
    Given Enter EmailAddress And Password and Click On LogIn Btn
      | EmailID       | Password             |
      | akash.trivedi | akash.trivedi@sstech |
    When Click on Outers Menu
    And Click Create Outer Consignment Menu
    And Select Hub From Dropdown
      | Hub           |
      | SEKO OMNI LAX |
    Then Validate Populated Hub Data
    And Enter Sender Email
      | Email            |
      | test@example.com |
    And Select Outer Id From Dropdown
      | Outer                                |
      | 22298 - SEKO DEMO-RETURN TO THE FOLD |
    Then Validate Populated Receiver Data
    And Enter Receiver Email
      | Email                          |
      | akash.trivedi@sstechsystem.com |
    And Enter Commodities Declaration Info
      | Description | ManfCountry | TotalKg | Units | TotalValue | Currency |
      | test        | China       | 0.5     | 1     | 35         | NZD      |
    And Enter Packages Info
      | Units | Length | Width | Height | KG |
      | 3     | 11     | 42    | 32     | 5  |
    And Click Remove Icon
    And Click Calculate Freight Button
    And Select Carrier Service
    Then Validate Success Message Alert
