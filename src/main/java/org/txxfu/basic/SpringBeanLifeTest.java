package org.txxfu.basic;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringBeanLifeTest {

	public static void main(String[] args) throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"basic-context.xml");
		UserBean userBean = (UserBean) context.getBean("userBean");
		System.out.println("main\t" + userBean.getName());
		userBean.destroy();
	}
}

class UserBean implements BeanNameAware, BeanFactoryAware,
		ApplicationContextAware, BeanPostProcessor, InitializingBean,
		DisposableBean {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
		 System.out.println("调用setName()..." );  
	}

	public void customInit() {
		System.out.println("customInit()...");
	}

	public void customDestroy() {
		System.out.println("customDestroy()...");
	}

	@Override
	public void destroy() throws Exception {
		System.out.println("DisposableBean\tdestroy");

	}

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("InitializingBean\tafterPropertiesSet");
	}

	@Override
	public Object postProcessBeforeInitialization(Object bean, String beanName)
			throws BeansException {
//		System.out.println("BeanPostProcessor\tpostProcessBeforeInitialization");
		return bean;
	}

	@Override
	public Object postProcessAfterInitialization(Object bean, String beanName)
			throws BeansException {
//		System.out.println("BeanPostProcessor\tpostProcessAfterInitialization");
		return bean;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		System.out.println("ApplicationContextAware\tsetApplicationContext");
	}

	@Override
	public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
		System.out.println("BeanFactoryAware\tsetBeanFactory");
	}

	@Override
	public void setBeanName(String name) {
		System.out.println("BeanNameAware\tsetBeanName");
	}

}
