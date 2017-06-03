package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.codec.Base64;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import UIT.SE325H22.Group2.model.MuscleType;
import UIT.SE325H22.Group2.service.intf.IMuscleTypeService;
import UIT.SE325H22.Group2.viewmodel.LoginViewModel;
import UIT.SE325H22.Group2.viewmodel.MuscleTypeComboboxViewModel;

@RestController
public class AccountController {
//	@Autowired
//	IMuscleTypeService muscleTypeService;
//	
//	@RequestMapping(value = "/getMuscleType/{id}", method = RequestMethod.GET, headers = "Accept=application/json")


	@RequestMapping(value = "/userlogin", method = RequestMethod.POST, headers = "Accept=application/json")
	public String Login(@RequestBody LoginViewModel model) {
		
		if(model.getUsername().equals("gymweb") &&model.getPassword().equals("gymweb")){
			String plainCredentials=model.getUsername()+":"+model.getPassword();

			   String base64Credentials = new String(Base64.encode(plainCredentials.getBytes()));
			   HttpHeaders headers = new HttpHeaders();
			       // headers.add("Authorization", "Basic " + base64Credentials);
			      //  headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
			       // headers.SET_COOKIE("a","b");
			        
			        
//			        Cookie ckSoLan = new Cookie("solan", "abc");
//					ckSoLan.setMaxAge(60 * 60 * 24);
					//Response.addCookie(ckSoLan);
					
			        return base64Credentials;
		}
		return null;
		
	}

//	@RequestMapping(value = "/updateMuscleType", method = RequestMethod.PUT, headers = "Accept=application/json")
//	public void updateMuscleType(@RequestBody MuscleType muscleType) {
//		muscleTypeService.update(muscleType);
//	}

	

}
