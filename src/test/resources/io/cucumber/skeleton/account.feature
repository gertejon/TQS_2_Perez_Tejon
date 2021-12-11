Feature:
  As a registered user
  I want to know my profile

  Scenario: The website allows to know who are you following
    Given I go to the login page
    And I accept cookies
    When I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    And I click on "Seguidores" button
    Then I should see a "Todavía no sigues a ningún usuario." text

  Scenario: The website allows to know who are your friends and which are your favourites
    When I click on "Amigos" button
    And I accept cookies
    Then I should see a "Todavía no tienes ningún amigo." text
    When I click on "Favoritos" button
    Then I should see a "No has agregado a nadie a tu listado de favoritos." text

  Scenario: The website allows to know what messages you have written in the forum and your forum's themes
    When I click on "Foros" button
    And I accept cookies
    Then I click on "Tus mensajes" button
    And I should see a "Todavía no has participado en los foros." text
    When I click on "Tus temas" button
    Then I should see a "No has creado ningún tema en los foros" text
    