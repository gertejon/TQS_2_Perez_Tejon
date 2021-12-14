Feature:
  As a user
  I want to buy the games reviewed in the website

  Scenario: The website allows buying Animal Crossing's new expansion Happy Home Paradise
    Given I go to the home page
    #And I accept cookies
    When I fill the search box with "Animal Crossing"
    Then I click on "Animal Crossing: New Horizons - Happy Home Paradise" button
    And I should see a "Comprar" text
    And I click on "Cómpralo por solo 24,99 €" button
    And I should be on this website: "https://www.xtralife.com/producto/animal-crossing-new-horizons-happy-home-paradise-switch-dlc-happy-home-paradise-nintendo-eshop/69324"
    And I should see a "xtralife" text

  Scenario: The website allows buying The Legend of Zelda: Breath of the Wild
    Given I go to the home page
    #And I accept cookies
    When I fill the search box with "Zelda"
    Then I click on "The Legend of Zelda: Breath of the Wild" button
    And I should see a "Comprar" text
    And I click on "Cómpralo por solo 56,95 €" button
    And I should be on this website: "https://www.xtralife.com/producto/the-legend-of-zelda-breath-of-the-wild-switch-estandar/23085"
    And I should see a "xtralife" text

  Scenario: The website allows buying Nintendogs
    Given I go to the home page
    #And I accept cookies
    When I fill the search box with "Nintendogs"
    Then I click on "Nintendogs" button
    And I should see a "Comprar" text
    And I click on "Cómpralo por solo 14,95 €" button
    And I should be on this website: "https://www.xtralife.com/producto/nintendogs-labrador-ds/481"
    And I should see a "xtralife" text