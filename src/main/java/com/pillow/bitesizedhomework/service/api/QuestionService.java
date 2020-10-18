package com.pillow.bitesizedhomework.service.api;
import com.pillow.bitesizedhomework.model.Question;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = QuestionService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Question.class)
public interface QuestionService extends EntityResolver<Question, Long>, ValidatorService<Question> {
}
