package org.txxfu.rpc;

public class HelloServiceImpl implements HelloService {

	@Override
	public String sayHello(String name) {
		return "Hello " + name;
	}

	@Override
	public String sayHello(String name, int times) {
		return "Hello " + name + "\t" + times;
	}

}
