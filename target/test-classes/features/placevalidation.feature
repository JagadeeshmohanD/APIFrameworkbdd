Feature: Validating Place API's

Scenario: Verify if Place is Being Successfuly Added Using AddPlaceAPI
  Given Add Place Payload
  When User Calls "AddPlaceAPI" with Post http request
  Then the API call got success with status code 200
  And "Status" in response body is "OK"
  And "scope" in response body is "APP"