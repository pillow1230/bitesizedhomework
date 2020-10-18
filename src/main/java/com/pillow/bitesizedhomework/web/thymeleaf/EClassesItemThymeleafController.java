package com.pillow.bitesizedhomework.web.thymeleaf;
import com.pillow.bitesizedhomework.model.EClass;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = EClassesItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = EClass.class, type = ControllerType.ITEM)
@RooThymeleaf
public class EClassesItemThymeleafController implements ConcurrencyManager<EClass> {
}
