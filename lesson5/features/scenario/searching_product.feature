Feature: Bukalapak

    Scenario: Searching product
      Given I am on Bukalapak home page
      When I search product "Iphone XS"
      Then I should see product "Iphone XS" at search result
      And default filter is "Relevansi"