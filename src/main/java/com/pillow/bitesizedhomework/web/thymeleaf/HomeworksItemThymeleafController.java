package com.pillow.bitesizedhomework.web.thymeleaf;
import com.pillow.bitesizedhomework.model.Homework;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = HomeworksItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Homework.class, type = ControllerType.ITEM)
@RooThymeleaf
public class HomeworksItemThymeleafController implements ConcurrencyManager<Homework> {
}
