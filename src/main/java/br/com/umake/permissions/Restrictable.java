package br.com.umake.permissions;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface Restrictable {

	PermissionAnnotation[] permissions() default  @PermissionAnnotation(context = "", permissionsTypes = {});
	
}
