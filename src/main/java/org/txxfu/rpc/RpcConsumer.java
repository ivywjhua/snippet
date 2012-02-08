package org.txxfu.rpc;

import java.util.concurrent.atomic.AtomicInteger;

public class RpcConsumer {

	public static void main(String[] args) throws Exception {
		doConsume();
	}

	private static void doConsume() {
		final HelloService helloService = RpcFramework.refer(
				HelloService.class, "127.0.0.1", 21234);

		int threadNum = 1000;
		final int invokeNum = 20;
		final AtomicInteger count = new AtomicInteger();
		for (int i = 0; i < threadNum; i++) {
			final int t = i;
			new Thread(new Runnable() {

				@Override
				public void run() {
					for (int j = 0; j < invokeNum; j++) {
						String sayHello = helloService.sayHello("World " + j);
						count.incrementAndGet();
						System.out.println("thread\t" + t + "\t " + sayHello + "\t" + count.get());
					}
				}
			}).start();
		}
	}
}
