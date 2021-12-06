Feature:
  As a user
  I want to perform searches in the search box
  So that data can be filtered


  Scenario: The website allows to search Mario Bros' games
    When I fill the search box with "Mario Bros"
    Then I should see a "Todos" button/text


