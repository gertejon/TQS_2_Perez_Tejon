Feature:
  As a user
  I want to login into the website
  So I can have discounts and other benefits

  Scenario: The website doesn't allow you to log in if the password has not been filled in.
    Given I go to the login page
    And I accept cookies
    When I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with ""
    Then I should see a "Lo sentimos, pero la cuenta de email y la clave de acceso no concuerdan con ninguna cuenta de usuario." text
    And I should see a "Usuario anónimo" text

  Scenario: The website doesn't allow to log in with an incorrect password.
    Given I go to the login page
    And I accept cookies
    When I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Estanoeslacontraseña"
    Then I should see a "Información incorrecta" text
    And I should see a "Usuario anónimo" text

  Scenario: The website doesn't allow to log in with an incorrect email.
    Given I go to the login page
    And I accept cookies
    When I fill the mail box with "gerardtejon@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    Then I should see a "Lo sentimos, pero la cuenta de email y la clave de acceso no concuerdan con ninguna cuenta de usuario." text
    And I should see a "Usuario anónimo" text

  Scenario: The website allow to log in with a correct email and password.
    Given I go to the login page
    And I accept cookies
    When I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    Then I should see a "TQS21" text
    And I should see a "Conectado" text