Feature: Admin add user process

  Admin should to have permission to manage user

  Scenario: Admin add new user

  Admin should can add new user

    Given I am a admin
    And I have information of new users
    And I am signed in
    When I visit a admin page
    Then I should see a link 'User' for manage user
    When I click the link 'User'
    Then I should see a link 'Add new' for add new user
    When I click the link 'Add new'
    Then I should see a add user form
    When I submit the form for add new user
    Then I should see the new user