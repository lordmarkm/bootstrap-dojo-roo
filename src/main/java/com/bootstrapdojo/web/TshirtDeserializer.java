package com.bootstrapdojo.web;
import com.bootstrapdojo.domain.Tshirt;
import com.bootstrapdojo.service.api.TshirtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TshirtDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Tshirt.class)
public class TshirtDeserializer extends JsonObjectDeserializer<Tshirt> {

    /**
     * TODO Auto-generated field documentation
     *
     */
    public TshirtService tshirtService;

    /**
     * TODO Auto-generated field documentation
     *
     */
    public ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param tshirtService
     * @param conversionService
     */
    @Autowired
    public TshirtDeserializer(TshirtService tshirtService, ConversionService conversionService) {
        this.tshirtService = tshirtService;
        this.conversionService = conversionService;
    }
}
