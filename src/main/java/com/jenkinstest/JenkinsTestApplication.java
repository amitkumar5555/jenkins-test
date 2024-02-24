package com.jenkinstest;

import jakarta.annotation.PostConstruct;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class JenkinsTestApplication {

	public static Logger logger = LoggerFactory.getLogger(JenkinsTestApplication.class);

	@PostConstruct
	public void initt(){
		logger.info("Application initiates");
	}

	public static void main(String[] args) {
		logger.info("Application Starts");
		SpringApplication.run(JenkinsTestApplication.class, args);
	}

	@GetMapping("/name/{name}")
	public ResponseEntity<?> getFirstName(@PathVariable String name){
		return ResponseEntity.ok("Hi "+ name+ "This is First App And It is working");
	}

}
