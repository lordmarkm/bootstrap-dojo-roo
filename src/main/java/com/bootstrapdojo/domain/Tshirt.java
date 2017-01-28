package com.bootstrapdojo.domain;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

/**
 * = Tshirt
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
public class Tshirt {

    /**
     * TODO Auto-generated field documentation
     *
     */
    @NotNull
    private String color;

    /**
     * TODO Auto-generated field documentation
     *
     */
    private BigDecimal price;
}
