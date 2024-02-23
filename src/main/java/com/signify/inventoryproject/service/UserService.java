package com.signify.inventoryproject.service;

import com.signify.inventoryproject.entity.User;
import com.signify.inventoryproject.entity.VerificationToken;
import com.signify.inventoryproject.model.UserModel;
import com.signify.inventoryproject.model.UserProfile;

public interface UserService {

	User registerUser(UserModel userModel);

	String validateVerificationToken(String token);

	VerificationToken generateNewVerificationToken(String oldToken);

	void saveVerificationTokenForUser(String token, User user);

	Boolean existsByEmail(String email);

	UserProfile getUserProfile(Long id);

	UserProfile updateUserProfile(Long id, UserProfile userProfile);

	void deleteUserProfile(Long id);

	UserProfile getUserProfile(String email);

	VerificationToken getVerificationTokenForUser(Long id);

	
}
