package com.validators;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Target({ ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = { CompanyHasEnoughMoneyValidator.class })
public @interface CompanyHasEnoughMoney {

	String message() default "Shipping company balance is less than cost of ship - Cannot place order";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
}
