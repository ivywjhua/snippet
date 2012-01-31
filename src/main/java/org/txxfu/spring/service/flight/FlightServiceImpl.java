package org.txxfu.spring.service.flight;

import org.springframework.stereotype.Service;

@Service
public class FlightServiceImpl implements FlightService {

	@Override
	public String sayHello(String str) {
		String r = "Hello " + str;
		System.out.println(r);
		return r;
	}

}
