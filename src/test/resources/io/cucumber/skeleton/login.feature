Feature:
  As a user
  I want to login into the website
  So I can have discounts and other benefits

  Scenario: The website doesn't allow you to log in if the password has not been filled in.
    Given I go to the home page
    When I click on "Iniciar sesión" button
    And I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with ""
    And I click on "Iniciar sesión" button
    Then I should see a "Lo sentimos, pero la cuenta de email y la clave de acceso no concuerdan con ninguna cuenta de usuario." text

  Scenario: The website doesn't allow to log in with an incorrect password.
    Given I go to the home page
    When I click on "Iniciar sesión" button
    And I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Estanoeslacontraseña"
    And I click on "Iniciar sesión" button
    Then I should see a "Información incorrecta" text

  Scenario: The website doesn't allow to log in with an incorrect email.
    Given I go to the home page
    When I click on "Iniciar sesión" button
    And I fill the mail box with "gerardtejon@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    And I click on "Iniciar sesión" button
    Then I should see a "Lo sentimos, pero la cuenta de email y la clave de acceso no concuerdan con ninguna cuenta de usuario." text

  Scenario: The website allow to log in with a correct email and password.
    Given I go to the home page
    When I click on "Iniciar sesión" button
    And I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    And I click on "Iniciar sesión" button
    Then I should see a "Conectado" text