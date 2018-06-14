Feature: User can create a recipe book
  As a user
  in order to have my favourite recipes easily available
  I would like to create my own recipe collection

Background:
  Given We have the following user:
    | email             |
    | maran@test.com    |

  And We have the following recipes:
    | title             | user           |
    | Meatball-Stew     | maran@test.com |
    | Pizza             | maran@test.com |
    | Grilled Chicken   | maran@test.com |
       
  And I am logged in as "maran@test.com"

Scenario: User adds recipes to recipe book
  Given I am on the "Meatball-Stew" page
  And I click "Add to Collection"
  Then I should see "Recipe was added to collection"
  When I am on the "Pizza" page
  And I click "Add to Collection"
  Then I should see "Recipe was added to collection"
  When I visit My Collection page
  Then I should see "Meatball-Stew"
  And  I should see "Pizza"
  And  I should not see "Grilled Chicken"
  



  