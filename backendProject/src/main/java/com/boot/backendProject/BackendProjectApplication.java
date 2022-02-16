package com.boot.backendProject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackageClasses=MainController.class)

public class BackendProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(BackendProjectApplication.class, args);
	}

}
