Feature:
  As a user
  I want to perform searches in the search box
  So that data can be filtered


  Scenario: The website allows to search Mario Bros' games
    Given I go to the home page
    When I fill the search box with "Mario Bros"
    Then I should see a "Super Mario Bros 2" text
    And I should see a "GBC" button
    And I should see a "NES" button


  Scenario: The website allows to search Zelda's games
    Given I go to the home page
    When I fill the search box with "Zelda"
    Then I should see a "The Legend of Zelda: Breath of the Wild" text
    And I should see a "PC" button
    And I should see a "N64" button

  Scenario: The website allows to search Animal Crossing's games
    Given I go to the home page
    When I fill the search box with "Animal Crossing"
    Then I should see a "Animal Crossing: New Horizons - Happy Home Paradise" text
    And I should see a "3DS" button
    And I should see a "Switch" button

