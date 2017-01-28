package com.bootstrapdojo.web;
import com.bootstrapdojo.domain.Tshirt;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = TshirtsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Tshirt.class, type = ControllerType.ITEM)
@RooThymeleaf
public class TshirtsItemThymeleafController {
}
