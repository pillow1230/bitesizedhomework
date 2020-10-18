package com.pillow.bitesizedhomework.repository;
import com.pillow.bitesizedhomework.model.Question;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = QuestionRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Question.class)
public interface QuestionRepository extends DetachableJpaRepository<Question, Long>, QuestionRepositoryCustom {
}
