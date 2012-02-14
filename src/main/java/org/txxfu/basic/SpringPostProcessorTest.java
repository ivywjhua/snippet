package org.txxfu.basic;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringPostProcessorTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"basic-context.xml");
		HelloService helloService = (HelloService) context
				.getBean("helloService");
		helloService.getHelloTag();
		// helloService.sayHello("test");
	}
}

interface HelloService {
	String sayHello(String str);

	String getHelloTag();
}

class HelloServiceImpl implements HelloService {

	private String helloTag;

	@Override
	@LogAnn
	public String sayHello(String str) {
		return helloTag + " " + str;
	}

	@LogAnn
	public String getHelloTag() {
		return helloTag;
	}

	public void setHelloTag(String helloTag) {
		this.helloTag = helloTag;
	}

}

class LogAnnotationBeanPostProcessor implements BeanPostProcessor {

	@Override
	public Object postProcessBeforeInitialization(Object bean, String beanName)
			throws BeansException {
		return bean;
	}

	@Override
	public Object postProcessAfterInitialization(Object bean, String beanName)
			throws BeansException {
		Method[] methods = bean.getClass().getDeclaredMethods();

		Object tmpBean = bean;
		for (Method method : methods) {
			LogAnn logann = method.getAnnotation(LogAnn.class);
			if (null == logann) {
				continue;
			} else {
				if (logann.output()) {
					final Object invokeBean = tmpBean;
					tmpBean = Proxy.newProxyInstance(getClass()
							.getClassLoader(), invokeBean.getClass()
							.getInterfaces(), new InvocationHandler() {

						@Override
						public Object invoke(Object proxy, Method method,
								Object[] args) throws Throwable {
							System.out.println(args);
							Object result = method.invoke(invokeBean, args);
							System.out.println(result);
							return result;
						}
					});
				} else {
					continue;
				}
			}
		}
		return tmpBean;
	}

}
