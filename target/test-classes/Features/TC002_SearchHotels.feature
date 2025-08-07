
Feature: Explore Hotel Module

  Scenario Outline: Search hotels with all fields
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 |

  Scenario Outline: Search hotels with only mandatory fields
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Check in date>","<Check out date>","<No of Room>" and "<No of Adults>"
    Then User should verify after search hotel success message "Select Hotel"

    Examples: 
      | User name               | Password   | State          | city     | Check in date | Check out date | No of Room | No of Adults |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |

  Scenario Outline: Search hotels with all fields and verify the hotel price sorting from low to high
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User click sort from low to high
    Then User should verify after sorting that price are listed from low to high

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 |

  Scenario Outline: Search hotels without entering any fields and verifying the error messages
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    And User click Search button
    Then User should verify after search hotel error message "Please select State" ,"Please select city" ,"Please select Check-in date" ,"Please select Check out date " ,"Please select no. of rooms" and "Please select no. of adults"

    Examples: 
      | User name               | Password   |
      | glittermurali@gmail.com | PassHack1! |

  Scenario Outline: Search hotels with all fields and verify the hotel name in Descending order
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User click sort from Descending order
    Then User should verify after sorting that name in Descending order

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 |

  Scenario Outline: Search hotels with all fields and select all room type verify the header
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    And User should verify the header contains "<Room type>"

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Suite/Deluxe/Standard/Luxury/Studio  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 |

  Scenario Outline: Search hotel with all fields and verify the Standard room type are listed
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome first name"
    When User search hotel "<State>","<city>","<Room type>","<Check in date>","<Check out date>","<No of Room>","<No of Adults>" and "<No of Childs>"
    Then User should verify after search hotel success message "Select Hotel"
    When User click Standard room type
    Then User should verify after sorting that Standard room type is listed

    Examples: 
      | User name               | Password   | State          | city     | Room type | Check in date | Check out date | No of Room | No of Adults | No of Childs |
      | glittermurali@gmail.com | PassHack1! | Andhra Pradesh | Tirupati | Standard  | 15 July 2025  | 16 July 2025   | 1-One      | 2-Two        |            1 |
