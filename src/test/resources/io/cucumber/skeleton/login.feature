Feature:
  As a user
  I want to login into the website
  So I can have discounts and other benefits

  Scenario: The website doesn't allow you to log in if the password has not been filled in.
    Given I go to the home page
    When I click on "Iniciar sesión" button
    And I fill the mail box with "1570021@autonoma.cat"
    And I click on "Iniciar sesión" button
    Then I should see a "Información incorrecta Lo sentimos, pero la cuenta de email y la clave de acceso no concuerdan con ninguna cuenta de usuario. Por favor, vuelve a escribirlas." text