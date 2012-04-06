package org.txxfu.algo.hht.stack;

import java.util.Stack;

public class StackWithMin {

	private Stack<Integer> stack = new Stack<Integer>();

	private Stack<Integer> minStack = new Stack<Integer>();

	public Integer top() {
		return stack.peek();
	}

	public void push(Integer e) {
		stack.push(e);

		if (minStack.size() == 0) {
			minStack.push(0);
		} else {
			if (e < stack.elementAt(minStack.peek())) {
				minStack.push(stack.size() - 1);
			} else {
				minStack.push(minStack.peek());
			}
		}
	}

	public Integer pop() {
		minStack.pop();
		return stack.pop();
	}

	public Integer min() {
		return stack.elementAt(minStack.peek());
	}

	public static void main(String[] args) {
		StackWithMin stackWithMin = new StackWithMin();
		stackWithMin.push(3);
		System.out.println(stackWithMin.min());
		stackWithMin.push(4);
		System.out.println(stackWithMin.min());
		stackWithMin.push(2);
		System.out.println(stackWithMin.min());
		stackWithMin.push(1);
		System.out.println(stackWithMin.min());

		stackWithMin.pop();
		System.out.println(stackWithMin.min());
		stackWithMin.pop();
		System.out.println(stackWithMin.min());
		stackWithMin.push(0);
		System.out.println(stackWithMin.min());
	}
}
