package com.bootcamp.ektha.rewardsprogram.service;

import java.io.IOException;

import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.UnsupportedCallbackException;

import org.apache.wss4j.common.ext.WSPasswordCallback;

public class PasswordCallback implements CallbackHandler {

	public void handle(Callback[] callbacks) throws IOException, UnsupportedCallbackException {
		WSPasswordCallback pc = (WSPasswordCallback) callbacks[0];

		if ("joe".equals(pc.getIdentifier())) {
			System.out.println("pc.getPassword() " + pc.getPassword());
			pc.setPassword("joePassword");
		}
	}
}
