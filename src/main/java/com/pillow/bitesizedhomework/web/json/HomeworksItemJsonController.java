package com.pillow.bitesizedhomework.web.json;
import com.pillow.bitesizedhomework.model.Homework;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = HomeworksItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Homework.class, type = ControllerType.ITEM)
@RooJSON
public class HomeworksItemJsonController {
}
