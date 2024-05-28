package com.wavexc.payroll.service.discovery;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class WavExcDiscoveryServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(WavExcDiscoveryServerApplication.class, args);
	}

}
