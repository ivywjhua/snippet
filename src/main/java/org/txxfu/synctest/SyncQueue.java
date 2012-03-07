package org.txxfu.synctest;

import java.util.ArrayList;
import java.util.List;

public class SyncQueue<T> implements AbstractQueue<T> {

	private List<T> queue = new ArrayList<T>();

	@Override
	public synchronized void putObject(T obj) {
		while (queue.size() > 0) {
			try {
				wait();
			} catch (InterruptedException e) {
				//
			}
		}
		queue.add(obj);
		System.out.println(Thread.currentThread().getId() + " put " + obj);
		notifyAll();
	}

	@Override
	public synchronized T getObject() {
		while (queue.size() == 0) {
			try {
				wait();
			} catch (InterruptedException e) {
				//
			}
		}

		T obj = queue.get(0);
		queue.clear();
		System.out.println(Thread.currentThread().getId() + " get " + obj);
		notifyAll();
		return obj;
	}

}
