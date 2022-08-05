package com.myown.rest;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myown.config.Configuration;
import com.myown.model.TimeoutConfig;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@AllArgsConstructor
public class GatewayServiceController {

	private Configuration configuration;

	@GetMapping("/timeout-config")
	public ResponseEntity<TimeoutConfig> getTimeoutConfiguration() {

		TimeoutConfig timeoutConfig = new TimeoutConfig();
		timeoutConfig.setConnectionTimeoutMillis(configuration.getConnectionTimeoutMillis());
		timeoutConfig.setReadTimeoutMillis(configuration.getReadTimeoutMillis());

		log.info("retrieving TimeoutConfig [{}]", timeoutConfig);

		return ResponseEntity.ok(timeoutConfig);
	}
}
