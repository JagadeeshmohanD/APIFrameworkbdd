package stepDefinations;

import java.io.IOException;

import io.cucumber.java.Before;

public class Hooks {

	@Before("@DeletePlace")
	public void beforScenario() throws IOException
	{
		//write a code that will give you place id
		//execute this code only when place id is null
		
	  stepDefination n = new stepDefination();
	  if(stepDefination.place_id==null)
	  {
	  n.add_Place_Payload_with("jags","French","Asia");
	  n.user_Calls_with_http_request("AddPlaceAPI", "POST");
	  n.verify_place_Id_created_maps_to_using("jags", "getPlaceAPI");
	  }
	  
	}
}
