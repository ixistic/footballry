Feature: Login process

  In order to use the forum, as a user, I must login

  Scenario: User login

  A user must login to use the forum.

    Given I am a user
    When I visit a login page
    Then I should see a login form
    When I submit the form to the post
    Then I should see the main page
