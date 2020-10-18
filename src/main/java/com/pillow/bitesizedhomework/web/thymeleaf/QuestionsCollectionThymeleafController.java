package com.pillow.bitesizedhomework.web.thymeleaf;
import com.pillow.bitesizedhomework.model.Question;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = QuestionsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Question.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class QuestionsCollectionThymeleafController {
}
