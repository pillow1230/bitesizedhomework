package com.pillow.bitesizedhomework.web.json;
import com.pillow.bitesizedhomework.model.EClass;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = EClassesCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = EClass.class, type = ControllerType.COLLECTION)
@RooJSON
public class EClassesCollectionJsonController {
}
