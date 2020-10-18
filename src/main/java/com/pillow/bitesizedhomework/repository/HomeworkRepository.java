package com.pillow.bitesizedhomework.repository;
import com.pillow.bitesizedhomework.model.Homework;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = HomeworkRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Homework.class)
public interface HomeworkRepository extends DetachableJpaRepository<Homework, Long>, HomeworkRepositoryCustom {
}
