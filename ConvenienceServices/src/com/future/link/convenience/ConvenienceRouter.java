package com.future.link.convenience;

import com.future.link.convenience.controller.PublishController;
import com.jfinal.config.Routes;

public class ConvenienceRouter extends Routes{

	@Override
	public void config() {
		// TODO Auto-generated method stub
		this.add("publish", PublishController.class);
	}

}
