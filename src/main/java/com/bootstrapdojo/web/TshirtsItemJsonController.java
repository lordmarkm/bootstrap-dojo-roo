package com.bootstrapdojo.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

import com.bootstrapdojo.domain.Tshirt;

/**
 * = TshirtsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Tshirt.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class TshirtsItemJsonController {

}
