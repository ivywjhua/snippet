package org.txxfu.algo.hht.stack;

import java.util.Queue;
import java.util.concurrent.LinkedBlockingDeque;

public class QueueStack<E> {

	private Queue<E> queue1 = new LinkedBlockingDeque<E>();
	private Queue<E> queue2 = new LinkedBlockingDeque<E>();

	public void push(E e) {
		queue1.add(e);
	}

	public E pop() {
		if (queue1.size() > 1) {
			int orinLen = queue1.size();
			for (int i = 0; i < orinLen -1 ; i++) {
				queue2.add(queue1.poll());
			}
			E top = queue1.poll();

			Queue<E> tmp = queue1;
			queue1 = queue2;
			queue2 = tmp;
			return top;
		} else {
			return queue1.poll();
		}
	}

	public E top() {
		if (queue1.size() > 1) {
			int orinLen = queue1.size();
			for (int i = 0; i < orinLen - 1; i++) {
				queue2.add(queue1.poll());
			}
			E top = queue1.peek();

			return top;
		} else {
			return queue1.peek();
		}
	}

	public static void main(String[] args) {
		QueueStack<Integer> stack = new QueueStack<Integer>();
		stack.push(1);
		stack.push(2);
		stack.push(3);
		System.out.println(stack.top());
		System.out.println(stack.pop());
		System.out.println(stack.top());
		stack.push(4);
		stack.push(5);
		System.out.println(stack.pop());
		System.out.println(stack.pop());
		System.out.println(stack.pop());
		System.out.println(stack.pop());
	}

}
