package org.txxfu.rpc;

import java.util.concurrent.atomic.AtomicInteger;

public class RpcConsumer {

	public static void main(String[] args) throws Exception {
		doConsume();
	}

	private static void doConsume() {
		final HelloService helloService = RpcFramework.refer(
				HelloService.class, "127.0.0.1", 21234);

		int threadNum = 50;
		final int invokeNum = 50;
		final AtomicInteger count = new AtomicInteger();
		for (int i = 0; i < threadNum; i++) {
			final int t = i;
			new Thread(new Runnable() {

				@Override
				public void run() {
					for (int j = 0; j < invokeNum; j++) {
						@SuppressWarnings("unused")
						String sayHello = helloService.sayHello("World " + j);
						String sayHello2 = helloService.sayHello("name", count.get());
						count.incrementAndGet();
						System.out.println("thread\t" + t + "\t " + sayHello2 + "\t" + count.get());
					}
				}
			}).start();
		}
	}
}
