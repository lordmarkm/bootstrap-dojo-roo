package com.bootstrapdojo.web;
import com.bootstrapdojo.domain.Tshirt;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = TshirtsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Tshirt.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class TshirtsCollectionJsonController {
}
