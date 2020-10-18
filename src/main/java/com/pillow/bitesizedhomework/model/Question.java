package com.pillow.bitesizedhomework.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;
import io.springlets.format.EntityFormat;
import javax.persistence.ManyToOne;

/**
 * = Question
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class Question {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date timeCompletion;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NumberFormat
    private int mark;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String teacherAnswer;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String studentAnswer;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated(EnumType.STRING)
    private QuestionType questionType;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY)
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Homework> homeworks = new HashSet<Homework>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
//    @ManyToOne(fetch = FetchType.LAZY)
//    @EntityFormat
//    private Homework homework;
}
