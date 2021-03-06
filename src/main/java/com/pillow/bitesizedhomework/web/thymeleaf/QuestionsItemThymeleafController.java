package com.pillow.bitesizedhomework.web.thymeleaf;
import com.pillow.bitesizedhomework.model.Question;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = QuestionsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Question.class, type = ControllerType.ITEM)
@RooThymeleaf
public class QuestionsItemThymeleafController implements ConcurrencyManager<Question> {
}
