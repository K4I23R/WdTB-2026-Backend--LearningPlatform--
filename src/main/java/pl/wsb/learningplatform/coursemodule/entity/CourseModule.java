package pl.wsb.learningplatform.coursemodule.entity;

import jakarta.persistence.*;
import pl.wsb.learningplatform.course.entity.Course;
import pl.wsb.learningplatform.module.entity.Module;

@Entity
@Table(name = "course_modules")
public class CourseModule {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "course_id", nullable = false)
    private Course course;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "module_id", nullable = false)
    private Module module;

    @Column(nullable = true)
    private Integer orderInCourse;

    @Column(nullable = true)
    private Boolean mandatory;

    protected CourseModule() {}

    public CourseModule(Course course, Module module, Integer orderInCourse, Boolean mandatory) {
        this.course = course;
        this.module = module;
        this.orderInCourse = orderInCourse;
        this.mandatory = mandatory;
    }

    public Long getId() {
        return id;
    }

    public Course getCourse() {
        return course;
    }

    public Module getModule() {
        return module;
    }

    public Integer getOrderInCourse() {
        return orderInCourse;
    }

    public Boolean getMandatory() {
        return mandatory;
    }
}
