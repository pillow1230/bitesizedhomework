package com.pillow.bitesizedhomework.web.json;
import com.pillow.bitesizedhomework.model.User;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = UsersCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = User.class, type = ControllerType.COLLECTION)
@RooJSON
public class UsersCollectionJsonController {
}
