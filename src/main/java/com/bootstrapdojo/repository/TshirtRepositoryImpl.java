package com.bootstrapdojo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.bootstrapdojo.domain.Tshirt;

/**
 * = TshirtRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = TshirtRepositoryCustom.class)
public class TshirtRepositoryImpl extends QueryDslRepositorySupportExt<Tshirt> {

    /**
     * TODO Auto-generated constructor documentation
     */
    TshirtRepositoryImpl() {
        super(Tshirt.class);
    }
}