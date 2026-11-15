package pl.wsb.learningplatform.usercourse.entity;

import jakarta.persistence.*;
import pl.wsb.learningplatform.course.entity.Course;
import pl.wsb.learningplatform.UserProfile.entity.UserProfile;

import java.util.Date;


@Entity
@Table(name = "user_courses")
public class UserCourse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false)
    private UserProfile userProfile;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "course_id", nullable = false)
    private Course course;

    @Column(nullable = true)
    private Integer progress;

    @Column(nullable = false)
    private Date enrollmentDate;

    @Column(nullable = true)
    private Date lastActivityDate;

    protected UserCourse() {}

    public UserCourse(UserProfile userProfile, Course course, Integer progress, Date enrollmentDate, Date lastActivityDate) {
        this.userProfile = userProfile;
        this.course = course;
        this.progress = progress;
        this.enrollmentDate = enrollmentDate;
        this.lastActivityDate = lastActivityDate;
    }

    public Long getId() {
        return id;
    }

    public UserProfile getUserProfile() {
        return userProfile;
    }

    public Course getCourse() {
        return course;
    }

    public Integer getProgress() {
        return progress;
    }

    public Date getEnrollmentDate() {
        return enrollmentDate;
    }

    public Date getLastActivityDate() {
        return lastActivityDate;
    }
}
