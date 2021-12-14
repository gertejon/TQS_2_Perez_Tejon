Feature:
  As a registered user
  I want to logout my session
  So I can prevent someone else has access to it

  Scenario: The website allows logging out while being in the main page
    Given I go to the login page
    And I accept cookies
    And I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    And I click "login_boton_enviar"
    When I click on "Salir" button
    And I go to the home page
    Then I should see a "Iniciar sesión" button
    And I should see a "Regístrate gratis" button

  Scenario: The website allows logging out while navigating through articles section
    Given I go to the login page
    #And I accept cookies
    And I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    And I click "login_boton_enviar"
    And I click on "Artículos" button
    When I click on "Salir" button
    And I go to the home page
    Then I should see a "Iniciar sesión" button
    And I should see a "Regístrate gratis" button

  Scenario: The website allows logging out from user's personal section
    Given I go to the login page
    #And I accept cookies
    And I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    And I click "login_boton_enviar"
    And I click on "Inicio" button
    When I click on "Salir" button
    And I go to the home page
    Then I should see a "Iniciar sesión" button
    And I should see a "Regístrate gratis" button