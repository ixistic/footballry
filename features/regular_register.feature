Feature: Register process

  In order to use the forum, as a guest, I must register for go to main page

  Scenario: Guest register

  A guest must register to use the forum as user.

    Given I have information for register
    When I visit a register page
    Then I should see a register form
    When I submit the form to the register
    Then I should see the main page that already sign in
