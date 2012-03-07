package org.txxfu.synctest;

import java.util.ArrayList;
import java.util.List;

public class Account {

	private int balance;

	public Account(int balance) {
		super();
		this.balance = balance;
	}

	private Object balLock = new Object();

	public void add(int num) {
		synchronized (balLock) {
			balance += num;
			System.out.println("add " + num + ": Thread "
					+ Thread.currentThread().getId());
		}
	}

	public void withdraw(int num) {
		synchronized (balLock) {
			balance -= num;
			System.out.println("withdraw " + num + ": Thread "
					+ Thread.currentThread().getId());
		}
	}

	public static void main(String[] args) throws InterruptedException {
		Account account = new Account(10000);
		AddRun addRun = new AddRun(account);
		WithdrawRun withdrawRun = new WithdrawRun(account);
		List<Thread> threads = new ArrayList<Thread>(20);
		for (int i = 0; i < 10; i++) {
			Thread t1 = new Thread(addRun);
			Thread t2 = new Thread(withdrawRun);
			threads.add(t1);
			threads.add(t2);
		}
		for (Thread thread : threads) {
			thread.start();
		}
		for (Thread thread : threads) {
			thread.join();
		}

		System.out.println("bal " + account.balance);
	}
}

class AddRun implements Runnable {

	private Account account;

	public AddRun(Account account) {
		super();
		this.account = account;
	}

	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			account.add(20);
		}
	}

}

class WithdrawRun implements Runnable {

	private Account account;

	public WithdrawRun(Account account) {
		super();
		this.account = account;
	}

	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			account.withdraw(20);
		}

	}

}
