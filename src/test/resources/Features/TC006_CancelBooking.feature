
Feature: Cancel Booking Module

  Scenario Outline: Cancel the Created Order Id - Book hotel by card (debit card)
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Request         | Card Type | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Extra condition | Debit     | 26 July 2025 |

  Scenario Outline: Cancel the Created Order Id - Book hotel by  (UPI ID)
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    And User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Request         | Upi ID | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Extra condition | UPI    | 26 July 2025 |

  Scenario Outline: Cancel the Created Order Id - Book hotel by card (debit card) without special request and with GST
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    And User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Card Type | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Debit     | 25 July 2025 |

  Scenario Outline: Cancel the Created Order Id - Book hotel by card (debit card) without special request and without GST
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Card Type | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com | Debit     | 25 July 2025 |

  Scenario Outline: Cancel the Created Order Id - Book hotel by  (UPI ID) without special request and with GST
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    And User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Enter Registration No. | Enter Company Name     | Enter Company Address | Upi ID | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | UPI    | 25 July 2025 |

  Scenario Outline: Cancel the Created Order Id - Book hotel by  (UPI ID) without special request and without GST
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    And User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Upi ID | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com | UPI    | 25 July 2025 |

  Scenario Outline: Cancel the existing Order ID
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User should Cancel the existing order ID "order ID"
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | 25 July 2025 |

  Scenario Outline: Cancel the first Order ID
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome Srini"
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User should Cancel the first order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   |
      | glittermurali@gmail.com | PassHack1! |

  Scenario Outline: Cancel the last Order ID
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome Srini"
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User should Cancel the last order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   |
      | glittermurali@gmail.com | PassHack1! |

  Scenario Outline: Cancel the Created Order Id - Book hotel by card (debit card) with special request and without GST
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    And User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Request         | Card Type | Modify Date  |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com | Extra condition | Debit     | 25 July 2025 |

  Scenario Outline: Cancel the Created Order Id - Book hotel by  (UPI ID) with special request and without GST
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
    When User navigate to My Booking page
    Then User should verify after navigate to My Booking page success message as "Bookings"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    Then User should verify same booked Hotel Price is present or not
    When User edit the Check-in Date "<Modify Date>"
    Then User should verify after modify check-in date success message "Booking updated successfully"
    When User search the Order ID
    Then User should verify same booked Order ID is present or not
    And User should verify same booked Hotel Name is present or not
    And User should verify same booked Hotel Price is present or not
    When User should Cancel the new order ID
    Then User should verify after cancel booking success message "Your booking cancelled successfully"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs | Select Salutation | First Name | Last Name | Mobile No. | Email       | Request         | Upi ID       | Modify Date |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 | Mr.               | Java       | Python    | 1234567890 | 123@123.com | Extra condition | 25 July 2025 |             |
