Feature:
  As a user
  I want to interact with the web
  So I can access every single part of the web

  Scenario: The website can be browsed
    When I go to the home page
    Then I should see a "3DJUEGOS" button
    And I should see a "Inicio" button
    And I should see a "PS5" button
    And I should see a "PC" button

  Scenario: The website has a "Noticias" section on PC section
    Given I go to the home page
    When I click on "PC" button
    And I click on "Portada" button
    Then I should see a "Portada" button
    And I should see a "Análisis" button

  Scenario: The website has a "Foros" section
    Given I go to the home page
    When I click on "Foros" button
    And I click on "Nuevos Temas" button
    Then I should see a "Listado de los últimos temas creados en los foros" text
    And I should see a "Siguiente" button