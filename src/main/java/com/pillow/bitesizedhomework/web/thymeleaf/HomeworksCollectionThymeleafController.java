package com.pillow.bitesizedhomework.web.thymeleaf;
import com.pillow.bitesizedhomework.model.Homework;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = HomeworksCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Homework.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class HomeworksCollectionThymeleafController {
}
