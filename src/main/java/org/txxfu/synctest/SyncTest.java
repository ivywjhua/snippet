package org.txxfu.synctest;

import java.util.ArrayList;
import java.util.List;

public class SyncTest {

	public static void main(String[] args) {
		AbstractQueue<String> queue = new SyncQueue2<String>();
		PutRun qr = new PutRun(queue);
		GetRun gr = new GetRun(queue);
		List<Thread> threads = new ArrayList<Thread>(20);
		for (int i = 0; i < 10; i++) {
			Thread t1 = new Thread(qr);
			Thread t2 = new Thread(gr);
			threads.add(t1);
			threads.add(t2);
			t1.start();
			t2.start();
		}
	}
}

class PutRun implements Runnable {

	private AbstractQueue<String> queue;

	public PutRun(AbstractQueue<String> queue) {
		super();
		this.queue = queue;
	}

	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			queue.putObject(String.valueOf(i));
		}
	}
}

class GetRun implements Runnable {

	private AbstractQueue<String> queue;

	public GetRun(AbstractQueue<String> queue) {
		super();
		this.queue = queue;
	}

	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			queue.getObject();
		}
	}
}