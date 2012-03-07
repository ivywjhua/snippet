package org.txxfu.synctest;

public interface AbstractQueue<T> {

	public abstract void putObject(T obj);

	public abstract T getObject();

}