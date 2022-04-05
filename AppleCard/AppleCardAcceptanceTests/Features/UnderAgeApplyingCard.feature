
Feature: Applying for Credit Card while under 18

Scenario: As a user who is less than 18 years old, when I apply for a credit card then it should be denied

Given the following user information
| name     | ssn         | dob        |
| John Doe | 234-56-7777 | 02/10/2015 |
When I press the apply button
Then I should get a rejection message
