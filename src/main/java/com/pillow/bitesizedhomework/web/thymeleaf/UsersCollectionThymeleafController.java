package com.pillow.bitesizedhomework.web.thymeleaf;
import com.pillow.bitesizedhomework.model.User;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = UsersCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = User.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class UsersCollectionThymeleafController {
}
