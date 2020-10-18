package com.pillow.bitesizedhomework.service.api;
import com.pillow.bitesizedhomework.model.Homework;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = HomeworkService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Homework.class)
public interface HomeworkService extends EntityResolver<Homework, Long>, ValidatorService<Homework> {
}
