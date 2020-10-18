package com.pillow.bitesizedhomework.web;
import com.pillow.bitesizedhomework.model.EClass;
import com.pillow.bitesizedhomework.service.api.EClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = EClassDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = EClass.class)
public class EClassDeserializer extends JsonObjectDeserializer<EClass> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private EClassService eClassService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param eClassService
     * @param conversionService
     */
    @Autowired
    public EClassDeserializer(@Lazy EClassService eClassService, ConversionService conversionService) {
        this.eClassService = eClassService;
        this.conversionService = conversionService;
    }
}
