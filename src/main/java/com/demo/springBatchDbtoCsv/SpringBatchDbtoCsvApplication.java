package com.demo.springBatchDbtoCsv;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.r2dbc.R2dbcAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

/**
 * Spring Batch Db To Csv Application.
 * 
 * @author QuynhNN
 */
@SpringBootApplication(exclude = { R2dbcAutoConfiguration.class })
@EnableAutoConfiguration(exclude = { R2dbcAutoConfiguration.class })
@ComponentScan("com.demo.springBatchDbtoCsv.*")
public class SpringBatchDbtoCsvApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBatchDbtoCsvApplication.class, args);
	}

}
