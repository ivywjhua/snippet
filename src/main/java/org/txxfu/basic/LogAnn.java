package org.txxfu.basic;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.METHOD })
@interface LogAnn {

	/**
	 * Declares whether the annotated dependency is required.
	 * <p>
	 * Defaults to <code>true</code>.
	 */
	boolean output() default true;

}
