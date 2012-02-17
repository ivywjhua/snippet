package org.txxfu.log;

import java.lang.reflect.Method;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component("logAspect")
public class LogAspect {

	@Around("@annotation(com.shengpay.ppc.makecard.common.logger.LogAnn))")
	public Object invoke(ProceedingJoinPoint jointPoint) throws Throwable {
		MethodSignature ms = (MethodSignature) jointPoint.getSignature();
		Method method = ms.getMethod();
		Object[] args = jointPoint.getArgs();
		Logger logger = LoggerFactory.getLogger(jointPoint.getClass());
		long threadId = Thread.currentThread().getId();

		String thread = "\n[t:" + threadId + "]";
		long beginMillis = System.currentTimeMillis();
		String cId = "[c:" + beginMillis + "]";

		String mInfo = "[m:"
				+ jointPoint.getTarget().getClass().getSimpleName() + "."
				+ method.getName() + "]";

		logger.info(thread + cId + mInfo + serialArgu(args));
		try {
			Object result = jointPoint.proceed();
			long endMillis = System.currentTimeMillis();
			logger.info(thread + cId + mInfo + "return " + serialArgu(result)
					+ " [" + (endMillis - beginMillis) + "]");
			return result;
		} catch (Exception e) {
			long endMillis = System.currentTimeMillis();
			logger.error(thread + cId + mInfo + " error ["
					+ (endMillis - beginMillis) + "]", e);
			throw e;
		}
	}

	private String serialArgu(Object obj) {
		if (null == obj) {
			return "void";
		}
		Class<? extends Object> clazz = obj.getClass();
		if (clazz.isPrimitive()) {
			return String.valueOf(obj);
		}

		return ToStringBuilder.reflectionToString(obj);
	}

}
