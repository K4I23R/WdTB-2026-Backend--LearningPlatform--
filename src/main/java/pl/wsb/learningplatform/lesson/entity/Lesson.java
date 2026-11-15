package pl.wsb.learningplatform.lesson.entity;

import jakarta.persistence.*;
import pl.wsb.learningplatform.module.entity.Module;
import pl.wsb.learningplatform.question.entity.Question;

import java.util.List;

@Entity
@Table(name = "lessons")
public class Lesson {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 100)
    private String title;

    @Column(nullable = false, length = 10000)
    private String Content;

    @Column(nullable = true)
    private Float duration;

    @Column(nullable = true, length = 100)
    private String additionalResources;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "module_id")
    private Module module;

    @OneToMany(mappedBy = "lesson")
    private List<Question> questions;

    protected Lesson() {}

    public Lesson(String title, String content) {
        this.title = title;
        Content = content;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public Float getDuration() {
        return duration;
    }

    public List<Question> getQuestions() {
        return questions;
    }
}
