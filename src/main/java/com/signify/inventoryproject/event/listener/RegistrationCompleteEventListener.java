package com.signify.inventoryproject.event.listener;

import com.signify.inventoryproject.entity.User;
import com.signify.inventoryproject.event.RegistrationCompleteEvent;
import com.signify.inventoryproject.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
@Slf4j
public class RegistrationCompleteEventListener implements ApplicationListener<RegistrationCompleteEvent> {

	@Autowired
	private UserService userService;
	
	@Override
	public void onApplicationEvent(RegistrationCompleteEvent event) {
		// TODO Auto-generated method stub
		// Create verification token for user with link
		User user = event.getUser();
		String token = UUID.randomUUID().toString();
		userService.saveVerificationTokenForUser(token, user);
		//Send email
		String url = event.getApplicationUrl()+ "/verifyRegistration?token="+token;
		// just mimicking email sending here
		log.info("URL link to verify: {}",url);
	}
}
