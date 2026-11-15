package pl.wsb.learningplatform.module.entity;

import jakarta.persistence.*;
import pl.wsb.learningplatform.lesson.entity.Lesson;
import java.util.List;

@Entity
@Table(name = "modules")
public class Module {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 100)
    private String title;

    @Column(nullable = true, length = 10000)
    private String description;

    @Column(nullable = true)
    private Float duration;

    @OneToMany(mappedBy = "module")
    private List<Lesson> lessons = new java.util.ArrayList<>();

    protected Module() {}

    public Module(String title, String description, Float duration) {
        this.title = title;
        this.description = description;
        this.duration = duration;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Float getDuration() {
        return duration;
    }
}
