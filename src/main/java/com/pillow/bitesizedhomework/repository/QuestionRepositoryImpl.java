package com.pillow.bitesizedhomework.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.pillow.bitesizedhomework.model.Question;

/**
 * = QuestionRepositoryImpl
 *
 * Implementation of QuestionRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = QuestionRepositoryCustom.class)
public class QuestionRepositoryImpl extends QueryDslRepositorySupportExt<Question> implements QuestionRepositoryCustom{

    /**
     * Default constructor
     */
    QuestionRepositoryImpl() {
        super(Question.class);
    }
}