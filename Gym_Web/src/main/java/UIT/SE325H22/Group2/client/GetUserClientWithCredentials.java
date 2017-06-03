package UIT.SE325H22.Group2.client;

import java.util.Arrays;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.codec.Base64;
import org.springframework.web.client.RestTemplate;


public class GetUserClientWithCredentials {
	
	/*
     * Add HTTP Authorization header, using Basic-Authentication to send user-credentials.
     */
    private static HttpHeaders getHeaders(){
     //   String plainCredentials="admin:admin";
     //   gymweb
        String plainCredentials="gymweb:gymweb";
        String base64Credentials = new String(Base64.encode(plainCredentials.getBytes()));
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Basic " + base64Credentials);
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        return headers;
    }
    
	public static void main(String[] args) {
//		RestTemplate restTemplate = new RestTemplate();
//		final String url = "http://localhost:8080/SpringRestServiceSecurityBasic/rest/user/1";
		HttpEntity<String> request = new HttpEntity<String>(getHeaders());
		System.out.println(request);
		
//		ResponseEntity<User> userResponse = restTemplate.exchange(url,HttpMethod.GET,request, User.class);
//		System.out.println("User retrieved details : ");
//		User user =userResponse.getBody();
//		System.out.println(user.getName() + " " + user.getAge() + " " + user.getId());

	}


}
