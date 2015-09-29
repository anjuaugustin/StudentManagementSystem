package com.qburst.sms.security;
import java.security.SecureRandom;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class QuickPasswordEncodingGenerator {

	public static void main(String[] args) {
		String password = "asd";
		String pw_hash=BCrypt.hashpw(password, BCrypt.gensalt(10));
		String pw_hash2=BCrypt.hashpw(password,BCrypt.gensalt(12) );
		System.out.println(pw_hash);
		String pass="123";
		System.out.println((BCrypt.checkpw(pass, pw_hash)));
		System.out.println((BCrypt.checkpw(pass, pw_hash2)));
		String username="qwe";
		SecureRandom random=new SecureRandom(username.getBytes());
		
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(10, random);
		String pw_hash3=passwordEncoder.encode(password);
		System.out.println(pw_hash3);
		System.out.println(passwordEncoder.matches(password, pw_hash3));
	}

}
