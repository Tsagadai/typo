Feature: Article merging
  As an admin user
  I should be able to merge the current article with another article
  In order to preserve both articles but merge them together into one article
  
  Scenario: A non-admin cannot merge articles.
    Given the blog is set up
    And I am a regular user
    When I visit the first article
    Then I should see "Merge articles"
    When I fill in "Article ID" with "something"
    And I press "Merge"
    Then I should see "You are not permitted to do that"
  Scenario: When articles are merged, the merged article should contain the text of both previous articles.
  Scenario: When articles are merged, the merged article should have one author (either one of the authors of the two original articles).
  Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.
  Scenario: The title of the new article should be the title from either one of the merged articles.
  Scenario: The form field containing the ID of the article to merge with must have the HTML attribute name set to merge_with. This requirement is present for the sole purpose of allowing the autograder to identify the merge functionality in your deployed application and is not something you would normally do in Rails. There should be exactly one input element with the name merge_with on the edit article page.