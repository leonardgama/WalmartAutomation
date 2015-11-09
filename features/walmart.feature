Feature: As a customer who wants to buy a TV, I go to the Walmart website to buy it.

   Scenario: Access the Walmart.com website and look for the TV
     Given I'm on "https://www.walmart.com.br" page
     When I type "TV" in search field
     Then I should see "TV" in result
     When I click the item "AOC LE32D1352 2 HDMI"
     Then I should see "AOC LE32D1352 2 HDMI" in result


   Scenario: Put the chosen TV in the shopping cart
     Given I'm on "https://www.walmart.com.br" page
     When I type "TV" in search field
     Then I should see "TV" in result
     When I click the item "AOC LE32D1352 2 HDMI"
     Then I should see "AOC LE32D1352 2 HDMI" in result
     When I click the button "Adicionar ao carrinho"
     And I also click the button "Continuar"
     And I click the cart icon
     Then I should see "AOC LE32D1352 2 HDMI" in result

