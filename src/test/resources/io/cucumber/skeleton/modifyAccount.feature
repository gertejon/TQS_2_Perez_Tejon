Feature:
  As a registered user
  I want to modify my account
  So I have control over it

  Scenario: The website allows the user to recover their password
    Given I go to the login page
    #And I accept cookies
    And I fill the mail box with "jphofland@gmail.com"
    And I fill the password box with "Eltestescorrecto"
    And I click on "Preferencias" button
    And I click on "Cuenta" button
    When I click on "He olvidado mi clave de acceso" button
    And I fill the "recuperar_email" box with "jphofland@gmail.com"
    Then I should see a "¡Clave de acceso enviada!" text

  Scenario: The website allows the user to change their password
    Given I go to the login page
    #And I accept cookies
    #And I fill the mail box with "jphofland@gmail.com"
    #And I fill the password box with "Eltestescorrecto"
    And I click on "Preferencias" button
    And I click on "Cuenta" button
    When I click on "Cambiar clave de acceso" button
    And I fill the "login_pass" box with "Eltestescorrecto"
    And I fill the "reg_password1" box with "newpassword"
    And I fill the "reg_password2" box with "newpassword"
    And I click on "Cambiar clave de acceso" button
    Then I should see a "Tu clave de acceso ha sido cambiada con éxito." text
    And I click on "Cuenta" button
    And I click on "Cambiar clave de acceso" button
    And I set the password to default

  Scenario: The website allows the user to change their mail
    Given I go to the login page
    #And I accept cookies
    #And I fill the mail box with "jphofland@gmail.com"
    #And I fill the password box with "Eltestescorrecto"
    And I click on "Preferencias" button
    And I click on "Cuenta" button
    When I click on "Cambiar dirección de correo" button
    And I fill the "login_pass" box with "Eltestescorrecto"
    And I fill the "reg_email1" box with "gerard.tejon@e-campus.uab.cat"
    And I fill the "reg_email2" box with "gerard.tejon@e-campus.uab.cat"
    And I click on "Cambiar email" button
    Then I should see a "El email ha sido cambiado con éxito." text
    And I click on "Cuenta" button
    And I click on "Cambiar dirección de correo" button
    And I set the email to default
