package com.pillow.bitesizedhomework.web;
import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.service.api.HomeworkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = HomeworkDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Homework.class)
public class HomeworkDeserializer extends JsonObjectDeserializer<Homework> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private HomeworkService homeworkService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param homeworkService
     * @param conversionService
     */
    @Autowired
    public HomeworkDeserializer(@Lazy HomeworkService homeworkService, ConversionService conversionService) {
        this.homeworkService = homeworkService;
        this.conversionService = conversionService;
    }
}
