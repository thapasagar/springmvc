package com.bootcamp.ektha.rewardsprogram.util;

public class MissingParam extends Exception{

	private static final long serialVersionUID = 1L;
	
	public MissingParam(){
		super("Parameter is Missing");
	}
}
