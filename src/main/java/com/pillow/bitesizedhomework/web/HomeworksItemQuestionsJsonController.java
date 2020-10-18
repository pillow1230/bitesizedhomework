package com.pillow.bitesizedhomework.web;
import com.pillow.bitesizedhomework.model.Homework;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = HomeworksItemQuestionsJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Homework.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "questions")
@RooJSON
public class HomeworksItemQuestionsJsonController {
}
