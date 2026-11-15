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

    @Column(nullable = false)
    private boolean isActive = true;

    @OneToMany(mappedBy = "module")
    private List<Lesson> lessons = new java.util.ArrayList<>();

    protected Module() {}

    public Module(String title, String description, Float duration, boolean isActive) {
        this.title = title;
        this.description = description;
        this.duration = duration;
        this.isActive = isActive;
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

    public boolean isActive() {
        return isActive;
    }
}
