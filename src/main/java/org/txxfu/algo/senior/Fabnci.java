package org.txxfu.algo.senior;

public class Fabnci {

	public static void main(String[] args) {
		
		int p1 = 0;
		int p2 = 1;
		
		int n = 8;
		
		for (int i = 2; i < n; i++) {
			int p = p2 + p1;
			p1 = p2;
			p2 = p;
		}
		
		System.out.println(p2);
		
	}
	
}
