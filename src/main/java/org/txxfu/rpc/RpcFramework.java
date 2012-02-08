package org.txxfu.rpc;

import java.io.Closeable;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * 每一次RPC, Server都新起一个线程。 Client 新建一个socket连接到Server，写入数据，然后等待数据返回，关闭连接和socket
 * Server为每个连接新建一个线程，读出数据，反射执行，写回数据，关闭连接和socket
 * 
 * 改进方面
 * Client端启用连接池, 支持异步回调
 * 
 * @author txxfu
 * 
 */
public class RpcFramework {

	public static void export(final Object service, int port) throws Exception {
		if (null == service) {
			throw new IllegalArgumentException("service instance null");
		}
		if (port <= 0 || port > 65535) {
			throw new IllegalArgumentException("invalid port " + port);
		}

		ServerSocket serverSocket = new ServerSocket(port);
		while (true) {
			final Socket socket = serverSocket.accept();
			new Thread(new ServiceHandleRunnable(socket, service)).start();
		}
	}

	@SuppressWarnings("unchecked")
	public static <T> T refer(Class<?> serviceClazz, final String host,
			final int port) {
		if (null == serviceClazz) {
			throw new IllegalArgumentException("service class null");
		}
		if (!serviceClazz.isInterface()) {
			throw new IllegalArgumentException("service class is not interface");
		}
		if (null == host || host.isEmpty()) {
			throw new IllegalArgumentException("invalid host " + host);
		}
		if (port <= 0 || port > 65535) {
			throw new IllegalArgumentException("invalid port " + port);
		}

		return (T) Proxy.newProxyInstance(serviceClazz.getClassLoader(),
				new Class[] { serviceClazz }, new ServiceInvocationHandler(
						host, port));
	}

	private static void closeQuietly(Closeable obj) throws IOException {
		try {
			if (null != obj) {
				obj.close();
			}
		} catch (IOException e) {
			throw e;
		}
	}

	private static void closeSocketQuietly(Socket socket) throws IOException {
		try {
			if (null != socket) {
				socket.close();
			}
		} catch (IOException e) {
			throw e;
		}
	}

	private static class ServiceHandleRunnable implements Runnable {

		private Socket socket;

		private Object service;

		public ServiceHandleRunnable(Socket socket, Object service) {
			super();
			this.socket = socket;
			this.service = service;
		}

		@Override
		public void run() {
			doWork();
		}

		private void doWork() {
			ObjectInputStream input = null;
			ObjectOutputStream output = null;
			try {
				try {
					// read data
					input = new ObjectInputStream(socket.getInputStream());
					String methodName = input.readUTF();
					@SuppressWarnings("rawtypes")
					Class[] pTypes = (Class[]) input.readObject();
					Object[] args = (Object[]) input.readObject();

					// invoke and write data
					output = new ObjectOutputStream(socket.getOutputStream());
					Method method = service.getClass().getMethod(methodName,
							pTypes);
					Object result = method.invoke(service, args);
					output.writeObject(result);
				} catch (Throwable e) {
					if (null != output) {
						output.writeObject(e);
					}
				} finally {
					closeQuietly(output);
					closeQuietly(input);
					closeSocketQuietly(socket);
				}
			} catch (Exception e) {
				System.err.println(e);
			}
		}
	}

	private static class ServiceInvocationHandler implements InvocationHandler {
		private String host;
		private int port;

		public ServiceInvocationHandler(String host, int port) {
			super();
			this.host = host;
			this.port = port;
		}

		@Override
		public Object invoke(Object proxy, Method method, Object[] args)
				throws Throwable {
			Socket socket = null;
			ObjectOutputStream output = null;
			ObjectInputStream input = null;
			try {
				try {
					// build socket
					socket = new Socket(host, port);
					output = new ObjectOutputStream(socket.getOutputStream());

					// wirite data
					output.writeUTF(method.getName());
					output.writeObject(method.getParameterTypes());
					output.writeObject(args);

					// read result
					input = new ObjectInputStream(socket.getInputStream());
					Object result = input.readObject();
					if (result instanceof Throwable) {
						throw (Throwable) result;
					}
					return result;
				} finally {
					closeQuietly(input);
					closeQuietly(output);
					closeSocketQuietly(socket);
				}
			} catch (Exception e) {
				throw e;
			}
		}
	}

}
