package org.txxfu.spring.context;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.txxfu.spring.service.flight.FlightService;

public class AppContextTest {

	public static void main(String[] args) {
		ApplicationContext con = new ClassPathXmlApplicationContext("applicationContext.xml");
		FlightService flightService = con.getBean(FlightService.class);
		String hello = flightService.sayHello("flight");
		System.out.println(hello);
		
		
	}
}
