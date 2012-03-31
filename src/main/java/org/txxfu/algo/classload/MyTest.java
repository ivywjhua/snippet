package org.txxfu.algo.classload;

class MyUtil {
	public static String getString1() {
		return "Hello world!";
	}

	public static String getString2() {
		return "bye...";
	}
}

interface MyInterface {
	static String name = "Name";
	static String helloStr = MyUtil.getString1();
	static String byeStr = MyUtil.getString2();
}

public class MyTest implements MyInterface {
	private void test() {
		System.out.println(name);
		System.out.println(byeStr);
		System.out.println(helloStr);
	}

	public static void main(String[] args) {
		MyTest myTest = new MyTest();
		myTest.test();
	}
}