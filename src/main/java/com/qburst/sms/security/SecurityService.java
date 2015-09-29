package com.qburst.sms.security;

import java.security.SecureRandom;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;


@Component
public class SecurityService {

	public String getHashedPassword(String username, String password) {
		SecureRandom secureRandom = new SecureRandom(username.getBytes());
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(10, secureRandom);
		return bCryptPasswordEncoder.encode(password);
	}

}
