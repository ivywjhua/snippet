package org.txxfu.rpc;

public class RpcProvider {

	public static void main(String[] args) throws Exception {
		HelloService helloService = new HelloServiceImpl();
		RpcFramework.export(helloService, 21234);
	}
}
