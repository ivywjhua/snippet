package org.txxfu.algo.hht.stack;

import java.util.Stack;

public class StackQueue<E> {

	private Stack<E> stack1 = new Stack<E>();

	private Stack<E> stack2 = new Stack<E>();

	public void appendTail(E e) {
		stack1.push(e);
	}

	public E deleteHead() {
		if (stack2.isEmpty()) {
			while (!stack1.isEmpty()) {
				stack2.push(stack1.pop());
			}
		}
		
		if (stack2.isEmpty()) {
			throw new RuntimeException("queue is empty");
		}
		
		return stack2.pop();
	}

	public static void main(String[] args) {
		StackQueue<Integer> queue = new StackQueue<Integer>();
		queue.appendTail(1);
		queue.appendTail(2);
		queue.appendTail(3);
		
		System.out.println(queue.deleteHead());
		
		queue.appendTail(4);
		
		System.out.println(queue.deleteHead());
		
		queue.appendTail(5);
		
		System.out.println(queue.deleteHead());
		System.out.println(queue.deleteHead());
		System.out.println(queue.deleteHead());
	}
}
