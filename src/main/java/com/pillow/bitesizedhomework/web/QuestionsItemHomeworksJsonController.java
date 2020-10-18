package com.pillow.bitesizedhomework.web;
import com.pillow.bitesizedhomework.model.Question;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = QuestionsItemHomeworksJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Question.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "homeworks")
@RooJSON
public class QuestionsItemHomeworksJsonController {
}
