package com.pillow.bitesizedhomework.web.json;
import com.pillow.bitesizedhomework.model.Question;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = QuestionsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Question.class, type = ControllerType.COLLECTION)
@RooJSON
public class QuestionsCollectionJsonController {
}
