package org.txxfu.rpc;

public interface HelloService {

	String sayHello(String name);
	
	String sayHello(String name, int times);
}
