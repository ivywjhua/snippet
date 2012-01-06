package org.hzn.spring.context;

import org.hzn.service.flight.FlightService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppContextTest {

	public static void main(String[] args) {
		ApplicationContext con = new ClassPathXmlApplicationContext("applicationContext.xml");
		FlightService flightService = con.getBean(FlightService.class);
		String hello = flightService.sayHello("flight");
		System.out.println(hello);
		
	}
}
