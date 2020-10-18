package com.pillow.bitesizedhomework.service.api;
import com.pillow.bitesizedhomework.model.EClass;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = EClassService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = EClass.class)
public interface EClassService extends EntityResolver<EClass, Long>, ValidatorService<EClass> {
}
