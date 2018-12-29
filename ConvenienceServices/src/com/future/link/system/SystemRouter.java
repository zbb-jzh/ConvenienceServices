package com.future.link.system;

import com.future.link.system.controller.CarouselController;
import com.jfinal.config.Routes;

public class SystemRouter extends Routes{

	@Override
	public void config() {
		// TODO Auto-generated method stub
		this.add("carousel", CarouselController.class);
	}

}
