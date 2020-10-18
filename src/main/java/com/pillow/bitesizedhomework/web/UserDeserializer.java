package com.pillow.bitesizedhomework.web;
import com.pillow.bitesizedhomework.model.User;
import com.pillow.bitesizedhomework.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = UserDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = User.class)
public class UserDeserializer extends JsonObjectDeserializer<User> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private UserService userService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param userService
     * @param conversionService
     */
    @Autowired
    public UserDeserializer(@Lazy UserService userService, ConversionService conversionService) {
        this.userService = userService;
        this.conversionService = conversionService;
    }
}
