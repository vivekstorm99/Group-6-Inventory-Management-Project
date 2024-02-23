package com.signify.inventoryproject.controller;

import com.signify.inventoryproject.model.ApiResponse;
import com.signify.inventoryproject.model.UserProfile;
import com.signify.inventoryproject.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@RequestMapping("/api/v1/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
//	@GetMapping("profile")
//	public ResponseEntity<ApiResponse> getUserProfile(@RequestBody UserRequest userRequest){
//			UserProfile userProfile = userService.getUserProfile(userRequest.getEmail());
//			return new ResponseEntity<ApiResponse>(new ApiResponse(true, "User Fetched Successfully", userProfile), HttpStatus.OK);
//	}
	
	@GetMapping("/{userId}/profile")
	public ResponseEntity<ApiResponse> getUserProfile(@PathVariable("userId") Long userId){
			UserProfile userProfile = userService.getUserProfile(userId);
			return new ResponseEntity<ApiResponse>(new ApiResponse(true, "User Fetched Successfully", userProfile), HttpStatus.OK);
	}
	
	
	@PutMapping("/profile/{id}")
	public ResponseEntity<ApiResponse> updateUserProfile(@PathVariable("id") Long id, @RequestBody UserProfile userProfile){
		UserProfile updatedUser = userService.updateUserProfile(id, userProfile);
		return new ResponseEntity<ApiResponse>(new ApiResponse(true, "User Updated Successfully", updatedUser), HttpStatus.OK);
	}
	
	
	@DeleteMapping("/profile/{id}")
	public ResponseEntity<ApiResponse> deleteUserProfile(@PathVariable("id") Long id){
		userService.deleteUserProfile(id);
		return new ResponseEntity<ApiResponse>(new ApiResponse("User deleted Successfully", true), HttpStatus.OK);
	}
	
//	@PostMapping("/resetpassword")
//	public ResponseEntity<ApiResponse> resetPassword(@RequestBody PasswordResetRequest passwordResetRequest){
//		
//		String verificationLink = applicationUrl(request)+ "/passwordResetVerification?token="+userService.getVerificationTokenForUser(user.getId()).getToken();
//		final  RegisterUserResponse registeredUser = new RegisterUserResponse(verificationLink);
//        return new ResponseEntity<ApiResponse>(new ApiResponse(true, "Password Reset initiated", registeredUser), HttpStatus.ACCEPTED);		
//	}
	
}
