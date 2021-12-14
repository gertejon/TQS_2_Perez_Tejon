Feature:
  As a user
  I want to navigate through the website's footer fields
  So I am aware about news and updates

  Scenario: The website allows the user seeing webpage's Instagram
    Given I go to the home page
    #And I accept cookies
    When I click on "Instagram" button
    And I switch to the opened tab
    Then I should be on this website: "https://www.instagram.com/3djuegos/"
    And I close the tab

  Scenario: The website allows the user seeing webpage's Twitter
    Given I go to the home page
    #And I accept cookies
    When I click on "Twitter" button
    And I switch to the opened tab
    Then I should be on this website: "https://twitter.com/3djuegos"
    And I close the tab

  Scenario: The website allows the user seeing webpage's TikTok
    Given I go to the home page
    #And I accept cookies
    When I click on "Facebook" button
    And I switch to the opened tab
    Then I should be on this website: "https://www.facebook.com/3djuegos"
    And I close the tab
