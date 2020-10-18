package com.pillow.bitesizedhomework.web.thymeleaf;
import com.pillow.bitesizedhomework.model.User;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = UsersItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = User.class, type = ControllerType.ITEM)
@RooThymeleaf
public class UsersItemThymeleafController implements ConcurrencyManager<User> {
}
