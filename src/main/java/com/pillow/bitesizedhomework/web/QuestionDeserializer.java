package com.pillow.bitesizedhomework.web;
import com.pillow.bitesizedhomework.model.Question;
import com.pillow.bitesizedhomework.service.api.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = QuestionDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Question.class)
public class QuestionDeserializer extends JsonObjectDeserializer<Question> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private QuestionService questionService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param questionService
     * @param conversionService
     */
    @Autowired
    public QuestionDeserializer(@Lazy QuestionService questionService, ConversionService conversionService) {
        this.questionService = questionService;
        this.conversionService = conversionService;
    }
}
