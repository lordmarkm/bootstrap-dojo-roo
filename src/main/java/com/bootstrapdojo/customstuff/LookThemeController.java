package com.bootstrapdojo.customstuff;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/look")
public class LookThemeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView lookIndex() {
		return new ModelAndView("look/homepage-two")
				.addObject("message", "Bootstrap Dojo");
	}

}
