Feature: User CRUD - PetStore API

  Background:
    * url baseUrl
    * def createData = read('user-data.json')
    * def updateData = read('update-user-data.json')

  Scenario: Create a new user
    Given path userEndpoint
    And request createData
    When method POST
    Then status 200

  Scenario: Get created user by username
    Given path userEndpoint + '/' + createData.username
    When method GET
    Then status 200
    And match response.firstName == createData.firstName
    And match response.email == createData.email

  Scenario: Update user data
    Given path userEndpoint + '/' + createData.username
    And request updateData
    When method PUT
    Then status 200

  Scenario: Get updated user data
    Given path userEndpoint + '/' + updateData.username
    When method GET
    Then status 200
    And match response.firstName == updateData.firstName
    And match response.email == updateData.email

  Scenario: Delete user account
    Given path userEndpoint + '/' + createData.username
    When method DELETE
    Then status 200
