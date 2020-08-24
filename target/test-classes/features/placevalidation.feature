Feature: Validating Place API's
@Addplace @Regression
Scenario Outline: Verify if Place is Being Successfuly Added Using AddPlaceAPI
  Given Add Place Payload with "<name>" "<language>" "<address>"
  When User Calls "AddPlaceAPI" with "Post" http request
  Then the API call got success with status code 200
  And "Status" in response body is "OK"
  And "scope" in response body is "APP"
  And verify place Id created maps to "<name>" using "getPlaceAPI"
Examples:
     |name    | language |address           |
     |AAhouse | English  |World cross center|
#     |BBhouse | spanish  |sea cross senter  |

@DeletePlace @Regression
Scenario: Verify if Delete Place functionality is working

   Given DeletePlace Payload
   When User Calls "deletePlaceAPI" with "POST" http request
   Then the API call got success with status code 200
   And "Status" in response body is "OK"
   
   
     
     