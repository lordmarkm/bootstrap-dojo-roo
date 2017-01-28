package com.bootstrapdojo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QTshirt is a Querydsl query type for Tshirt
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QTshirt extends EntityPathBase<Tshirt> {

    private static final long serialVersionUID = -692471761L;

    public static final QTshirt tshirt = new QTshirt("tshirt");

    public final StringPath color = createString("color");

    public final NumberPath<java.math.BigDecimal> price = createNumber("price", java.math.BigDecimal.class);

    public QTshirt(String variable) {
        super(Tshirt.class, forVariable(variable));
    }

    public QTshirt(Path<? extends Tshirt> path) {
        super(path.getType(), path.getMetadata());
    }

    public QTshirt(PathMetadata metadata) {
        super(Tshirt.class, metadata);
    }

}

