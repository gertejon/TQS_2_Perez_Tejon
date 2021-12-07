Feature:
  As a user
  I want to buy the games reviewed in the website

  Scenario: The website allows buying Animal Crossing's new expansion Happy Home Paradise
    Given I go to the home page
    When I fill the search box with "Animal Crossing"
    Then I click on "Animal Crossing: New Horizons - Happy Home Paradise" button
    And I should see a "Comprar" text
    And I click on "Cómpralo por solo 24,99 €" button
    And I should see a "xtralife" text

  Scenario: The website allows buying The Legend of Zelda: Breath of the Wild
    Given I go to the home page
    When I fill the search box with "Zelda"
    Then I click on "The Legend of Zelda: Breath of the Wild" button
    And I should see a "Comprar" text
    And I click on "Cómpralo por solo 49,99 €" button
    And I should see a "Amazon.es" button

  Scenario: The website allows buying Nintendogs
    Given I go to the home page
    When I fill the search box with "Nintendogs"
    Then I click on "Nintendogs" button
    And I should see a "Comprar" text
    And I click on "Cómpralo por solo 14,95 €" button
    And I should see a "xtralife" text