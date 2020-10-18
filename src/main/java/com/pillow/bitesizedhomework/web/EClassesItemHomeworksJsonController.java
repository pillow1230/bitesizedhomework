package com.pillow.bitesizedhomework.web;
import com.pillow.bitesizedhomework.model.EClass;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = EClassesItemHomeworksJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = EClass.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "homeworks")
@RooJSON
public class EClassesItemHomeworksJsonController {
}
