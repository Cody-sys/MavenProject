
Feature: Book Hotel Module

  Scenario Outline: Book hotel including GST-Card(debit card)-With special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add GST Details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Address>"
    And User add Special Request "<Request>"
    And User enter payment details, procced with Card Type "<Card Type>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Your name | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Your name | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Your name | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Your name | July  | 2025 | 123 |
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Request         | Card Type |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Extra condition |           |

  Scenario Outline: Book hotel including GST-Card(debit card)-Without special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add GST Details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Address>"
    And User enter payment details, procced with Card Type "<Card Type>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Your name | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Your name | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Your name | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Your name | July  | 2025 | 123 |
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Card Type |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          |           |

  Scenario Outline: Book hotel without GST-Card(debit card)-with special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add Special Request "<Request>"
    And User enter payment details, procced with Card Type "<Card Type>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Your name | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Your name | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Your name | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Your name | July  | 2025 | 123 |
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Request         | Card Type |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com | Extra condition |           |

  Scenario Outline: Book hotel without GST-Card(debit card)-Without special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User enter payment details, procced with Card Type "<Card Type>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Your name | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Your name | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Your name | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Your name | July  | 2025 | 123 |
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Card Type |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |           |

  Scenario Outline: Book hotel without entering any field , book field and verify all the error message
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add GST Details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Address>"
    And User add Special Request "<Request>"
    And User click credit card
    And User click submit without entering payment details
    Then User should verify after payment details error message "Please select your card type" ,"Please select your card" ,"Please provide your card number" ,"Please provide name on your card" ,"Please provide your Card Expiry Date" and "Please provide your Card's security code"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Request         |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Extra condition |

  Scenario Outline: Book hotel including GST-(UPI ID)-With special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add GST Details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Address>"
    And User add Special Request "<Request>"
    And User enter upi details "<Upi ID>" and click submit
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Request         | Upi ID |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Extra condition |        |

  Scenario Outline: Book hotel including GST-(UPI ID)-Without special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add GST Details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Address>"
    And User enter upi details "<Upi ID>" and click submit
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Upi ID |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          |        |

  Scenario Outline: Book hotel without GST-(UPI ID)-With special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add Special Request "<Request>"
    And User enter upi details "<Upi ID>" and click submit
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Request         | Upi ID |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com | Extra condition |        |

  Scenario Outline: Book hotel without GST-(UPI ID)-Without special request
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User enter upi details "<Upi ID>" and click submit
    And User should verify after hotel booking success message "Booking is Confirmed" and save the order ID
    Then User should verify same selected Hotel is booked or not

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Upi ID |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |        |

  Scenario Outline: Book hotel without entering any field in upi field , book field and verify all the error message
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User save the first hotel name and hotel price
    And User select the first hotel and accept the alert
    Then User should verify after select success message "Book Hotel"
    When User add Guest Details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No.>" and "<Email>"
    And User add GST Details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Address>"
    And User add Special Request "<Request>"
    And User click upi
    And User click submit without entering payment details
    Then User should verify after payment details error message "Please provide your UPI ID"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Request         |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Extra condition |
