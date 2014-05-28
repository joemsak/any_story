Feature: Read Stories
  Visitors can read stories
  That were written by Users

  Scenario: No stories have been written
    Given there are no stories written
    When I am on the stories page
    Then I should see that there are no stories
