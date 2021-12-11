Feature:
  As a user
  I want to navigate through the website's footer fields
  So I am aware about news and updates

  Scenario: The website allows the user seeing webpage's Instagram
    Given I go to the home page
    And I accept cookies
    When I click on "Instagram" button
    Then I should be on this website: "https://www.instagram.com/3djuegos/"

  Scenario: The website allows the user seeing webpage's Twitter
    Given I go to the home page
    And I accept cookies
    When I click on "Twitter" button
    Then I should see a "Me gusta" text
    And I should see a "Fotos y videos" text
    And I should see a "Seguir" text

  Scenario: The website allows the user seeing webpage's TikTok
    Given I go to the home page
    And I accept cookies
    When I click on "TikTok" button
    Then I should see a "Follow" button
    And I should see a "Liked" button
    And I should see a "Upload" button
