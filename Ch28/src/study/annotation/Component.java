package study.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME) //실행되는동안 유지
public @interface Component {
	
	String value() default "";
}
